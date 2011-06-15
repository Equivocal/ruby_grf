class User < ActiveRecord::Base
    has_many :newspost
end
