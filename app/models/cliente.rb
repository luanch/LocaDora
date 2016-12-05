class Cliente < ApplicationRecord
  belongs_to :pessoa

  has_many :avaliacaos

  accepts_nested_attributes_for :pessoa
end
