class User < ActiveRecord::Base
  acts_as_authentic

  has_many :votes

  def favorites_hash
    return @favorites if !@favorites.blank?
    @favorites = Hash.new(0)
    votes.each do |vote|
      @favorites[vote.restaurant] += 1
    end
    @favorites
  end

  def favorites_list
    favorites_hash.sort { |a,b| a[1] <=> b[1] }
  end
  

end
