class Post < ActiveRecord::Base
    has_one :users
end
