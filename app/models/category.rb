class Category < ApplicationRecord
    has_many :organizations, :dependent => :destroy
    has_many :lists, through: :organizations
end
