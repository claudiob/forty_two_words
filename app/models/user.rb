class User < ActiveRecord::Base
  has_many :feelings, dependent: :destroy
  def to_s
    name
  end
end
