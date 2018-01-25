class LineItem < ApplicationRecord
  belongs_to :hunch
  belongs_to :cart
end
