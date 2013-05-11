class Feeling < ActiveRecord::Base
  belongs_to :user, touch: true
  belongs_to :word, touch: true
  validates_presence_of :user_id, :word_id
  validates_associated :user, :word   
end
