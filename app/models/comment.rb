class Comment < ActiveRecord::Base
    belongs_to :post
    # is this being watched
end