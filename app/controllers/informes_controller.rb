class InformesController < ApplicationController

	before_filter :require_usuario, :except => [:emitir_informe_servidor_v2]
  require 'net/http'

  def emitir_informe_servidor

    #puts '-----------------------------------'
    #puts "#{APP_CONFIG[:server_reports]}#{params[:nombre_reporte]}#{params[:parametros]}&__format=#{params[:formato]}"
    #puts '--------------------------------------'
    #redirect_to APP_CONFIG[:server_reports] + params[:parametros]
    puts "********************************************"
    puts params[:parametros]
    uri = URI::parse("#{PARAMETRO[:server_reports]}#{params[:nombre_reporte]}#{params[:parametros]}&__format=#{params[:formato]}&__locale=es")
    puts uri
    result = Net::HTTP.get_response(
      uri
    )
    
    puts uri
    #render error if result. ...
    send_data result.body, :filename=> "#{params[:nombre_reporte].sub(".rptdesign","")}_#{Time.now.strftime('%Y%m%d%H%M%S')}.#{params[:formato]}"

=begin
      #APARTI DE AQUI PARA PROBAR LOCALMENTE
      parametros = params[:parametros]
      parametros_local = []
      parametros.sub("&","").split("&").each_with_index do |par, i|
        
        parametros_local << par.to_s.gsub("parametros#{i}=", "")          

      end

      obj = GeneratorReport.new
      redirect_to "#{APP_CONFIG[:ruta_reportes]}#{obj.create_report(nil, 'pdf', params[:nombre_reporte].sub(".rptdesign", ""), :parametros => parametros_local)}"
=end
  end

  def emitir_informe_servidor_v2


