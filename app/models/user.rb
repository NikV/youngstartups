class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :projects
  authenticates_with_sorcery!

  before_save { |user| user.email = user.email.downcase }

end
