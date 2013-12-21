class Owner < ActiveRecord::Base
  validates_presence_of :first_name, :last_name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, :uniqueness => { :case_sensitive => false}

  has_many :dog_ownerships, dependent: :destroy
  has_many :dogs, through: :dog_ownerships
end
