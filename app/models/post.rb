class Post < ActiveRecord::Base
    belongs_to :users, foreign_key: true
end
