class Template < ApplicationRecord
  belongs_to :user
  validates_associated :user, :message => "only can have 3 Robot! Give me 5 dollar to have all the robots!"

end
