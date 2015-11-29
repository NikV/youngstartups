class TimelinePost < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  
  validates :content, presence: true
end
