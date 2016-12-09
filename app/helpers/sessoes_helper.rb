module SessoesHelper

  def sign_in(pessoa, tipo = 2)
    p "!!!!!!!!!!!!!!!#{pessoa.id}"
    session[:email] = pessoa.email
  end

  def current_user tipo=nil
    @current_user ||= Pessoa.find_by(email: session[:email])
    return if(@current_user.nil?)
    if(tipo == 1)
        return 1 if Funcionario.find_by(pessoa_id: @current_user.id)
        2 if Cliente.find_by(pessoa_id: @current_user.id)
    end
    @current_user
  end


  def block_access
    if @current_user.present?
      redirect_to root_url
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def logout
    session.delete(:email)
    @current_user = nil
  end
end
