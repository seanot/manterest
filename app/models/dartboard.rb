class Dartboard < ActiveRecord::Base
  belongs_to :board
  belongs_to :dart

  validates :caption, presence: true
  validates :board_id, presence: true
  validates :dart_id, presence: true

end
