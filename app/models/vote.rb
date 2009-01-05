class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  def date
    created_at.to_date rescue nil
  end


end