#---------------------LLAMA A LA FUNCION PARA POBLAR LA TABLA--------------------------------------------------------------------------------------------#
 
    if params[:avance_destinatario].present?

      periodo_escolar_id = params[:periodo_escolar_id]
      mes_id = params[:mes_id]
      #puts "/////////////////////////*************"
      #puts periodo_escolar_id
      #puts mes_id
      VRptInformeAvanceDestinatario.find_by_sql("select rpt_avances_destinatarios(#{periodo_escolar_id}, #{mes_id})")
      

    end


     if params[:avance_distrito].present? 

      periodo_escolar_id = params[:periodo_escolar_id]
      mes_id = params[:mes_id]
      #puts "/////////////////////////*************"
      #puts periodo_escolar_id
      #puts mes_id
      VRptInformeAvanceMatriculados.find_by_sql("select rpt_avances_por_distritos(#{periodo_escolar_id}, #{mes_id})")

    end
    if params[:impresion_titulo_matriculacion_id].present?
      @matriculaciones_detalles_confirmados = VMatriculacionDetalleV5.confirmados2.ordenado_01.where("matriculacion_id = ? ", params[:impresion_titulo_matriculacion_id].to_i)
      if @matriculaciones_detalles_confirmados.present?
        @matriculaciones_detalles_confirmados.each_with_index do |mdc, i|
          @existe_diploma = ImpresionDiploma.where("matriculacion_detalle_id = ?", mdc.matriculacion_detalle_id).first
          if @existe_diploma.present?
            auditoria_id = auditoria_antes("impresion diploma", "impresiones_diplomas", @existe_diploma)

            @existe_diploma.estado_diploma_id = PARAMETRO[:estado_diploma_impreso]

            if @existe_diploma.save
              auditoria_despues(@existe_diploma, auditoria_id)
              if params[:impresion_eeb].present?
                ImpresionDiploma.find_by_sql("select diplomas_impresos_replica_eeb('#{@existe_diploma.serie}', '#{@existe_diploma.numero_diploma}')")
              else
              ImpresionDiploma.find_by_sql("select diplomas_impresos_replica('#{@existe_diploma.serie}', '#{@existe_diploma.numero_diploma}')")
            end
            end        
          end          
        end
      end
    else
    if params[:impresion_titulo_matriculacion_detalle_id].present?
      @existe_diploma = ImpresionDiploma.where("matriculacion_detalle_id = ?", params[:impresion_titulo_matriculacion_detalle_id].to_i).first
      if @existe_diploma.present?
        auditoria_id = auditoria_antes("impresion diploma", "impresiones_diplomas", @existe_diploma)


        @existe_diploma.estado_diploma_id = PARAMETRO[:estado_diploma_impreso]
        
        if @existe_diploma.save
          auditoria_despues(@existe_diploma, auditoria_id)
          if params[:impresion_eeb].present?
            ImpresionDiploma.find_by_sql("select diplomas_impresos_replica_eeb('#{@existe_diploma.serie}', '#{@existe_diploma.numero_diploma}')")
          else
          ImpresionDiploma.find_by_sql("select diplomas_impresos_replica('#{@existe_diploma.serie}', '#{@existe_diploma.numero_diploma}')")
        end
        end        
      end
    end      
    end

    #------------------------------------------------------------------------------------------------------------------------------------------#  

    uri = URI::parse("#{PARAMETRO[:server_reports_v2]}#{params[:nombre_reporte]}#{params[:parametros]}&__format=#{params[:formato]}&__locale=es")
    puts uri
    result = Net::HTTP.get_response(
      uri
    )
    send_data result.body, :filename=> "#{params[:nombre_reporte].sub(".rptdesign","")}_#{Time.now.strftime('%Y%m%d%H%M%S')}.#{params[:formato]}"
  
  end

  def index
  end

  def abrir_informe_cobertura_departamento
    
    @periodos = (2016..Time.now.year.to_i)
   # @periodos = 2016..Time.now.year

     respond_to do |f|

      f.js

     end 

  end  

  def abrir_informe_cobertura_distrito

    @periodos = (2016..Time.now.year.to_i)
   # @periodos = 2016..Time.now.year

     respond_to do |f|

      f.js

     end 

  end  
  
  def abrir_informe_cobertura_sector

    @periodos = (2016..Time.now.year.to_i)
   # @periodos = 2016..Time.now.year

     respond_to do |f|

      f.js

     end 

  end 
  def emitir_certificado_de_estudio_mecatronica
    
    valido = true
    require 'digest/md5'
    
    puts "====================****************:::EMITIR CERT MECATRONICA:::PARMAS", params.inspect
    
    #IMPRIMIENDO CERTIFICADO
    if valido

      reporte_nombre = "rptCertificadoEstudiosMediaMecatronicaDual.rptdesign"
      
      parametros = "&parametros0=#{params[:matriculacion_detalle_id]}"
      #parametros += "&parametros1=#{imprimir_distrito}"

      params[:formato] = 'pdf'

      uri = URI::parse("#{PARAMETRO[:server_reports_v2]}#{reporte_nombre}#{parametros}&__format=#{params[:formato]}&__locale=es")

      puts uri

      result = Net::HTTP.get_response(
        uri
      )
      
      send_data result.body, :filename=> "#{reporte_nombre.sub(".rptdesign","")}_#{Time.now.strftime('%Y%m%d%H%M%S')}.#{params[:formato]}"

    end
    
  end

  def emitir_certificado_de_estudio

    valido = true
    require 'digest/md5'
    promedio_general = ""

    @matriculacion = VMatriculacionV3.where("matriculacion_id = ? and origen = 1", params[:matriculacion_id]).first
    @alumno = VMatriculacionDetalleV5.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first
   
    if PARAMETRO[:modalidades_educacion_inclusiva_formal].include?(@matriculacion.modalidad_nivel_id)

      @matriculacion_detalle = MatriculacionInclusivaDetalle.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first
      
    elsif PARAMETRO[:modalidades_educacion_inicial_eeb].include?(@matriculacion.modalidad_nivel_id)

      @matriculacion_detalle = MatriculacionBasicaDetalle.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first

    elsif PARAMETRO[:modalidades_educacion_media].include?(@matriculacion.modalidad_nivel_id)

      @matriculacion_detalle = MatriculacionMediaDetalle.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first
      nota_media = NotaMedia.where("matriculacion_media_detalle_id = ?", @matriculacion_detalle.id).first
    
    end

    if params[:solo_consulta].present?

      solo_consulta = 'si'

    else

      solo_consulta = 'no'

    end
    
    #PREPARANDO ENCRIPTACION
    persona_id_invertida = @matriculacion_detalle.estudiante_id.to_s.split("").reverse.to_s
    fecha_invertida = Time.now.strftime("%d%m%Y").to_s.split("").reverse.to_s
    hora_invertida = Time.now.strftime("%H%M%S%s").to_s.split("").reverse.to_s

    sin_encriptar = persona_id_invertida+fecha_invertida+hora_invertida
    certificado_valido_encriptacion = Digest::MD5.hexdigest(persona_id_invertida+fecha_invertida+hora_invertida)

    #GUARDANDO ENCRIPTACION Y NUEVO CERTIFICADO VALIDO

    if solo_consulta == 'no'

      certificado_encriptado = CertificadoEncriptado.new
      certificado_encriptado.matriculacion_detalle_id = @matriculacion_detalle.matriculacion_detalle_id
      certificado_encriptado.persona_id = @matriculacion_detalle.estudiante_id
      certificado_encriptado.encriptacion = certificado_valido_encriptacion
      certificado_encriptado.usuario_id = current_usuario.id
      certificado_encriptado.fecha = Time.now.strftime("%Y-%m-%d")
      certificado_encriptado.hora = Time.now.strftime("%H:%M:%S")
      certificado_encriptado.especialidad_id = @matriculacion.especialidad_id

      if certificado_encriptado.save

        #OBTENIENDO CERTIFICADO A IMPRIMIR
        certificado_estudio = VCertificadoEstudio.find_by_sql("select * from sp_certificado_v4(#{@matriculacion_detalle.estudiante_id}, #{@matriculacion.especialidad_id} )" )
      
        if certificado_estudio.present?

          #CALCULAR PROMEDIO DE CURSO EN SISTEMAS_MEC_PRODUCTION
          certificado_estudio_nautilus = VCertificadoEstudioNautilus.where("documento_persona = ? and nacionalidad = ?", @alumno.estudiante_documento, @alumno.estudiante_nacionalidad )

          if certificado_estudio_nautilus.present?

            VCertificadoEstudio.find_by_sql("select * from dblink('dbname=sistemas_mec_production port=5432 host=192.168.16.120 user=cxnusrmec password=xtra1.level-security', 'select notas_confirmadas(#{certificado_estudio_nautilus.first.id_persona})') a (msg text)")

            if nota_media.present?

              #VCertificadoEstudio.find_by_sql("select calcular_promedios_media(#{nota_media.id})")

            end

            notas_alumnos_ids = certificado_estudio_nautilus.map(&:nota_alumno_id).uniq

            notas_alumnos_ids.each do |nota_alumno_id|

              nota_alumno_nautilus = NotaAlumnoNautilus.find(nota_alumno_id)

              #unless nota_alumno_nautilus.promedio.present? 
      
                suma = 0
                cantidad_contador = 0
      
                notas_detalles_nautilus = NotaDetalleNautilus.where("nota_alumno_id = ? and confirmada = true", nota_alumno_nautilus.id)
        
                notas_detalles_nautilus.each do |nd|    
        
                  if nd.nota.present? && nd.nota < 11

                    cantidad_contador = cantidad_contador + 1
          
                    #if nd.tipo_nota_id == PARAMETRO[:ordinario]
           
                      suma = suma + nd.nota
