class Reserva < ApplicationRecord
  belongs_to :filme
  belongs_to :cliente
end
