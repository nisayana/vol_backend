class User < ApplicationRecord
    has_many :dash_list_joiners, :dependent => :destroy
    has_many :lists, through: :dash_list_joiners
    validates :name, uniqueness: true
    has_secure_password
end