=begin
                    else
            
                      resta = nd.nota - 1
                      suma = suma + resta          
=end    
                    #end

                  end

                  #DESCONFIRMAR NOTAS DE MEC PRODUCTION
=begin
                  if @matriculacion_detalle.estado_matriculacion_id == PARAMETRO[:matriculacion_repitente]

                    plan_detalle_nautilus = PlanDetalle.where("id = ?", nd.plan_detalle_id).first

                    if plan_detalle_nautilus.present?

                      plan_estudio_nautilus = PlanEstudioNautilus.where("id = ?", plan_detalle_nautilus.plan_estudio_id).first
                  
                      disciplina_nautilus = DisciplinaNautilus.where("id = ?", plan_detalle_nautilus.disciplina_id).first

                      if disciplina_nautilus.present?

                        disciplina_existente = VCertificadoEstudio.where("estudiante_documento = ? and estudiante_nacionalidad = ? and curso_id = ? and nombre_disciplina = ?", @alumno.estudiante_documento, @alumno.estudiante_nacionalidad, plan_estudio_nautilus.curso_id, disciplina_nautilus.descripcion  ).first

                        if disciplina_existente.present?

                          #nd.confirmada = false
                          #nd.save

                        end 

                      end

                    end
                
                  end
=end
                  #FIN DESCONFIRMAR NOTAS DE MEC PRODUCTION
      
                end

                if suma > 0

                  nuevo_promedio = (suma.to_f / cantidad_contador.to_f).round(2)

                  nota_alumno_nautilus.promedio = nuevo_promedio
                  nota_alumno_nautilus.save

                end

              #end

            end
        
          end
          #FIN CALCULAR PROMEDIO EN SISTEMAS MEC PRODUCTION

          certificado_estudio.each do |c|
            #NUEVAS NOTAS VALIDAS
            certificado_valido =  CertificadoValido.new
            certificado_valido.certificado_encriptado_id = certificado_encriptado.id
            certificado_valido.matriculacion_id = c.matriculacion_id
            certificado_valido.matriculacion_detalle_id = c.matriculacion_detalle_id
            certificado_valido.nota_estudiante_id = c.nota_estudiante_id
            certificado_valido.nota_estudiante_detalle_id = c.nota_estudiante_detalle_id
            certificado_valido.periodo = c.periodo
            certificado_valido.curso_id = c.curso_id
            certificado_valido.curso = c.curso
            certificado_valido.tipo_especialidad_id = c.tipo_especialidad_id
            certificado_valido.tipo_especialidad = c.tipo_especialidad
            certificado_valido.especialidad_id = c.especialidad_id
            certificado_valido.especialidad = c.especialidad
            certificado_valido.especialidad_id_nautilus = c.especialidad_id_nautilus
            certificado_valido.persona_id = c.persona_id
            certificado_valido.estudiante_tipo_documento_id = c.estudiante_tipo_documento_id
            certificado_valido.estudiante_tipo_documento = c.estudiante_tipo_documento
            certificado_valido.estudiante_documento = c.estudiante_documento
            certificado_valido.estudiante_nombre_apellido = c.estudiante_nombre_apellido
            certificado_valido.estudiante_fecha_nacimiento = c.estudiante_fecha_nacimiento
            certificado_valido.estudiante_nacionalidad = c.estudiante_nacionalidad
            certificado_valido.estudiante_dia_nacimiento = c.estudiante_dia_nacimiento
            certificado_valido.estudiante_mes_nacimiento = c.estudiante_mes_nacimiento
            certificado_valido.estudiante_anio_nacimiento = c.estudiante_anio_nacimiento
            certificado_valido.regimen = c.regimen
            certificado_valido.tipo_plan_estudio_id = c.tipo_plan_estudio_id
            certificado_valido.tipo_plan_estudio = c.tipo_plan_estudio
            certificado_valido.area_academica_id = c.area_academica_id
            certificado_valido.area_academica = c.area_academica
            certificado_valido.nombre_disciplina = c.nombre_disciplina
            certificado_valido.nota = c.nota
            certificado_valido.promedio_curso = c.promedio_curso
            certificado_valido.nota_descripcion = c.nota_descripcion
            certificado_valido.mes_evaluacion = c.mes_evaluacion
            certificado_valido.periodo_evaluacion = c.periodo_evaluacion
            certificado_valido.tipo_nota_id = c.tipo_nota_id
            certificado_valido.tipo_nota_descripcion = c.tipo_nota_descripcion
            certificado_valido.nombre_institucion = c.nombre_institucion
            certificado_valido.nombre_jurisdiccion = c.nombre_jurisdiccion
            certificado_valido.localidad = c.localidad
            certificado_valido.origen = c.origen
            certificado_valido.orden_curso = c.orden_curso
            certificado_valido.orden = c.orden

            unless certificado_valido.save

              valido = false

            end

          end

        end

      end
    
    end
    #IMPRIMIENDO CERTIFICADO
    if valido

      reporte_nombre = "rptCertificadoEstudio.rptdesign"
      parametros = ""

      if params[:imprimir_distrito].present?

        imprimir_distrito = params[:imprimir_distrito]

      else

        imprimir_distrito = 'false'

      end

      nota_media = NotaMedia.where("matriculacion_media_detalle_id = ?", @matriculacion_detalle.id).first

      if nota_media.present? && PARAMETRO[:cursos_egresos].include?(@matriculacion.curso_id) 
      
        notas_medias_detalles = NotaMediaDetalle.where("nota_media_id = ? and tipo_etapa_nota_id = 3", nota_media.id).first

        if notas_medias_detalles.present?

          promedio_general = nota_media.promedio_general.to_s[0..4].sub(".",",")
          promedio_general = promedio_general.size == 3 ? "#{promedio_general}0" : promedio_general
          nota_detalle = NotaMediaDetalle.where("nota_media_id = ? and estado_nota_id = ?", nota_media.id, PARAMETRO[:nota_confirmado]).order("periodo_evaluacion_id desc, mes_evaluacion_id desc").first

        end
   
      end
      ###-----PARA OBTENER LA OFERTA EDUCATIVA DONDE RINDIÓ EL ÚLTIMO EXAMEN
      certificado_estudio = VCertificadoEstudioV4.where("persona_id = ?", @alumno.estudiante_id).order("periodo_evaluacion desc, mes_evaluacion desc").first

      if  certificado_estudio.present? #nota_detalle.present?
        
        oferta_educativa_id = certificado_estudio.oferta_educativa_id
        #oferta_educativa_id = nota_detalle.oferta_educativa_id
        #oferta_educativa_id = @matriculacion.oferta_educativa_id
     
      else 
        
        oferta_educativa_id = @matriculacion.oferta_educativa_id
      
      end

      parametros += "&parametros0=#{@matriculacion_detalle.estudiante_id}"
      parametros += "&parametros1=#{@matriculacion.especialidad_id}"
      parametros += "&parametros2=#{oferta_educativa_id}"
      parametros += "&parametros3=#{certificado_valido_encriptacion}"
      parametros += "&parametros4=#{promedio_general}"
      parametros += "&parametros5=#{imprimir_distrito}"
      parametros += "&parametros6=#{solo_consulta}"
      parametros += "&parametros7=#{current_usuario.perfil_actual.rol_id}"

      params[:formato] = 'pdf'

      uri = URI::parse("#{PARAMETRO[:server_reports_v2]}#{reporte_nombre}#{parametros}&__format=#{params[:formato]}&__locale=es")


      puts uri

      result = Net::HTTP.get_response(
        uri
      )
      
      send_data result.body, :filename=> "#{reporte_nombre.sub(".rptdesign","")}_#{Time.now.strftime('%Y%m%d%H%M%S')}.#{params[:formato]}"

    end

  end #fin del metodo

  def emitir_certificado_de_estudio_nautilus

    valido = true
    #require 'digest/md5'

    ci = params[:persona_id]
    cantidad_matriculacion = 1
    reporte_nombre = "rptCertificadoEstudio.rptdesign"
    parametros = ""
    
    #VCertificadoEstudio.find_by_sql("select * from dblink('dbname=sistemas_mec_production port=5432 host=192.168.16.120 user=cxnusrmec password=xtra1.level-security', 'select notas_confirmadas(#{ci.to_i})') a (msg text)")

    if valido

      parametros += "&parametros0=#{params[:persona_id]}"
      parametros += "&parametros1=0"  #encriptacion

      #PARAMETROS2 SI UTILIZA PARA IMPRIMIR POR ROL CERTIFICACION O  ROL DIRECTORES - SECRETARIOS ETC
      parametros += "&parametros2=0"

      #SETEANDO LAS CALIFICACIONES HASTA
      notas_alumnos = NotaAlumnoNautilus.where("persona_id = ? and activo = true", ci)
      if notas_alumnos.present?

        notas_alumnos.each do |na|

          unless na.calificacion_hasta.present?
            na.calificacion_hasta = 5
            na.save
          end

          if na.imprimir_promedio != true && na.imprimir_promedio != false
            na.imprimir_promedio = true
            na.save
          end

        end

      end

      #PARAMETROS3 PARA OBTENER SI SU CALIFICACION HASTA ES 5 O ES 10 O ES 5 Y 10 PARA EL MENSAJE EN EL CERTIFICADO DE ESTUDIO
      notas_alumnos = NotaAlumnoNautilus.select("distinct calificacion_hasta").where("persona_id = ?", ci).order("calificacion_hasta")
      parametro_calificacion_hasta = ''

      if notas_alumnos.present?

        notas_alumnos.each do |na|
          parametro_calificacion_hasta += na.calificacion_hasta.to_s
        end

      end

      parametros += "&parametros3=#{parametro_calificacion_hasta}"
      parametros += "&parametros4=#{cantidad_matriculacion}"
      parametros +=  params[:no_valido].present? ? "&parametros5=0" : "&parametros5=1"

      #PARAMETRO 6 PARA LA INSTITUCION DE CABECERA

      nota_alumno = NotaAlumnoNautilus.joins("inner join notas_detalles on notas_alumnos.id = notas_detalles.nota_alumno_id and notas_detalles.nota is not null").where("persona_id = ? and cantidad_matriculacion = ? and activo = true ", ci, cantidad_matriculacion).order("periodo_escolar desc, id desc").first

      nota_detalle1 = NotaDetalleNautilus.where("nota_alumno_id = ? and confirmada = true", nota_alumno.id).order("ano_evaluacion desc, mes_evaluacion desc").first
      nota_detalle2 = NotaDetalleNautilus.where("nota_alumno_id = ? and tipo_nota_id = ? and confirmada = true", nota_alumno.id, PARAMETRO[:regularizacion]).first
      nota_detalle3 = NotaDetalleNautilus.where("nota_alumno_id = ? and tipo_nota_id in (?) and confirmada = true", nota_alumno.id, [PARAMETRO[:ordinario], PARAMETRO[:complementario]]).order("ano_evaluacion desc, mes_evaluacion desc,tipo_nota_id desc").first

      if nota_detalle1.present?
        nota_detalle_id = nota_detalle1.id
      elsif nota_detalle2.present?
        nota_detalle_id = nota_detalle2.id
      elsif nota_detalle3.present?
        nota_detalle_id = nota_detalle3.id
      end

      parametros += "&parametros6=#{nota_detalle_id}"
      params[:formato] = 'pdf'

      uri = URI::parse("#{PARAMETRO[:server_reports_gestion_academica]}#{reporte_nombre}#{parametros}&__format=#{params[:formato]}&__locale=es")

      puts uri

      result = Net::HTTP.get_response(
        uri
      )

      send_data result.body, :filename=> "#{reporte_nombre.sub(".rptdesign","")}_#{Time.now.strftime('%Y%m%d%H%M%S')}.#{params[:formato]}"

    end

  end
