class Word < ActiveRecord::Base
  validates :text, presence: true, uniqueness: true, length: {maximum: 64} # for a faster index
end