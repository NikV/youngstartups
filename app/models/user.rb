class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :projects
  has_many :timeline_posts
  authenticates_with_sorcery!

  before_save { |user| user.email = user.email.downcase }

  scope :pending_acceptance, -> { where(accepted: false) }
  scope :accepted, -> { where(accepted: true) }

end
