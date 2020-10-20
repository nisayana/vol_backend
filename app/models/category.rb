class Category < ApplicationRecord
    has_many :organizations, :dependent => :destroy
end