def abrir_informe_rendimiento_escolar_eeb

    @periodos = (2016..Time.now.year.to_i)
     @tipo_etapa_nota = params[:tipo_etapa_nota_id]
    @departamento = params[:departamento_id]
    @tipo_gestion = params[:tipo_gestion_id]
    
     respond_to do |f|
      f.js

     end 

  end 
  def abrir_informe_rendimiento_escolar_eeb_xls
    
    @periodos = (2016..Time.now.year.to_i)
    @tipo_etapa_nota = params[:tipo_etapa_nota_id]
    @departamento = params[:departamento_id]
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

  end 
  def abrir_informe_matriculacion_media
    
    @periodos = (2016..Time.now.year.to_i)
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

  end 
  def abrir_informe_matriculacion_media_xls
    
    @periodos = (2016..Time.now.year.to_i)
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

  end 
  def abrir_informe_matriculacion_basica
    
    @periodos = (2016..Time.now.year.to_i)
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

  end 
  def abrir_informe_matriculacion_basica_xls
    
    @periodos = (2016..Time.now.year.to_i)
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

  end 
  def abrir_informe_resumen_matriculacion_em
    
    @periodos = (2016..Time.now.year.to_i)
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

    
  end

  def abrir_informe_resumen_matriculacion_em_xls
   
    @periodos = (2016..Time.now.year.to_i)
    @tipo_gestion = params[:tipo_gestion_id]

     respond_to do |f|

      f.js

     end 

    
  end





  def emitir_certificado_de_estudio_reconocimiento

    valido = true
    require 'digest/md5'
    promedio_general = ""

    @matriculacion = VMatriculacionReconocimiento.where("matriculacion_id = ? and origen = 1", params[:matriculacion_id]).first
    @alumno = VMatriculacionDetalleV5.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first
   
    if PARAMETRO[:modalidades_educacion_inclusiva_formal].include?(@matriculacion.modalidad_nivel_id)

      @matriculacion_detalle = MatriculacionInclusivaDetalle.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first
      
    elsif PARAMETRO[:modalidades_educacion_inicial_eeb].include?(@matriculacion.modalidad_nivel_id)

      @matriculacion_detalle = MatriculacionBasicaDetalle.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first

    elsif PARAMETRO[:modalidades_educacion_media].include?(@matriculacion.modalidad_nivel_id)

      @matriculacion_detalle = MatriculacionMediaDetalle.where("matriculacion_detalle_id = ?", params[:matriculacion_detalle_id]).first
      nota_media = NotaMedia.where("matriculacion_media_detalle_id = ?", @matriculacion_detalle.id).first
    
    end

    if params[:solo_consulta].present?

      solo_consulta = 'si'

    else

      solo_consulta = 'no'

    end
    
    #PREPARANDO ENCRIPTACION
    persona_id_invertida = @matriculacion_detalle.estudiante_id.to_s.split("").reverse.to_s
    fecha_invertida = Time.now.strftime("%d%m%Y").to_s.split("").reverse.to_s
    hora_invertida = Time.now.strftime("%H%M%S%s").to_s.split("").reverse.to_s

    sin_encriptar = persona_id_invertida+fecha_invertida+hora_invertida
    certificado_valido_encriptacion = Digest::MD5.hexdigest(persona_id_invertida+fecha_invertida+hora_invertida)

    #GUARDANDO ENCRIPTACION Y NUEVO CERTIFICADO VALIDO

    if solo_consulta == 'no'

      certificado_encriptado = CertificadoEncriptado.new
      certificado_encriptado.matriculacion_detalle_id = @matriculacion_detalle.matriculacion_detalle_id
      certificado_encriptado.persona_id = @matriculacion_detalle.estudiante_id
      certificado_encriptado.encriptacion = certificado_valido_encriptacion
      certificado_encriptado.usuario_id = current_usuario.id
      certificado_encriptado.fecha = Time.now.strftime("%Y-%m-%d")
      certificado_encriptado.hora = Time.now.strftime("%H:%M:%S")
      certificado_encriptado.especialidad_id = @matriculacion.especialidad_id

      if certificado_encriptado.save

        #OBTENIENDO CERTIFICADO A IMPRIMIR
        certificado_estudio = VCertificadoEstudio.find_by_sql("select * from sp_certificado_v4(#{@matriculacion_detalle.estudiante_id}, #{@matriculacion.especialidad_id} )" )
      
        if certificado_estudio.present?

          #CALCULAR PROMEDIO DE CURSO EN SISTEMAS_MEC_PRODUCTION
          certificado_estudio_nautilus = VCertificadoEstudioNautilus.where("documento_persona = ? and nacionalidad = ?", @alumno.estudiante_documento, @alumno.estudiante_nacionalidad )

          if certificado_estudio_nautilus.present?

            VCertificadoEstudio.find_by_sql("select * from dblink('dbname=sistemas_mec_production port=5432 host=192.168.16.120 user=cxnusrmec password=xtra1.level-security', 'select notas_confirmadas(#{certificado_estudio_nautilus.first.id_persona})') a (msg text)")

            if nota_media.present?

              #VCertificadoEstudio.find_by_sql("select calcular_promedios_media(#{nota_media.id})")

            end

            notas_alumnos_ids = certificado_estudio_nautilus.map(&:nota_alumno_id).uniq

            notas_alumnos_ids.each do |nota_alumno_id|

              nota_alumno_nautilus = NotaAlumnoNautilus.find(nota_alumno_id)

              #unless nota_alumno_nautilus.promedio.present? 
      
                suma = 0
                cantidad_contador = 0
      
                notas_detalles_nautilus = NotaDetalleNautilus.where("nota_alumno_id = ? and confirmada = true", nota_alumno_nautilus.id)
        
                notas_detalles_nautilus.each do |nd|    
        
                  if nd.nota.present? && nd.nota < 11

                    cantidad_contador = cantidad_contador + 1
          

           
                      suma = suma + nd.nota


                  end
      
                end

                if suma > 0

                  nuevo_promedio = (suma.to_f / cantidad_contador.to_f).round(2)

                  nota_alumno_nautilus.promedio = nuevo_promedio
                  nota_alumno_nautilus.save

                end

              #end

            end
        
          end
          #FIN CALCULAR PROMEDIO EN SISTEMAS MEC PRODUCTION

          certificado_estudio.each do |c|
            #NUEVAS NOTAS VALIDAS
            certificado_valido =  CertificadoValido.new
            certificado_valido.certificado_encriptado_id = certificado_encriptado.id
            certificado_valido.matriculacion_id = c.matriculacion_id
            certificado_valido.matriculacion_detalle_id = c.matriculacion_detalle_id
            certificado_valido.nota_estudiante_id = c.nota_estudiante_id
            certificado_valido.nota_estudiante_detalle_id = c.nota_estudiante_detalle_id
            certificado_valido.periodo = c.periodo
            certificado_valido.curso_id = c.curso_id
            certificado_valido.curso = c.curso
            certificado_valido.tipo_especialidad_id = c.tipo_especialidad_id
            certificado_valido.tipo_especialidad = c.tipo_especialidad
            certificado_valido.especialidad_id = c.especialidad_id
            certificado_valido.especialidad = c.especialidad
            certificado_valido.especialidad_id_nautilus = c.especialidad_id_nautilus
            certificado_valido.persona_id = c.persona_id
            certificado_valido.estudiante_tipo_documento_id = c.estudiante_tipo_documento_id
            certificado_valido.estudiante_tipo_documento = c.estudiante_tipo_documento
            certificado_valido.estudiante_documento = c.estudiante_documento
            certificado_valido.estudiante_nombre_apellido = c.estudiante_nombre_apellido
            certificado_valido.estudiante_fecha_nacimiento = c.estudiante_fecha_nacimiento
            certificado_valido.estudiante_nacionalidad = c.estudiante_nacionalidad
            certificado_valido.estudiante_dia_nacimiento = c.estudiante_dia_nacimiento
            certificado_valido.estudiante_mes_nacimiento = c.estudiante_mes_nacimiento
            certificado_valido.estudiante_anio_nacimiento = c.estudiante_anio_nacimiento
            certificado_valido.regimen = c.regimen
            certificado_valido.tipo_plan_estudio_id = c.tipo_plan_estudio_id
            certificado_valido.tipo_plan_estudio = c.tipo_plan_estudio
            certificado_valido.area_academica_id = c.area_academica_id
            certificado_valido.area_academica = c.area_academica
            certificado_valido.nombre_disciplina = c.nombre_disciplina
            certificado_valido.nota = c.nota
            certificado_valido.promedio_curso = c.promedio_curso
            certificado_valido.nota_descripcion = c.nota_descripcion
            certificado_valido.mes_evaluacion = c.mes_evaluacion
            certificado_valido.periodo_evaluacion = c.periodo_evaluacion
            certificado_valido.tipo_nota_id = c.tipo_nota_id
            certificado_valido.tipo_nota_descripcion = c.tipo_nota_descripcion
            certificado_valido.nombre_institucion = c.nombre_institucion
            certificado_valido.nombre_jurisdiccion = c.nombre_jurisdiccion
            certificado_valido.localidad = c.localidad
            certificado_valido.origen = c.origen
            certificado_valido.orden_curso = c.orden_curso
            certificado_valido.orden = c.orden

            unless certificado_valido.save

              valido = false

            end

          end

        end

      end
    
    end
    #IMPRIMIENDO CERTIFICADO
    if valido

      reporte_nombre = "rptCertificadoEstudio.rptdesign"
      parametros = ""

      if params[:imprimir_distrito].present?

        imprimir_distrito = params[:imprimir_distrito]

      else

        imprimir_distrito = 'false'

      end

      nota_media = NotaMedia.where("matriculacion_media_detalle_id = ?", @matriculacion_detalle.id).first

      if nota_media.present? && PARAMETRO[:cursos_egresos].include?(@matriculacion.curso_id) 
      
        notas_medias_detalles = NotaMediaDetalle.where("nota_media_id = ? and tipo_etapa_nota_id = 3", nota_media.id).first

        if notas_medias_detalles.present?

          promedio_general = nota_media.promedio_general.to_s[0..4].sub(".",",")
          promedio_general = promedio_general.size == 3 ? "#{promedio_general}0" : promedio_general
          nota_detalle = NotaMediaDetalle.where("nota_media_id = ? and estado_nota_id = ?", nota_media.id, PARAMETRO[:nota_confirmado]).order("periodo_evaluacion_id desc, mes_evaluacion_id desc").first

        end
   
      end
      ###-----PARA OBTENER LA OFERTA EDUCATIVA DONDE RINDIÓ EL ÚLTIMO EXAMEN
      certificado_estudio = VCertificadoEstudioV4.where("persona_id = ?", @alumno.estudiante_id).order("periodo_evaluacion desc, mes_evaluacion desc").first

      if  certificado_estudio.present? #nota_detalle.present?
        
        oferta_educativa_id = certificado_estudio.oferta_educativa_id
        #oferta_educativa_id = nota_detalle.oferta_educativa_id
        #oferta_educativa_id = @matriculacion.oferta_educativa_id
     
      else 
        
        oferta_educativa_id = @matriculacion.oferta_educativa_id
      
      end

      parametros += "&parametros0=#{@matriculacion_detalle.estudiante_id}"
      parametros += "&parametros1=#{@matriculacion.especialidad_id}"
      parametros += "&parametros2=#{oferta_educativa_id}"
      parametros += "&parametros3=#{certificado_valido_encriptacion}"
      parametros += "&parametros4=#{promedio_general}"
      parametros += "&parametros5=#{imprimir_distrito}"
      parametros += "&parametros6=#{solo_consulta}"
      parametros += "&parametros7=#{current_usuario.perfil_actual.rol_id}"

      params[:formato] = 'pdf'

      uri = URI::parse("#{PARAMETRO[:server_reports_v2]}#{reporte_nombre}#{parametros}&__format=#{params[:formato]}&__locale=es")


      puts uri

      result = Net::HTTP.get_response(
        uri
      )
      
      send_data result.body, :filename=> "#{reporte_nombre.sub(".rptdesign","")}_#{Time.now.strftime('%Y%m%d%H%M%S')}.#{params[:formato]}"

    end

  end #fin del metodo




end


