class Filme < ApplicationRecord
  has_many :avaliacaos
  has_one :reserva

  has_many :elencos

  accepts_nested_attributes_for :elencos
end
