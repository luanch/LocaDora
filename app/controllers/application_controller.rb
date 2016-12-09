class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessoesHelper

  @sessao_ativa = 1

  def sessao_ativa= num
    @sessao_ativa = num.to_i
  end

  def sessao_ativa
    @sessao_ativa
  end
end
