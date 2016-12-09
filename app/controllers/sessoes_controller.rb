class SessoesController < ApplicationController
  def new
  end

  before_action :block_access, except: [:destroy]
  def create
    @pessoa = Pessoa.find_by(email: params[:sessao][:email].downcase)

    unless @pessoa.nil?
      funcionario = Funcionario.find_by(pessoa: @pessoa.id)
      cliente = Cliente.find_by(pessoa: @pessoa.id)
      unless funcionario.nil?
        if funcionario.authenticate(params[:sessao][:password])
          sign_in @pessoa, 1
          redirect_to filmes_path
          return
        end
      else if cliente
              if cliente.authenticate(params[:sessao][:password])
                sign_in @pessoa, 2
                redirect_to filmes_path
                return
              end
           end
        render 'new'
      end
    end

  end

  def destroy
    logout
    redirect_to root_url
  end
end
