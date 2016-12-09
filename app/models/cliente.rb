class Cliente < ApplicationRecord
  belongs_to :pessoa
  has_many :avaliacao

  accepts_nested_attributes_for :pessoa

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
