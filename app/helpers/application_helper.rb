module ApplicationHelper
  def ator_no_elenco elenco
    Elenco.find(elenco).ator.nome
  end

  def listar_atores elencos
    lista_atores = ''
    elencos.each do |elenco|
      lista_atores << ator_no_elenco(elenco) << ','
    end
    lista_atores.chomp(',')
  end
end
