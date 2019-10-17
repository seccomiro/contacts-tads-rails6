class Phone < ApplicationRecord
  belongs_to :contact

  def to_s
    self.number
  end
end
