module ApplicationHelper
  def ator_no_elenco elenco
    Elenco.find(elenco).ator.nome
  end
end
