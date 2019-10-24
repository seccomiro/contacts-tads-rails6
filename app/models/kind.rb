class Kind < ApplicationRecord
  has_many :contacts

  def to_s
    self.description
  end
end
