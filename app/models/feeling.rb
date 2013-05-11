class Feeling < ActiveRecord::Base
  belongs_to :user
  belongs_to :word
end
