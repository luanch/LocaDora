class Filme < ApplicationRecord
  has_many :avaliacaos
  has_one :reserva
  has_many :elencos

  accepts_nested_attributes_for :avaliacaos, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :elencos, reject_if: :all_blank, allow_destroy: true
end
