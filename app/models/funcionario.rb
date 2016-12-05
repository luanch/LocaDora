class Funcionario < ApplicationRecord
  belongs_to :pessoa

  accepts_nested_attributes_for :pessoa
end
