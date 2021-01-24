class User < ApplicationRecord
    has_many :microposts

    validates :name, presence: true
    validates :email, presence: true, format:  {with: /\A[a-zA-Z0-9_.+-]+@([a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]*\.)+[a-zA-Z]{2,}\z/}
end
