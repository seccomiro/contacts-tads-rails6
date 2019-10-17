class Contact < ApplicationRecord
  belongs_to :kind
  belongs_to :company
  has_many :phones
  has_one :address
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phones, allow_destroy: true

  def to_s
    self.name
  end
end
