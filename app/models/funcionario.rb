class Funcionario < ApplicationRecord
  belongs_to :pessoa
  accepts_nested_attributes_for :pessoa

  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
