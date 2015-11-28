class User < ActiveRecord::Base
  has_many :projects
  authenticates_with_sorcery!
end
