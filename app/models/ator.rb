class Ator < ApplicationRecord
  has_many :elencos

  accepts_nested_attributes_for :elencos
end
