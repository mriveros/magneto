class NotificarTutor < ActionMailer::Base
  
  default from: "noresponder@mec.gov.py"

  def email(usuario, password)
    
    @usuario = usuario
    @password = password

    mail(to: @usuario.email, subject: "RUE: Nuevo Usuario")

  end

  def email_usuario(usuario, password)
    
    @usuario = usuario
    @password = password

    mail(to: @usuario.email, subject: "RUE: Nuevo Usuario")

  end

  def email_recuperar_password(usuario, password)
    
    @usuario = usuario
    @password = password

    mail(to: @usuario.email, subject: "RUE: Recuperar Contraseña")

  end

end
