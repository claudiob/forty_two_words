class Word < ActiveRecord::Base
  has_many :feelings, dependent: :destroy
  validates :text, presence: true, uniqueness: true, length: {maximum: 64} # for a faster index
  def to_s
    text
  end
end