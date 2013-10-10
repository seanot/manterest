class Dart < ActiveRecord::Base
  has_many :dartboards
  has_many :boards, through: :dartboards

  belongs_to :user

  valid_url_suffix = /\.(?:png|jpg|jpeg|gif|mp4)/i

  validates :image_url, presence: true, format: { with: valid_url_suffix }
  validates :link_url, presence: true
  validates :user_id, presence: true

end
