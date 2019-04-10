module Api

    module V1

		class WSLoginUserController < ApplicationController
			protect_from_forgery with: :null_session
			respond_to :json, only: [:create]

  			def create

  				persona = Persona.where("documento_persona = ? ",params[:username]).first

  				if persona.present?

  					login = "#{persona.documento_persona}-#{quita_acentos(persona.tipo_documento.descripcion.downcase[0..2])}-#{quita_acentos(persona.nacionalidad.descripcion.downcase[0..2])}" 
					puts "---------------------------------------"
					puts login
					usuario_session = UsuarioSession.new( login: login, password: params[:password] )

				    if usuario_session.save
				    	
				    	#@response = Usuario.where("login = ? ", login)
				    	@response = Usuario.select("usuarios.id, usuarios.persona_id,usuarios.email,personas.nombre_persona, personas.documento_persona, false as rol_profesor").joins("join personas  on usuarios.persona_id = personas.id").where("usuarios.login = ? ", login)
				    	puts"******Acceso Correcto*****************"
				    	
				    end
				    
				else
					
					@response = [["id","error"]]
					puts "Usuario no válido"
					

				end
				
				respond_to do |f|

			      f.json { render :json => @response.to_json}

			    end

			 end

		end

	end

end	