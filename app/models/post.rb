class Post < ActiveRecord::Base
    has_many :comments

    def self.newest
      self.order(created_at: :desc)
    end
end