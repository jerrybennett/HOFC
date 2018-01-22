class Card < ApplicationRecord
  belongs_to :topic, optional: true
end
