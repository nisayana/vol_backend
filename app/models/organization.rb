class Organization < ApplicationRecord
  belongs_to :category
  has_many :lists, :dependent => :destroy

  has_secure_password
end
