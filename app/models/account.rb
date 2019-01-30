class Account < ApplicationRecord
  belongs_to :athlete
  belongs_to :group
  enum status: { pendente: 0, ativo: 1, inativo: 2, suspenso: 3, afastado: 4 }
end
