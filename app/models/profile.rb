class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :schedule

  validates :githubname, length: {minimum: 3}, uniqueness: true
end
