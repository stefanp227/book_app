class User < ActiveRecord::Base
  before_save { self.name = name.downcase }

  has_secure_password

  validates :name, presence: true, 
                   length: { maximum: 50 },
                   uniqueness: true
  
  validates :password, presence: true, length: { minimum: 4 }

end
