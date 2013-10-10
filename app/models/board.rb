class Board < ActiveRecord::Base
  belongs_to :user
  has_many :dartboards
  has_many :darts, through: :dartboards

  validates :name, presence: true, uniqueness: { case_sensitive:false }
  validates :description, presence: true
  validates :user_id, presence: true
end
