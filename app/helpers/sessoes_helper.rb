module SessoesHelper

  def sign_in(pessoa, tipo = 2)
    p "!!!!!!!!!!!!!!!#{pessoa.id}"
    session[:email] = pessoa.email
    @tipo_usuario = tipo
  end

  def current_user
    @current_user ||= Pessoa.find_by(email: session[:email])
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

  def tipo_usuario
    return nil if @current_user.nil?
    return 1 if Funcionario.find_by(pessoa_id: @current_user.id)
    2 if Cliente.find_by(pessoa_id: @current_user.id)
  end
end
