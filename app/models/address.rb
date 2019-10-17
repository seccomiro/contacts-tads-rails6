class Address < ApplicationRecord
  belongs_to :contact

  def to_s
    "#{self.street} - #{self.city} - #{self.state} "
  end
end
