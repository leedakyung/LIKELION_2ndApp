class Owner < ActiveRecord::Base
    #여러 개의 item을 가지고 있어요
    has_many :items
    has_many :hobbies
end
