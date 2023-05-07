class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy

    def self.newest
      self.order(created_at: :desc)
    end
end