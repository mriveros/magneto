Rails.application.routes.draw do

  get 'validaciones/titulos/:serie_numero' => "validaciones_titulos#index"

  #MATRICULACIONES HISTORICAS
  get 'matriculaciones_historicas/index'
  get 'matriculaciones_historicas/lista'
  post 'matriculaciones_historicas/lista'
  get 'matriculaciones_historicas/agregar'
  post 'matriculaciones_historicas/guardar'
  

  #CERTIFICACIONES PRESUPUESTARIAS
  get 'certificaciones_presupuestarias/index'
  get 'certificaciones_presupuestarias/lista'
  post 'certificaciones_presupuestarias/lista'
  get 'certificaciones_presupuestarias/detalle_certificacion'
  get 'certificaciones_presupuestarias/registrar_certificacion'
  post 'certificaciones_presupuestarias/guardar_certificacion'
  get 'certificaciones_presupuestarias/editar_certificacion'
  post 'certificaciones_presupuestarias/actualizar_certificacion'

  #GRAFICOS
  get "graficos/por_cantidad_matriculados"
  get "graficos/por_cantidad_aprobados"
  get "graficos/por_cantidad_reprobados"
  post "graficos/reportes_matriculaciones"
  post "graficos/reportes_ofertas_educativas"

  #MATERIALES_EDUCATIVOS
  post "materiales_educativos/lista"
  get "materiales_educativos/lista"
  get "materiales_educativos/agregar"
  post "materiales_educativos/guardar"
  get "materiales_educativos/eliminar"
  get "materiales_educativos/editar"
  post "materiales_educativos/actualizar"
  get "materiales_educativos/index"
  get 'materiales_educativos/buscar_disciplinas'
  get 'materiales_educativos/buscar_areas_academicas'
  get 'materiales_educativos/buscar_cursos'
  get 'materiales_educativos/buscar_modalidades_niveles'
  get 'materiales_educativos/buscar_titulos'
  get 'materiales_educativos/buscar_autores'
  get 'textos_educativos/buscar_editoriales'

  #MATRICULACIONES DETALLES
  get "matriculaciones_detalles/editar_matriculacion_detalle_documento"
  post "matriculaciones_detalles/actualizar_matriculacion_detalle_documento"
  get "matriculaciones_detalles/unificar_documento_estudiante"
  get "matriculaciones_detalles/obtener_datos"
  post "matriculaciones_detalles/proceso_unificar_documento_estudiante"
	get "matriculaciones_detalles/unificar_documento_estudiante_v2"
	post "matriculaciones_detalles/proceso_unificar_documento_estudiante_v2"
	get "matriculaciones_detalles/obtener_datos_v2"

  #OFERTAS_EDUCATIVAS_ALIMENTACIONES_ESCOLARES
  get "ofertas_educativas_alimentaciones_escolares/index"
  get "ofertas_educativas_alimentaciones_escolares/ofertas_educativas_alimentaciones_escolares_lista"
  post "ofertas_educativas_alimentaciones_escolares/ofertas_educativas_alimentaciones_escolares_lista"
  get "ofertas_educativas_alimentaciones_escolares/eliminar"
  get "ofertas_educativas_alimentaciones_escolares/agregar"
  post "ofertas_educativas_alimentaciones_escolares/guardar"
  get 'ofertas_educativas_alimentaciones_escolares/buscar_ofertas_educativas'
  get "ofertas_educativas_alimentaciones_escolares/detalles_sobrantes"
  get "ofertas_educativas_alimentaciones_escolares/registrar_sobrantes_alimentos"
  post "ofertas_educativas_alimentaciones_escolares/guardar_sobrantes_alimentos"

  #MIGRAR PERSONAS IDENTIFICACIONES
  get "migraciones_personas/colector"
  get "migraciones_personas/colectar_ahora"

  #MATRICULACIONES BASICAS
  get "matriculaciones_basicas/agregar"
  post "matriculaciones_basicas/guardar"
  post "matriculaciones_basicas/habilitar_primer_parcial_cualitativo"
  post "matriculaciones_basicas/habilitar_primer_parcial_cualitativo_por_alumno"
  post "matriculaciones_basicas/deshabilitar_primer_parcial_cualitativo"
 
  #MATRICULACIONES PERMANENTES
  get "matriculaciones_permanentes/agregar"
  post "matriculaciones_permanentes/guardar"
  get "matriculaciones_permanentes/editar_seccion7"
  post "matriculaciones_permanentes/actualizar_seccion7"
  get "matriculaciones_permanentes/editar_seccion6"
  post "matriculaciones_permanentes/actualizar_seccion6"
  get "matriculaciones_permanentes/editar_seccion5"
  post "matriculaciones_permanentes/actualizar_seccion5"
  get "matriculaciones_permanentes/editar_seccion4"
  post "matriculaciones_permanentes/actualizar_seccion4"
  get "matriculaciones_permanentes/editar_seccion3"
  post "matriculaciones_permanentes/actualizar_seccion3"
  get "matriculaciones_permanentes/editar_seccion2"
  post "matriculaciones_permanentes/actualizar_seccion2"
   #MATRICULACIONES BASICAS
  get "matriculaciones_medias/agregar"
  post "matriculaciones_medias/guardar"
  
  #MATRICULACIONES BASICAS
  get "matriculaciones_inclusivas/agregar"
  post "matriculaciones_inclusivas/guardar"
  
  # ORDENES COMPRAS
  get 'ordenes_de_compras/index'
  get 'ordenes_de_compras/lista'
  post 'ordenes_de_compras/lista'
  get 'ordenes_de_compras/agregar_orden_compra'
  post 'ordenes_de_compras/agregar_orden_compra'
  post 'ordenes_de_compras/guardar_orden_compra'
  get 'ordenes_de_compras/buscar_proveedores'
  get 'ordenes_de_compras/buscar_alimentos'
  get 'ordenes_de_compras/calcular_cantidad_almuerzo'
  get 'ordenes_de_compras/calcular_cantidad_merienda'
  get 'ordenes_de_compras/detalles_dias'
  get 'ordenes_de_compras/detalles_dias_entregas'
  get 'ordenes_de_compras/detalles_ofertas'
  get 'ordenes_de_compras/dia_sin_actividad_escolar'
  post 'ordenes_de_compras/cambiar_estado_orden_compra'
  post 'ordenes_de_compras/anular_orden_compra'
  get 'ordenes_de_compras/recepciones_alimentacion_escolar'
  get 'ordenes_de_compras/registrar_recepcion'
  post 'ordenes_de_compras/guardar_recepcion'
  get 'ordenes_de_compras/buscar_persona'
  get 'ordenes_de_compras/eliminar_recepcion'
  get 'ordenes_de_compras/buscar_lotes'
  get 'ordenes_de_compras/editar_orden_compra'
  post 'ordenes_de_compras/actualizar_orden_compra'
  get 'ordenes_de_compras/eliminar_dia_entrega'
  get 'ordenes_de_compras/actualizar_datos'
  get 'ordenes_de_compras/provisiones_detalles'
  get 'ordenes_de_compras/registrar_provisiones_detalles'
  post 'ordenes_de_compras/guardar_provisiones_detalles'
  get 'ordenes_de_compras/editar_provisiones_detalles'
  post 'ordenes_de_compras/actualizar_provisiones_detalles'
  
  # REGISTRAR SIN ACTIVIDAD ESCOLAR
  get 'registrar_sin_actividad/index'
  get 'registrar_sin_actividad/lista'
  post 'registrar_sin_actividad/lista'
  get 'registrar_sin_actividad/agregar_por_oferta_educativa'
  post 'registrar_sin_actividad/agregar_por_oferta_educativa'
  post 'registrar_sin_actividad/guardar_por_oferta_educativa'
  get 'registrar_sin_actividad/agregar_por_turno'
  post 'registrar_sin_actividad/agregar_por_turno'
  post 'registrar_sin_actividad/guardar_por_turno'
  get 'registrar_sin_actividad/agregar_por_grado_curso'
  post 'registrar_sin_actividad/agregar_por_grado_curso'
  post 'registrar_sin_actividad/guardar_por_grado_curso'
  get 'registrar_sin_actividad/agregar_por_modalidad'
  post 'registrar_sin_actividad/agregar_por_modalidad'
  post 'registrar_sin_actividad/guardar_por_modalidad'
  get 'registrar_sin_actividad/agregar_por_especialidad'
  post 'registrar_sin_actividad/agregar_por_especialidad'
  post 'registrar_sin_actividad/guardar_por_especialidad'
  get 'registrar_sin_actividad/agregar_por_seccion'
  post 'registrar_sin_actividad/agregar_por_seccion'
  post 'registrar_sin_actividad/guardar_por_seccion'
  get 'registrar_sin_actividad/detalles'
  
  #PROCESOS ACADEMICOS
  get 'procesos_academicos/index'
  get 'procesos_academicos/lista'
  post 'procesos_academicos/lista'  
  get 'procesos_academicos/agregar' 
  get 'procesos_academicos/agregar_opciones' 
  get 'procesos_academicos/guardar'    
  get 'procesos_academicos/buscar_persona'    
  get 'procesos_academicos/buscar_matriculacion_actual'    
  get 'procesos_academicos/buscar_matriculacion_actual_v2'
  get 'procesos_academicos/procesos_detalles'
  get 'procesos_academicos/guardar_detalle'
  post 'procesos_academicos/cambiar_estado_solicitado_a_enverificacion'
  post 'procesos_academicos/cambiar_estado_solicitado_a_rechazado'
  post 'procesos_academicos/cambiar_estado_solicitado_a_renuncia_rechazado'
  get 'procesos_academicos/emitir_resolucion'
  post 'procesos_academicos/guardar_resolucion'
  get 'procesos_academicos/adjuntar_resolucion'
  post 'procesos_academicos/guardar_resolucion_adjunta'
  get 'procesos_academicos/editar_resolucion'
  post 'procesos_academicos/actualizar_resolucion'
  get 'procesos_academicos/guardar_detalle_nota'
  get 'procesos_academicos/guardar_detalle_nota_basica'
  get 'procesos_academicos/examenes_extraordinarios'
  get 'procesos_academicos/examenes_extraordinarios_basicas'
  get 'procesos_academicos/planillas_extraordinarias_medias'
  get 'procesos_academicos/planillas_extraordinarias_medias_pdf'
  get 'procesos_academicos/buscar_ofertas_educativas'
  get 'procesos_academicos/buscar_ofertas_educativas_editar'
  get 'procesos_academicos/obtener_secciones'
  post 'procesos_academicos/cambiar_estado_solicitado_a_aprobado'
  get 'procesos_academicos/procesos_detalles_rectificacion_planillas'
  post 'procesos_academicos/cambiar_estado_enverificacion_a_solicitado'
  post 'procesos_academicos/cambiar_estado_aprobado_a_enverificacion'
  post 'procesos_academicos/cambiar_estado_enverificacion_v2_a_aprobado'
  get 'procesos_academicos/editar' 
  get 'procesos_academicos/editar_agregar_opciones' 
  get 'procesos_academicos/guardar_edicion_procesos_academicos'
  get 'procesos_academicos/obtener_modalidades_niveles'
  get 'procesos_academicos/obtener_cursos'
  post 'procesos_academicos/cambiar_estado_reconocimiento_solicitado_a_enverificacion'
  get 'procesos_academicos/procesos_detalles_reconocimiento'
  get 'procesos_academicos/guardar_detalle_reconocimiento'
  get 'procesos_academicos/emitir_resolucion_reconocimiento'
  post 'procesos_academicos/guardar_resolucion_reconocimiento'
  get 'procesos_academicos/adjuntar_resolucion_reconocimiento'
  post 'procesos_academicos/guardar_resolucion_adjunta_reconocimiento'
  post 'procesos_academicos/aprobar_proceso_reconocimiento_estudio'
  post 'procesos_academicos/cambiar_estado_enverificacion_a_solicitado_reconocimiento'
  post 'procesos_academicos/cambiar_estado_aprobado_a_enverificacion_reconocimiento'
  get 'procesos_academicos/procesos_detalles_reconocidos'
  get 'procesos_academicos/guardar_detalle_nota_reconocimiento'
  get 'procesos_academicos/guardar_detalle_nota_adelantamiento'
  post 'procesos_academicos/eliminar_proceso_academico'
  get 'procesos_academicos/guardar_detalle_eeb'
  get 'procesos_academicos/guardar_detalle_nota_extraordinario_eeb'

    
  #INFORMES EEB
  get 'informes_eeb/index'
  get 'informes_eeb/emitir_informe_servidor_v2'
  get 'informes_eeb/emitir_informe_servidor'
  get 'informes_eeb/abrir_informe_eeb_ordinario_general'
  post 'informes_eeb/abrir_informe_eeb_ordinario_general'
  get 'informes_eeb/abrir_informe_eeb_rendimiento_academico'
  post 'informes_eeb/abrir_informe_eeb_rendimiento_academico'
  get 'informes_eeb/abrir_informe_eeb_final_ordinario'
  post 'informes_eeb/abrir_informe_eeb_final_ordinario'
  #VISACIÓN DE CERTIFICADOS
  get 'visaciones_certificados_estudios/index'
  get 'visaciones_certificados_estudios/buscar_certificados'
  post 'visaciones_certificados_estudios/buscar_certificados'
  get 'visaciones_certificados_estudios/verificar_certificado'
  get 'visaciones_certificados_estudios/verificar_certificado_nautilus'
  get 'visaciones_certificados_estudios/eliminar_codigo_aprobado'
  get 'visaciones_certificados_estudios/agregar_codigo'
  post 'visaciones_certificados_estudios/guardar_codigo'
  get 'visaciones_certificados_estudios/agregar_codigo_visacion_nautilus'
  post 'visaciones_certificados_estudios/guardar_codigo_visacion_nautilus'

  #OFERTAS_EDUCATIVAS_POSTULACIONES
  get 'ofertas_educativas_postulaciones/index'
  get 'ofertas_educativas_postulaciones/lista'
  post 'ofertas_educativas_postulaciones/lista'
  get 'ofertas_educativas_postulaciones/postulaciones_detalles'  
  get 'ofertas_educativas_postulaciones/mostrar_formulario'  
  post 'ofertas_educativas_postulaciones/confirmar_datos'
  get 'ofertas_educativas_postulaciones/eliminar_postulacion'
  get "ofertas_educativas_postulaciones/agregar"
  post "ofertas_educativas_postulaciones/guardar"
  get "ofertas_educativas_postulaciones/buscar_ofertas_educativas"
  get "ofertas_educativas_postulaciones/confirmar_verificacion_de_constancia"
  get "ofertas_educativas_postulaciones/eliminar_verificacion_de_constancia"
  get "ofertas_educativas_postulaciones/descalificar_postulante"
  post "ofertas_educativas_postulaciones/desconfirmar_datos"

  #USUARIOS DEPENDENCIAS
  get 'usuarios_dependencias/index'
  get 'usuarios_dependencias/lista'
  post 'usuarios_dependencias/lista'
  get'usuarios_dependencias/usuarios_dependencias'
  get 'usuarios_dependencias/editar_usuario_dependencia'
  get 'usuarios_dependencias/agregar_usuario_dependencia_detalle'
  get 'usuarios_dependencias/agregar_usuario_dependencia'
  post 'usuarios_dependencias/guardar_usuario_dependencia'
  post 'usuarios_dependencias/guardar_usuario_dependencia_detalle'

  get 'usuarios_dependencias/editar_usuario_dependencia_detalle'
  post 'usuarios_dependencias/actualizar_usuario_dependencia'
  get 'usuarios_dependencias/eliminar_usuario_dependencia'
  get 'usuarios_dependencias/eliminar_usuario_dependencia_detalle'
  get'usuarios_dependencias/buscar_persona'
  get'usuarios_dependencias/buscar_usuario'

  get'usuarios_dependencias/dependencias_detalles'
  get'usuarios_dependencias/supervision_pedagogicos'
  get 'usuarios_dependencias/buscar_dependencia'

  get'usuarios_dependencias/supervisiones_institucion'
  get'usuarios_dependencias/agregar_supervisiones_institucion'
  post'usuarios_dependencias/guardar_supervisiones_institucion'
  get 'usuarios_dependencias/eliminar_supervision_institucion'
  get 'usuarios_dependencias/buscar_institucion'

  
  #MATRICULACIONES SECCIONES
 
  get 'matriculaciones_secciones/index'
  get 'matriculaciones_secciones/lista'
  post 'matriculaciones_secciones/lista'
  get "matriculaciones_secciones/detalles"
  get 'matriculaciones_secciones/planes_detalles'
  get 'matriculaciones_secciones/agregar_plan_optativo'
  post 'matriculaciones_secciones/guardar_plan_optativo'
  get 'matriculaciones_secciones/eliminar_plan_optativo'
  get 'matriculaciones_secciones/editar'
  post 'matriculaciones_secciones/actualizar'
  get'matriculaciones_secciones/agregar_matriculacion_seccion'
  get 'matriculaciones_secciones/buscar_ofertas_educativas'
  get 'matriculaciones_secciones/obtener_servicios'
  get 'matriculaciones_secciones/obtener_localidades'
  get 'matriculaciones_secciones/obtener_modalidades_niveles'
  get 'matriculaciones_secciones/obtener_especialidades'
  get 'matriculaciones_secciones/obtener_cursos'
  get 'matriculaciones_secciones/obtener_planes_estudios'
  get "matriculaciones_secciones/mostrar_plan_estudio"
  post 'matriculaciones_secciones/guardar_matriculacion_seccion'
  get 'matriculaciones_secciones/editar_matriculacion_seccion'
  post 'matriculaciones_secciones/actualizar_matriculacion_seccion'
  get 'matriculaciones_secciones/buscar_clasificacion_plan'
  post 'matriculaciones_secciones/buscar_clasificacion_plan'
  get 'matriculaciones_secciones/agregar_matriculacion_habilitacion'
  post 'matriculaciones_secciones/guardar_matriculacion_habilitacion'
  post 'matriculaciones_secciones/eliminar_matriculacion_seccion'
  get 'matriculaciones_secciones/obtener_programas_educativos'
  get 'matriculaciones_secciones/obtener_modalidades_estudios'
  
  #IMPRESION TITULO
  get "impresiones_titulos/matriculaciones_detalles"
  post "impresiones_titulos/lista"
  get "impresiones_titulos/lista"
  post "impresiones_titulos/lista_v2"
  get "impresiones_titulos/lista_v2"
  get "impresiones_titulos/agregar"
  post "impresiones_titulos/guardar"
  post "impresiones_titulos/guardar_todo"
  get "impresiones_titulos/eliminar"
  get "impresiones_titulos/editar"
  post "impresiones_titulos/actualizar"
  get "impresiones_titulos/index"
  get "impresiones_titulos/cambiar_estado_impreso_a_iniciado"
  post "impresiones_titulos/cambiar_estado_impreso_a_iniciado"
 #MATRICULACIONES SUPERIOR
  get "matriculaciones_superior/matriculaciones_superior_detalles"
  get 'matriculaciones_superior/obtener_enfasis'
  get 'matriculaciones_superior/obtener_cursos'
  get 'matriculaciones_superior/obtener_modalidades_estudios'
  get 'matriculaciones_superior/obtener_carreras'
  get 'matriculaciones_superior/obtener_titulos'
  get 'matriculaciones_superior/obtener_tipos_formaciones'
  get "matriculaciones_superior/obtener_servicios"
  get "matriculaciones_superior/obtener_localidades"
  get "matriculaciones_superior/obtener_modalidades_niveles"
  get "matriculaciones_superior/obtener_niveles_modalidades"
  get "matriculaciones_superior/obtener_especialidades"
  get "matriculaciones_superior/obtener_cursos2"
  get "matriculaciones_superior/obtener_cursos"
  get "matriculaciones_superior/buscar_persona_v2"
  get "matriculaciones_superior/buscar_persona"
  get "matriculaciones_superior/buscar_ofertas_educativas_localidades"
  get "matriculaciones_superior/buscar_ofertas_educativas"
  post "matriculaciones_superior/guardar_seccion7"
  post "matriculaciones_superior/guardar_seccion6"
  post "matriculaciones_superior/guardar_seccion5"
  post "matriculaciones_superior/guardar_seccion4"
  post "matriculaciones_superior/guardar_seccion3"
  post "matriculaciones_superior/guardar_seccion2"
  post "matriculaciones_superior/guardar_seccion1"
  get "matriculaciones_superior/abrir_seccion"
  post "matriculaciones_superior/lista"
  get "matriculaciones_superior/lista"
  post "matriculaciones_superior/lista_v2"
  get "matriculaciones_superior/lista_v2"
  get "matriculaciones_superior/agregar"
  post "matriculaciones_superior/guardar"
  get "matriculaciones_superior/eliminar"
  get "matriculaciones_superior/editar"
  post "matriculaciones_superior/actualizar"
  get "matriculaciones_superior/index"
  post "matriculaciones_superior/cambiar_estado_automaticamente_a_regular"
  post "matriculaciones_superior/cambiar_estado_regular_a_automatico"
   get "matriculaciones_superior/editar_seccion7"
  post "matriculaciones_superior/actualizar_seccion7"
  get "matriculaciones_superior/editar_seccion6"
  post "matriculaciones_superior/actualizar_seccion6"
  get "matriculaciones_superior/editar_seccion5"
  post "matriculaciones_superior/actualizar_seccion5"
  get "matriculaciones_superior/editar_seccion4"
  post "matriculaciones_superior/actualizar_seccion4"
  get "matriculaciones_superior/editar_seccion3"
  post "matriculaciones_superior/actualizar_seccion3"
  get "matriculaciones_superior/editar_seccion2"
  post "matriculaciones_superior/actualizar_seccion2"
  get "matriculaciones_superior/mostrar_mas_opciones_superior"
  post "matriculaciones_superior/mostrar_mas_opciones_superior"
   
  #NOTAS ALUMNOS
  post "notas_alumnos/confirmar_evaluacion_complementario_media"
  post "notas_alumnos/confirmar_evaluacion_complementario_basica"
  get 'notas_alumnos/planillas_regularizacion_sexto'
  get 'notas_alumnos/planillas_regularizacion_sexto_pdf'
  get 'notas_alumnos/planillas_regularizacion_sexto_por_alumno'
  get 'notas_alumnos/planillas_regularizacion_sexto_por_alumno_pdf'
  post "notas_alumnos/nota_alumno_regularizacion_sexto"
  get "notas_alumnos/nota_alumno_regularizacion_sexto"  
  post 'notas_alumnos/guardar_notas_sexto_detalles_regularizacion'
  get "notas_alumnos/agregar_nota_regularizacion_sexto"
  get 'notas_alumnos/planillas_regularizacion_noveno_por_alumno'
  get 'notas_alumnos/planillas_regularizacion_noveno_por_alumno_pdf'
  post "notas_alumnos/nota_alumno_regularizacion_noveno"
  get "notas_alumnos/nota_alumno_regularizacion_noveno"
  get "notas_alumnos/agregar_nota_regularizacion_noveno"
  get 'notas_alumnos/planillas_regularizacion_noveno'
  get 'notas_alumnos/planillas_regularizacion_noveno_pdf'
  post 'notas_alumnos/guardar_notas_noveno_detalles_regularizacion'
  post 'notas_alumnos/planillas_complementarias_basicas_por_alumno'
  get 'notas_alumnos/planillas_complementarias_basicas_por_alumno'
  get 'notas_alumnos/planillas_complementarias_basicas_por_alumno_pdf'
  post "notas_alumnos/nota_alumno_regularizacion_media"
  get "notas_alumnos/nota_alumno_regularizacion_media"
  get "notas_alumnos/agregar_nota_regularizacion_media"
  post 'notas_alumnos/guardar_notas_medias_detalles_regularizacion'
  get 'notas_alumnos/planillas_regularizacion_media'
  get 'notas_alumnos/planillas_regularizacion_media_pdf'
  get 'notas_alumnos/planillas_regularizacion_media_por_alumno'
  get 'notas_alumnos/planillas_regularizacion_media_por_alumno_pdf'
  get 'notas_alumnos/planillas_regularizacion_basica_por_alumno'
  get 'notas_alumnos/planillas_regularizacion_basica_por_alumno_pdf'
  post "notas_alumnos/nota_alumno_regularizacion_basica"
  get "notas_alumnos/nota_alumno_regularizacion_basica"
  get "notas_alumnos/agregar_nota_regularizacion_basica"
  post 'notas_alumnos/guardar_notas_basicas_detalles_regularizacion'
  get 'notas_alumnos/planillas_regularizacion_basica'
  get 'notas_alumnos/planillas_regularizacion_basica_pdf'
  post 'notas_alumnos/planillas_complementarias_basicas'
  get 'notas_alumnos/planillas_complementarias_basicas'
  get 'notas_alumnos/planillas_complementarias_basicas_pdf'
  post 'notas_alumnos/planillas_complementarias'
  get 'notas_alumnos/planillas_complementarias'
  post 'notas_alumnos/planillas_complementarias_por_alumno'
  get 'notas_alumnos/planillas_complementarias_por_alumno'
  get 'notas_alumnos/planillas_complementarias_pdf'
  get 'notas_alumnos/planillas_complementarias_por_alumno_pdf'
  post "notas_alumnos/nota_alumno"
  get "notas_alumnos/nota_alumno"
  get "notas_alumnos/agregar_nota"
  post 'notas_alumnos/guardar_notas_medias_detalles_ordinario'
  post 'notas_alumnos/guardar_notas_medias_detalles_complementario'
  post 'notas_alumnos/planillas_ordinarias'
  get 'notas_alumnos/planillas_ordinarias'
  get 'notas_alumnos/planillas_ordinarias_pdf'
  post 'notas_alumnos/guardar_notas_basicas_detalles_ordinario'
  post 'notas_alumnos/guardar_notas_basicas_detalles_complementario'
  post 'notas_alumnos/planillas_ordinarias_basicas'
  get 'notas_alumnos/planillas_ordinarias_basicas'
  get 'notas_alumnos/planillas_ordinarias_basicas_pdf'
  post 'notas_alumnos/guardar_notas_inclusivas_detalles_ordinario'
  post 'notas_alumnos/guardar_notas_inclusivas_detalles_complementario'
  post 'notas_alumnos/planillas_ordinarias_inclusivas'
  get 'notas_alumnos/planillas_ordinarias_inclusivas'
  get 'notas_alumnos/planillas_ordinarias_inclusivas_pdf'
  get 'notas_alumnos/eliminar_nota'
  
  #NOTAS_PORCENTAJES
  post "notas_porcentajes/nota_alumno"
  get  "notas_porcentajes/nota_alumno"
  get  "notas_porcentajes/agregar_nota"
  get "notas_porcentajes/eliminar_nota"
  post "notas_porcentajes/guardar_notas_medias_detalles_ordinario_cualitativas"
  post "notas_porcentajes/centro_trabajo"
  get "notas_porcentajes/centro_trabajo"
  post "notas_porcentajes/guardar_notas_medias_detalles_ordinario_examen_competencia"
  
  
  #NOTAS_ALUMNOS_MOVIL
  post "notas_alumnos_movil/nota_alumno"
  get "notas_alumnos_movil/nota_alumno"
  get "notas_alumnos_movil/agregar_nota"
  post 'notas_alumnos_movil/_notas_medias_detalles_complementario'  

  #NOTAS ALUMNOS PRIMER PARCIAL
  post "notas_alumnos_primer_parcial/guardar_notas_basicas_descriptivas_primera_etapa"
  get "notas_alumnos_primer_parcial/agregar_calificacion_cualitativa"
  post "notas_alumnos_primer_parcial/guardar_calificacion_cualitativa"
  get "notas_alumnos_primer_parcial/mostrar_calificaciones_cualitativas"
  post "notas_alumnos_primer_parcial/nota_alumno_primer_parcial"
  get "notas_alumnos_primer_parcial/nota_alumno_primer_parcial"
  get "notas_alumnos_primer_parcial/agregar_nota_primer_parcial"
  post "notas_alumnos_primer_parcial/guardar_notas_basicas_detalles"
  post "notas_alumnos_primer_parcial/guardar_notas_medias_detalles"
  post "notas_alumnos_primer_parcial/guardar_notas_inclusivas_detalles"
  get "notas_alumnos_primer_parcial/eliminar_nota"

  #NOTAS ALUMNOS SEGUNDO PARCIAL
  get "notas_alumnos_segundo_parcial/nota_alumno_segundo_parcial"
  get "notas_alumnos_segundo_parcial/agregar_nota_segundo_parcial"
  post "notas_alumnos_segundo_parcial/guardar_notas_basicas_detalles"
  post "notas_alumnos_segundo_parcial/guardar_notas_medias_detalles"
  post "notas_alumnos_segundo_parcial/guardar_notas_inclusivas_detalles"
  get "notas_alumnos_segundo_parcial/mostrar_nota_final"
  post "notas_alumnos_segundo_parcial/guardar_nota_media_detalle_proyecto_educativo"

  #SNEPE
  get "ofertas_educativas/snepe"
  get 'ofertas_educativas/snepe_lista'
  post 'ofertas_educativas/snepe_lista'
  
  #OFERTAS EDUCATIVAS RESUMEN POR COORDINADORES
  get "ofertas_educativas_coordinadores/index"
  get 'ofertas_educativas_coordinadores/ofertas_educativas_lista_coord'
  get 'ofertas_educativas_coordinadores/ofertas_educativas_detalle_coord'
  
  #TIPOS CARACTERISTICAS
  post "tipos_caracteristicas/lista"
  get "tipos_caracteristicas/lista"
  get "tipos_caracteristicas/agregar"
  post "tipos_caracteristicas/guardar"
  get "tipos_caracteristicas/eliminar"
  get "tipos_caracteristicas/editar"
  post "tipos_caracteristicas/actualizar"
  get "tipos_caracteristicas/index"

  #ENCUESTAS INFRAESTRUCTURAS 2015
  post "encuestas_infraestructuras2017/guardar_cantidad_computadoras_con_internet2"
  post "encuestas_infraestructuras2017/guardar_cantidad_computadoras_funcionando2"
  post "encuestas_infraestructuras2017/guardar_cantidad_computadoras_con_internet"
  post "encuestas_infraestructuras2017/guardar_cantidad_computadoras_no_funcionando"
  post "encuestas_infraestructuras2017/guardar_cantidad_computadoras_funcionando"
  post "encuestas_infraestructuras2017/guardar_con_computadoras_con_internet"
  post "encuestas_infraestructuras2017/guardar_con_computadoras"
  post "encuestas_infraestructuras2017/guardar_con_laboratorio_informatica"
  post "encuestas_infraestructuras2017/guardar_tipo_servicio_internet"
  post "encuestas_infraestructuras2017/guardar_con_servicio_internet"
  post "encuestas_infraestructuras2017/guardar_estado_obra"
  post "encuestas_infraestructuras2017/guardar_cantidad_aulas"
  post "encuestas_infraestructuras2017/guardar_intervencion"
  post "encuestas_infraestructuras2017/guardar_infraestructura_espacio"
  post "encuestas_infraestructuras2017/guardar_periodo"
  post "encuestas_infraestructuras2017/guardar_responsable_intervencion"
  get "encuestas_infraestructuras2017/eliminar_edilicia"
  get "encuestas_infraestructuras2017/agregar_edilicias"
  post "encuestas_infraestructuras2017/guardar_obra_construccion_2013_2017"
  post "encuestas_infraestructuras2017/guardar_cantidad_aulas_clausuradas"
  post "encuestas_infraestructuras2017/guardar_con_aulas_clausuradas"
  post "encuestas_infraestructuras2017/guardar_cantidad_aulas_sin_uso"
  post "encuestas_infraestructuras2017/guardar_cantidad_aulas_en_uso"
  get "encuestas_infraestructuras2017/detalles"
  post "encuestas_infraestructuras2017/lista"
  get "encuestas_infraestructuras2017/lista"
  get "encuestas_infraestructuras2017/index"

  #OFERTAS EDUCATIVAS RESUMEN POR SUPERVISIONES
  
  get "ofertas_educativas_supervisores/index"
  get 'ofertas_educativas_supervisores/ofertas_educativas_lista'
  get 'ofertas_educativas_supervisores/ofertas_educativas_detalle'
    
  #RUTAS BECAS SEGUN INDICE DE POBREZA
  get 'informes_avances/emitir_informe_servidor_v2'
  get 'informes_avances/emitir_informe_servidor'
  get 'becas_indices/becas_indices'
  post 'becas_indices/becas_lista'
  get 'becas_indices/becas_lista'
  get "becas_indices/mostrar_formulario"
  get "becas_indices/index"
  get "becas_indices/descalificar_postulante"
  post "becas_indices/confirmar_datos"
  get "becas_indices/abrir_informe_nomina_pago_ampliacion"
  post "becas_indices/abrir_informe_nomina_pago_ampliacion"
   get "becas_indices/informe_nomina_pago_ampliacion"
  post "becas_indices/informe_nomina_pago_ampliacion"
  
  
  
  #CONFIRMACIONES_ALIMENTICIAS
  get "confirmaciones_alimenticias/agregar"
  post "confirmaciones_alimenticias/guardar"
  post "confirmaciones_alimenticias/lista"
  get "confirmaciones_alimenticias/lista"
  get "confirmaciones_alimenticias/index"
  

#DESEMBOLSOS A INSTITUCIONES  
  get 'desembolsos_instituciones/index'
  get 'desembolsos_instituciones/lista'
  post 'desembolsos_instituciones/lista'
  get 'desembolsos_instituciones/desembolsos_detalles'
  post 'desembolsos_instituciones/calculo_desembolso'

  #DESEMBOLSOS PORCENTAJES
  get 'desembolsos_porcentajes/index'
  get 'desembolsos_porcentajes/lista'
  post 'desembolsos_porcentajes/lista'
  get 'desembolsos_porcentajes/agregar'
  get "desembolsos_porcentajes/guardar"
  get 'desembolsos_porcentajes/editar'
  get "desembolsos_porcentajes/actualizar"
  
  #INSCRIPCIONES INCLUSIVAS
  post "inscripciones_inclusivas/lista_v2"
  get "inscripciones_inclusivas/lista_v2"
  get "inscripciones_inclusivas/index"
  get "inscripciones_inclusivas/matriculaciones_detalles"
  post "inscripciones_inclusivas/cambiar_estado_repitente_a_automatica"
  post "inscripciones_inclusivas/cambiar_estado_desmatriculado_a_regular"
  post "inscripciones_inclusivas/cambiar_estado_regular_a_desmatriculado"
  post "inscripciones_inclusivas/cambiar_estado_automatico_a_repitente"
  post "inscripciones_inclusivas/cambiar_estado_regular_a_automatico"
  post "inscripciones_inclusivas/cambiar_estado_automatico_a_regular"
  post "inscripciones_inclusivas/cambiar_estados_automaticos_a_regulares"
  get "inscripciones_inclusivas/eliminar"
  get "inscripciones_inclusivas/agregar"
  get "inscripciones_inclusivas/cookies_deshabilitada"
  get "inscripciones_inclusivas/obtener_servicios"
  get "inscripciones_inclusivas/obtener_localidades"
  get "inscripciones_inclusivas/obtener_modalidades_niveles"
  get "inscripciones_inclusivas/obtener_niveles_modalidades"
  get "inscripciones_inclusivas/obtener_especialidades"
  get "inscripciones_inclusivas/obtener_cursos2"
  get "inscripciones_inclusivas/obtener_cursos"
  get "inscripciones_inclusivas/buscar_persona_v2"
  get "inscripciones_inclusivas/buscar_persona"
  get "inscripciones_inclusivas/buscar_ofertas_educativas_localidades"
  get "inscripciones_inclusivas/buscar_ofertas_educativas"
  post "inscripciones_inclusivas/guardar_seccion7"
  post "inscripciones_inclusivas/guardar_seccion6"
  post "inscripciones_inclusivas/guardar_seccion5"
  post "inscripciones_inclusivas/guardar_seccion4"
  post "inscripciones_inclusivas/guardar_seccion3"
  post "inscripciones_inclusivas/guardar_seccion2"
  post "inscripciones_inclusivas/guardar_seccion1"
  get "inscripciones_inclusivas/abrir_seccion"
  post "inscripciones_inclusivas/listar_servicios"
  get "inscripciones_inclusivas/listar_servicios"
  post "inscripciones_inclusivas/actualizar_servicios"
  post "inscripciones_inclusivas/actualizar_servicios_iniciales"
  get "inscripciones_inclusivas/listar_servicios_iniciales"
  post "inscripciones_inclusivas/listar_servicios_iniciales"
  get "inscripciones_inclusivas/eliminar_inicial"

  post "inscripciones_inclusivas/guardar"
  get "inscripciones_inclusivas/eliminar"
  get "inscripciones_inclusivas/editar"
  post "inscripciones_inclusivas/actualizar"
  get "inscripciones_inclusivas/index"
  get "inscripciones_inclusivas/procesos_relacionados"
  post "inscripciones_inclusivas/anular_matricula"
  get "inscripciones_inclusivas/anular_matricula"
  get "inscripciones_inclusivas/agregar_motivo_anulacion_matricula"

  post "inscripciones_inclusivas/promocionar_inclusiva"

  


  #FORMULARIO RUE 
  get "inscripciones_inclusivas/editar_seccion7"
  post "inscripciones_inclusivas/actualizar_seccion7"
  get "inscripciones_inclusivas/editar_seccion6"
  post "inscripciones_inclusivas/actualizar_seccion6"
  get "inscripciones_inclusivas/editar_seccion5"
  post "inscripciones_inclusivas/actualizar_seccion5"
  get "inscripciones_inclusivas/editar_seccion4"
  post "inscripciones_inclusivas/actualizar_seccion4"
  get "inscripciones_inclusivas/editar_seccion3"
  post "inscripciones_inclusivas/actualizar_seccion3"
  get "inscripciones_inclusivas/editar_seccion2"
  post "inscripciones_inclusivas/actualizar_seccion2"

  get "inscripciones_inclusivas/mostrar_mas_opciones_inclusiva"
  post "inscripciones_inclusivas/mostrar_mas_opciones_inclusiva"

 #fFORMULARIO 3
  get "inscripciones_inclusivas/editar_inscripcion_inclusiva_detalle_documento"
  post "inscripciones_inclusivas/actualizar_inscripcion_inclusiva_detalle_documento"


  #TRASLADOS ESTUDIANTES
  get "traslados_estudiantes/buscar_ofertas"
  post "traslados_estudiantes/cambiar_estado_confirmado_a_anulado"
  post "traslados_estudiantes/cambiar_estado_solicitado_a_cancelado"
  get "traslados_estudiantes/buscar_matriculacion_actual_v2"
  post "traslados_estudiantes/cambiar_estado_solicitado_a_confirmado"
  get "traslados_estudiantes/buscar_ofertas_educativas"
  get "traslados_estudiantes/agregar"
  post "traslados_estudiantes/guardar"
  get "traslados_estudiantes/traslados_estudiantes"
  get "traslados_estudiantes/buscar_persona_v2"
  get "traslados_estudiantes/buscar_matriculacion_actual"
  get "traslados_estudiantes/buscar_persona"
  post "traslados_estudiantes/lista"
  get "traslados_estudiantes/lista"
  get "traslados_estudiantes/index"
  get "traslados_estudiantes/eliminar"
  get "traslados_estudiantes/traslado_origen_destino"
 

  #INFRAESTRUCTURAS FISCALIZACIONES
  post "infraestructuras_fiscalizaciones/guardar_coordenadas"
  get "infraestructuras_fiscalizaciones/eliminar_adjunto"
  post "infraestructuras_fiscalizaciones/guardar_adjunto"
  get "infraestructuras_fiscalizaciones/agregar_adjunto"
  get "infraestructuras_fiscalizaciones/adjuntos"
  post "infraestructuras_fiscalizaciones/confirmar_instalacion_electrica_ventilador"
  post "infraestructuras_fiscalizaciones/confirmar_instalacion_electrica_toma"
  post "infraestructuras_fiscalizaciones/confirmar_instalacion_electrica_llave"
  post "infraestructuras_fiscalizaciones/confirmar_cantidad_foco_comun"
  post "infraestructuras_fiscalizaciones/confirmar_cantidad_fluorescente"
  post "infraestructuras_fiscalizaciones/confirmar_piso_apariencia_roto"
  post "infraestructuras_fiscalizaciones/confirmar_piso_apariencia_hundimiento"
  post "infraestructuras_fiscalizaciones/confirmar_piso_apariencia"
  post "infraestructuras_fiscalizaciones/confirmar_piso_tipo"
  post "infraestructuras_fiscalizaciones/confirmar_pilares_humedad"
  post "infraestructuras_fiscalizaciones/confirmar_pilares_rotura"
  post "infraestructuras_fiscalizaciones/confirmar_pilares_deformaciones"
  post "infraestructuras_fiscalizaciones/confirmar_pilares_revoque"
  post "infraestructuras_fiscalizaciones/confirmar_pilares_pintura"
  post "infraestructuras_fiscalizaciones/confirmar_paredes_revoque"
  post "infraestructuras_fiscalizaciones/confirmar_paredes_pintura"
  post "infraestructuras_fiscalizaciones/confirmar_paredes_fisuras_inclinadas"
  post "infraestructuras_fiscalizaciones/confirmar_paredes_fisuras_rectas"
  post "infraestructuras_fiscalizaciones/confirmar_techo_goteras"
  post "infraestructuras_fiscalizaciones/confirmar_techo_humedad"
  post "infraestructuras_fiscalizaciones/confirmar_techo_tipo_material"
  post "infraestructuras_fiscalizaciones/confirmar_techo_pintura"
  post "infraestructuras_fiscalizaciones/confirmar_techo_deformaciones"
  post "infraestructuras_fiscalizaciones/confirmar_observacion"
  post "infraestructuras_fiscalizaciones/confirmar_infraestructura_espacio"
  post "infraestructuras_fiscalizaciones/confirmar_orden"
  post "infraestructuras_fiscalizaciones/confirmar_estado_tablero"
  post "infraestructuras_fiscalizaciones/confirmar_estado_acometida"
  get "infraestructuras_fiscalizaciones/eliminar_detalle"
  get "infraestructuras_fiscalizaciones/agregar_detalle"
  get "infraestructuras_fiscalizaciones/detalles"
  post "infraestructuras_fiscalizaciones/lista"
  get "infraestructuras_fiscalizaciones/lista"
  get "infraestructuras_fiscalizaciones/index"

  #ESTUDIANTES AUTORIZACIONES
  post "estudiantes_autorizaciones/autorizar"
  get "estudiantes_autorizaciones/estudiantes_autorizaciones"
  post "estudiantes_autorizaciones/lista"
  get "estudiantes_autorizaciones/lista"
  get "estudiantes_autorizaciones/index"
  get "estudiantes_autorizaciones/matriculaciones_detalles"

  
    #ESTUDIANTES AUTORIZACIONES INSCRIPCIONES
  post "estudiantes_autorizaciones_inscripciones/autorizar"
  get "estudiantes_autorizaciones_inscripciones/estudiantes_autorizaciones"
  post "estudiantes_autorizaciones_inscripciones/lista"
  get "estudiantes_autorizaciones_inscripciones/lista"
  get "estudiantes_autorizaciones_inscripciones/index"
  get "estudiantes_autorizaciones_inscripciones/inscripciones_detalles"
  
  
  
  
  #ASISTENCIAS MASIVAS
  get 'asistencias_masiva/index'
  post 'asistencias_masiva/lista'
  get 'asistencias_masiva/agregar'
  post 'asistencias_masiva/agregar'
  get 'asistencias_masiva/download_excel'
  post 'asistencias_masiva/upload_excel'
  get 'asistencias_masiva/enviar'
  get 'asistencias_masiva/guardar'

  #ASISTENCIAS
  get 'asistencias/index'
  post 'asistencias/lista'
  get 'asistencias/agregar'
  post 'asistencias/agregar'
  post 'asistencias/crear'
  get 'asistencias/confirmar'
  post 'asistencias/guardar'
  get 'asistencias/obtener_localidades'
  get 'asistencias/buscar_ofertas_educativas_localidades'
  get 'asistencias/buscar_ofertas_educativas'
  get 'asistencias/obtener_cursos'
  get 'asistencias/obtener_cursos2'
  get 'asistencias/obtener_especialidades'
  get 'asistencias/obtener_modalidades_niveles'
  get 'asistencias/buscar_establecimientos'  
  get 'asistencias/index_consulta'
  post 'asistencias/lista_consulta'
  get 'asistencias/lista_consulta'
  get 'asistencias/index_consulta_media'
  post 'asistencias/lista_consulta_media'
  get 'asistencias/lista_consulta_media'
  get 'asistencias/index_consulta_basica_tercer_ciclo'
  post 'asistencias/lista_consulta_basica_tercer_ciclo'
  get 'asistencias/lista_consulta_basica_tercer_ciclo'

  #INFORMES
  get 'informes/emitir_informe_servidor_v2'
  get 'informes/emitir_informe_servidor'
  get 'informes/index'
  get 'informes_directores/index'
  get 'informes_directores/lista'
  get 'informes_supervisores/index'
  get 'informes_supervisores/lista'
  post 'informes_supervisores/lista'
  get 'informes/abrir_informe_cobertura_departamento'
  post 'informes/abrir_informe_cobertura_departamento'
  get 'informes/abrir_informe_cobertura_distrito'
  post 'informes/abrir_informe_cobertura_distrito'
  get 'informes/abrir_informe_cobertura_sector'
  post 'informes/abrir_informe_cobertura_sector'
  post 'informes/emitir_certificado_de_estudio'
  get 'informes/emitir_certificado_de_estudio'
  post 'informes/emitir_certificado_de_estudio_reconocimiento'
  get 'informes/emitir_certificado_de_estudio_reconocimiento'
  post 'informes/emitir_certificado_de_estudio_nautilus'
  get 'informes/emitir_certificado_de_estudio_nautilus'
  get 'informes_directores/abrir_informe_matriculados'
  post 'informes_directores/abrir_informe_matriculados'
  get 'informes_inclusivas/index'
  get 'informes_inclusivas/abrir_informe_inclusiva_matriculados'
  post 'informes_inclusivas/abrir_informe_inclusiva_matriculados'
  get 'informes_inclusivas/abrir_informe_inclusiva_matriculados_genero'
  post 'informes_inclusivas/abrir_informe_inclusiva_matriculados_genero'
  get 'informes_inclusivas/abrir_informe_inclusiva_inscriptos'
  post 'informes_inclusivas/abrir_informe_inclusiva_inscriptos'
  get 'informes_inclusivas/abrir_informe_inclusiva_inscriptos_genero'
  post 'informes_inclusivas/abrir_informe_inclusiva_inscriptos_genero'
  get 'informes_inclusivas/abrir_informe_inclusiva_discapacidad'
  post 'informes_inclusivas/abrir_informe_inclusiva_discapacidad'
  get 'informes_inclusivas/abrir_informe_inclusiva_discapacidad1'
  post 'informes_inclusivas/abrir_informe_inclusiva_discapacidad1'
  get 'informes_inclusivas/abrir_informe_inclusiva_discapacidad2'
  post 'informes_inclusivas/abrir_informe_inclusiva_discapacidad2'
  get 'informes/abrir_informe_rendimiento_escolar_eeb'
  post 'informes/abrir_informe_rendimiento_escolar_eeb' 
  get 'informes/abrir_informe_rendimiento_escolar_eeb_xls'
  post 'informes/abrir_informe_rendimiento_escolar_eeb_xls'

  get 'informes/abrir_informe_matriculacion_media'
  post 'informes/abrir_informe_matriculacion_media' 
  get 'informes/abrir_informe_matriculacion_media_xls'
  post 'informes/abrir_informe_matriculacion_media_xls' 
  get 'informes/abrir_informe_matriculacion_basica'
  post 'informes/abrir_informe_matriculacion_basica' 
  get 'informes/abrir_informe_matriculacion_basica_xls'
  post 'informes/abrir_informe_matriculacion_basica_xls' 
  get 'informes/abrir_informe_resumen_matriculacion_em'
  post 'informes/abrir_informe_resumen_matriculacion_em' 
  get 'informes/abrir_informe_resumen_matriculacion_em_xls'
  post 'informes/abrir_informe_resumen_matriculacion_em_xls' 

  post 'informes/emitir_certificado_de_estudio_mecatronica'
  get 'informes/emitir_certificado_de_estudio_mecatronica'  
  
  #INFORMES AVANCES
  get 'informes_avances/emitir_informe_servidor_v2'
  get 'informes_avances/emitir_informe_servidor'
  get 'informes_avances/index'
  get 'informes_avances/abrir_informe_avance_distrito'
  post 'informes_avances/abrir_informe_avance_distrito'
  get 'informes_avances/abrir_informe_avance_distrito_servicio'
  post 'informes_avances/abrir_informe_avance_distrito_servicio'
  get 'informes_avances/abrir_informe_avance_xls'
  post 'informes_avances/abrir_informe_avance_xls' 
  get 'informes_avances/abrir_informe_avance_servicio_xls'
  post 'informes_avances/abrir_informe_avance_servicio_xls'
  get 'informes_avances/abrir_informe_avance_distrito_inicial'
  post 'informes_avances/abrir_informe_avance_distrito_inicial'
  get 'informes_avances/abrir_informe_avance_inicial_xls'
  post 'informes_avances/abrir_informe_avance_inicial_xls'
  get 'informes_avances/abrir_informe_avance_distrito_gestion_oficial'
  post 'informes_avances/abrir_informe_avance_distrito_gestion_oficial'
  get 'informes_avances/abrir_informe_avance_distrito_gestion_oficial_xls'
  post 'informes_avances/abrir_informe_avance_distrito_gestion_oficial_xls'
   get 'informes_avances/abrir_informe_avance_destinatario_gestion_oficial'
  post 'informes_avances/abrir_informe_avance_destinatario_gestion_oficial'
  get 'informes_avances/abrir_informe_avance_destinatario_gestion_oficial_xls'
  post 'informes_avances/abrir_informe_avance_destinatario_gestion_oficial_xls'


  #MATRICULACIONES MASIVAS
  get 'matriculaciones_masiva/agregar'
  get 'matriculaciones_masiva/lista'
  post 'matriculaciones_masiva/lista'
  get 'matriculaciones_masiva/index'
  get 'matriculaciones_masiva/download_excel'
  post 'matriculaciones_masiva/upload_excel'
  get 'matriculaciones_masiva/guardar'
  get 'matriculaciones_masiva/enviar'
  get 'matriculaciones_masiva/excepciones' 
  

  #HORAS CATEDRAS
  get "horas_catedras/cookies_deshabilitada"
  post "horas_catedras/guardar_seccion1"
  get "horas_catedras/abrir_seccion"
  post "horas_catedras/lista"
  get "horas_catedras/lista"
  get "horas_catedras/agregar"
  post "horas_catedras/guardar"
  get "horas_catedras/eliminar"
  get "horas_catedras/editar"
  get "horas_catedras/index"
  get 'horas_catedras/confirmar'
  get "horas_catedras/vista"
  get "horas_catedras/abrir_ver"
  get "horas_catedras/ver"
  post "horas_catedras/ver_seccion1"
  
  #ASISTENCIAS MASIVAS
  get 'asistencias_masiva/index'
  post 'asistencias_masiva/lista'
  get 'asistencias_masiva/agregar'
  post 'asistencias_masiva/agregar'
  get 'asistencias_masiva/download_excel'
  post 'asistencias_masiva/upload_excel'
  get 'asistencias_masiva/enviar'
  get 'asistencias_masiva/guardar'

  #NOTAS
  get 'notas/index'
  get 'notas/lista'
  post 'notas/lista'
  get 'notas/agregar'
  post 'notas/agregar'
  get 'notas/ver'
  post 'notas/ver'
  get 'notas/confirmar'
  post 'notas/guardar'
  
  #NOTAS POR ALUMNO
  get 'notas/index_por_alumno'
  get 'notas/lista_por_alumno'
  post 'notas/lista_por_alumno'
  get 'notas/agregar_por_alumno'
  post 'notas/agregar_por_alumno'
  get 'notas/ver_por_alumno'
  post 'notas/ver_por_alumno'
  get 'notas/confirmar_por_alumno'
  post 'notas/guardar_por_alumno'
  
  #NOTAS MASIVA
  get 'notas_masiva/index'
  get 'notas_masiva/lista'
  post 'notas_masiva/lista'
  get 'notas_masiva/agregar'
  post 'notas_masiva/agregar'
  get 'notas_masiva/download_excel'
  post 'notas_masiva/upload_excel'
  get 'notas_masiva/enviar'
  get 'notas_masiva/guardar'
  
  #NOTAS NIVELES
  get 'notas_niveles/index'
  get 'notas_niveles/lista'
  post 'notas_niveles/lista'
  get 'notas_niveles/agregar'
  post 'notas_niveles/guardar'
  get 'notas_niveles/editar'
  post 'notas_niveles/actualizar'
  get 'notas_niveles/eliminar'
  get 'notas_niveles/obtener_modalidades_educativas'
  get 'notas_niveles/obtener_etapas_evaluacion'
  get 'notas_niveles/obtener_cursos'
  
  #NOTAS RESOLUCIONES
  get 'notas_resoluciones/index'
  get 'notas_resoluciones/lista'
  post 'notas_resoluciones/lista'
  get 'notas_resoluciones/agregar'
  post 'notas_resoluciones/guardar'
  get 'notas_resoluciones/editar'
  get 'notas_resoluciones/disciplinas'
  get 'notas_resoluciones/agregar_disciplina'
  post 'notas_resoluciones/guardar_disciplina'
  get 'notas_resoluciones/eliminar_disciplina'
  get 'notas_resoluciones/eliminar'
  get 'notas_resoluciones/editar'
  post 'notas_resoluciones/actualizar'
  get 'notas_resoluciones/obtener_modalidades_educativas'
  get 'notas_resoluciones/obtener_especialidades'
  get 'notas_resoluciones/buscar_estudiante'
  get 'notas_resoluciones/agregar_resolucion'

  #PROGRAMAS EDUCATIVOS
  get 'programas_educativos/index'
  get 'programas_educativos/lista'
  post 'programas_educativos/lista'
  get "programas_educativos/agregar"
  post "programas_educativos/guardar"
  get "programas_educativos/eliminar"
  get "programas_educativos/editar"
  post "programas_educativos/actualizar"
  get 'programas_educativos/programas_unidades'
  get 'programas_educativos/agregar_programa_unidad'
  post 'programas_educativos/guardar_programa_unidad'
  get 'programas_educativos/eliminar_programa_unidad'
  get 'programas_educativos/unidades_temas'
  get 'programas_educativos/agregar_unidad_tema'
  post 'programas_educativos/guardar_unidad_tema'
  get 'programas_educativos/eliminar_unidad_tema'

  #CONTENIDOS PROGRAMATICOS
  get 'contenidos_programaticos/index'
  post 'contenidos_programaticos/lista'
  get 'contenidos_programaticos/agregar'
  post 'contenidos_programaticos/agregar'
  post 'contenidos_programaticos/guardar'
  get 'contenidos_programaticos/programas_unidades'
  get 'contenidos_programaticos/agregar_programa_unidad'
  post 'contenidos_programaticos/guardar_programa_unidad'
  get 'contenidos_programaticos/eliminar_programa_unidad'
  get 'contenidos_programaticos/unidades_temas'
  get 'contenidos_programaticos/agregar_unidad_tema'
  post 'contenidos_programaticos/guardar_unidad_tema'
  get 'contenidos_programaticos/eliminar_unidad_tema'
  get 'contenidos_programaticos/contenidos_unidades'
  get 'contenidos_programaticos/agregar_contenido_unidad'
  post 'contenidos_programaticos/guardar_contenido_unidad'
  get 'contenidos_programaticos/eliminar_contenido_unidad'
  get 'contenidos_programaticos/contenidos_temas'
  get 'contenidos_programaticos/agregar_contenido_tema'
  post 'contenidos_programaticos/guardar_contenido_tema'
  get 'contenidos_programaticos/eliminar_contenido_tema'
  get 'contenidos_programaticos/confirmar'
  get 'contenidos_programaticos/editar_contenido_tema'
  post 'contenidos_programaticos/actualizar_contenido_tema'
  get 'contenidos_programaticos/editar_contenido_unidad'
  post 'contenidos_programaticos/actualizar_contenido_unidad'

  #NIVELES ETAPAS
  get 'niveles_etapas/index'
  get 'niveles_etapas/lista'
  post 'niveles_etapas/lista'
  get 'niveles_etapas/agregar'
  post 'niveles_etapas/guardar'
  get 'niveles_etapas/editar'
  post 'niveles_etapas/actualizar'
  get 'niveles_etapas/eliminar'

  #PLANES DE ESTUDIOS
  get 'planes_estudios/index'
  get 'planes_estudios/lista'
  post 'planes_estudios/lista'
  get 'planes_estudios/agregar'
  post 'planes_estudios/guardar'
  get 'planes_estudios/editar'
  post 'planes_estudios/actualizar'
  get 'planes_estudios/eliminar'
  get 'planes_estudios/planes_detalles'
  get 'planes_estudios/agregar_plan_detalle'
  post 'planes_estudios/guardar_plan_detalle'
  get 'planes_estudios/eliminar_plan_detalle'
  get 'planes_estudios/programas_unidades'
  get 'planes_estudios/agregar_programa_unidad'
  post 'planes_estudios/guardar_programa_unidad'
  get 'planes_estudios/eliminar_programa_unidad'
  get 'planes_estudios/unidades_temas'
  get 'planes_estudios/agregar_unidad_tema'
  post 'planes_estudios/guardar_unidad_tema'
  get 'planes_estudios/eliminar_unidad_tema'
  get 'planes_estudios/obtener_carreras_titulos'
  get 'planes_estudios/obtener_carreras_enfasis'
  get 'planes_estudios/obtener_modalidades_niveles'
  get 'planes_estudios/buscar_areas_academicas'
  get 'planes_estudios/buscar_disciplinas'
  get 'planes_estudios/buscar_ofertas'
  get 'planes_estudios/obtener_cursos'
  get 'planes_estudios/editar_plan_estudio'
  post 'planes_estudios/actualizar_plan_estudio'
  get 'planes_estudios/desvincular_oferta_educativa'
  
  #MATRICULACIONES
  get "matriculaciones/editar_seccion7"
  post "matriculaciones/actualizar_seccion7"
  get "matriculaciones/editar_seccion6"
  post "matriculaciones/actualizar_seccion6"
  get "matriculaciones/editar_seccion5"
  post "matriculaciones/actualizar_seccion5"
  get "matriculaciones/editar_seccion4"
  post "matriculaciones/actualizar_seccion4"
  get "matriculaciones/editar_seccion3"
  post "matriculaciones/actualizar_seccion3"
  get "matriculaciones/editar_seccion2"
  post "matriculaciones/actualizar_seccion2"
  post 'matriculaciones/matriculaciones_detalles_actualizar'
  get 'matriculaciones/matriculaciones_detalles_editar'
  post "matriculaciones/promocionar_otras_secciones"
  get "matriculaciones/promocionar_otras_secciones"
  post "matriculaciones/promocionar_curso"
  post "matriculaciones/actualizar_plan_optativo"
  get "matriculaciones/editar_plan_optativo"
  get "matriculaciones/eliminar_plan_optativo"
  post "matriculaciones/guardar_plan_optativo"
  get "matriculaciones/agregar_plan_optativo"
  get "matriculaciones/mostrar_plan_estudio"
  get "matriculaciones/editar_oferta_educativa_nombre_institucion"
  post "matriculaciones/actualizar_oferta_educativa_nombre_institucion"
  post "matriculaciones/cambiar_estado_repitente_a_automatica"
  post "matriculaciones/cambiar_estado_desmatriculado_a_regular"
  post "matriculaciones/cambiar_estado_regular_a_desmatriculado"
  post "matriculaciones/cambiar_estado_automatico_a_repitente"
  post "matriculaciones/cambiar_estado_regular_a_automatico"
  post "matriculaciones/cambiar_estado_automatico_a_regular"
  post "matriculaciones/cambiar_estados_automaticos_a_regulares"
  post "matriculaciones/cambiar_estado_anulado_a_automatico"
  get "matriculaciones/matriculaciones_detalles"
  get "matriculaciones/cookies_deshabilitada"
  get "matriculaciones/obtener_servicios"
  get "matriculaciones/obtener_localidades"
  get "matriculaciones/obtener_modalidades_niveles"
  get "matriculaciones/obtener_niveles_modalidades"
  get "matriculaciones/obtener_especialidades"
  get "matriculaciones/obtener_cursos2"
  get "matriculaciones/obtener_cursos"
  get "matriculaciones/buscar_persona_v2"
  get "matriculaciones/buscar_persona"
  get "matriculaciones/buscar_ofertas_educativas_localidades"
  get "matriculaciones/buscar_ofertas_educativas"
  post "matriculaciones/guardar_seccion7"
  post "matriculaciones/guardar_seccion6"
  post "matriculaciones/guardar_seccion5"
  post "matriculaciones/guardar_seccion4"
  post "matriculaciones/guardar_seccion3"
  post "matriculaciones/guardar_seccion2"
  post "matriculaciones/guardar_seccion1"
  get "matriculaciones/abrir_seccion"
  post "matriculaciones/lista"
  get "matriculaciones/lista"
  post "matriculaciones/lista_v2"
  get "matriculaciones/lista_v2"
  get "matriculaciones/agregar"
  post "matriculaciones/guardar"
  get "matriculaciones/eliminar"
  get "matriculaciones/editar"
  post "matriculaciones/actualizar"
  get "matriculaciones/index"
  get "matriculaciones/procesos_relacionados"
  post "matriculaciones/anular_matricula"
  get "matriculaciones/anular_matricula"
  get "matriculaciones/agregar_motivo_anulacion_matricula"
  get "matriculaciones/editar_persona"
  post "matriculaciones/actualizar_persona"
  get "matriculaciones/editar_datos_establecimiento"
  post "matriculaciones/guardar_datos_establecimiento"
  get "matriculaciones/guardar_matriculacion_lengua"
  get "matriculaciones/editar_datos_institucion"
  post "matriculaciones/guardar_datos_institucion"
  get "matriculaciones/matriculaciones_evaluaciones"
  get "matriculaciones/agregar_matriculaciones_evaluaciones"
  post "matriculaciones/guardar_matriculaciones_evaluaciones"
  get "matriculaciones/editar_matriculacion_evaluacion"
  post "matriculaciones/actualizar_matriculacion_evaluacion"
  get "matriculaciones/mostrar_mas_opciones"
  post "matriculaciones/mostrar_mas_opciones"
  get "matriculaciones/mostrar_seccion2"  
  get "matriculaciones/agregar_plan_optativo"
  get "matriculaciones/editar_matriculacion_seccion"
  post "matriculaciones/actualizar_matriculacion_seccion"
  get "matriculaciones/asistencia_estudiante"
  get "matriculaciones/asistencia_inclusiva_estudiante"
  
  #MATRICULACIONES MOVIL
  get "matriculaciones_movil/index"
  #get "matriculaciones_movil/index_v2"
  post "matriculaciones_movil/lista"
  get "matriculaciones_movil/lista"
  post "matriculaciones_movil/lista_v2"
  get "matriculaciones_movil/lista_v2"
  get "matriculaciones_movil/matriculaciones_detalles"
  get "matriculaciones_movil/mostrar_plan_estudio"
  post 'matriculaciones/actualizar_estado_eeb'
  post 'matriculaciones/actualizar_estado_em' 
  
  #MATRICULACIONES ASISTENCIAS_BASICAS
  get "asistencias_basicas/asistencias_basicas"
  get "asistencias_basicas/asistencia_estudiante"
  get "asistencias_basicas/generar_asistencia"
  post "asistencias_basicas/actualizar_asistencia"
  post "asistencias_basicas/actualizar_justificacion"
  post "asistencias_basicas/actualizar_observacion_asistencia"
 
#MATRICULACIONES ASISTENCIAS_INCLUSIVAS
  get "asistencias_inclusivas/asistencias_inclusivas"
  get "asistencias_inclusivas/asistencia_inclusiva_estudiante"
  get "asistencias_inclusivas/generar_asistencia_inclusiva"
  post "asistencias_inclusivas/actualizar_asistencia_inclusiva"
  post "asistencias_inclusivas/actualizar_justificacion_inclusiva"
  post "asistencias_inclusivas/actualizar_observacion_asistencia_inclusiva"
   
  #OFERTAS EDUCATIVAS
  get 'ofertas_educativas/oferta_educativa_autoridad_agregar'
  post 'ofertas_educativas/oferta_educativa_autoridad_guardar'
  get 'ofertas_educativas/oferta_educativa_autoridad_editar'
  post 'ofertas_educativas/oferta_educativa_autoridad_actualizar'
  get 'ofertas_educativas/oferta_educativa_autoridad_eliminar'
  get 'ofertas_educativas/ofertas_educativas_autoridades'
  get "ofertas_educativas/index"
  get 'ofertas_educativas/ofertas_educativas_lista'
  get 'ofertas_educativas/ofertas_educativas_usuarios'
  get 'ofertas_educativas/editar_usuario_oferta_educativa'
  get 'ofertas_educativas/agregar_usuario_oferta_educativa'
  post 'ofertas_educativas/guardar_usuario_oferta_educativa'
  get 'ofertas_educativas/editar_usuario_oferta_educativa'
  post 'ofertas_educativas/actualizar_usuario_oferta_educativa'
  get 'ofertas_educativas/eliminar_usuario_oferta_educativa'
  get 'ofertas_educativas/buscar_persona'
  get 'ofertas_educativas/buscar_usuario'
  get 'ofertas_educativas/buscar_usuario_turno'
  get 'ofertas_educativas/buscar_usuario_turno_prueba'
  get 'ofertas_educativas/buscar_usuario_perfil'
  get 'ofertas_educativas/eliminar'

  #/---------------------------------------------------------------/
   #confirmaciones_alimentacion_institucion Escolar
  get "confirmaciones_alimentacion_institucion/lista"
  post "confirmaciones_alimentacion_institucion/lista"
  get "confirmaciones_alimentacion_institucion/index" 
  get "confirmaciones_alimentacion_institucion/detalle" 
  post "confirmaciones_alimentacion_institucion/detalle" 
  get "confirmaciones_alimentacion_institucion/confirmar_alimentacion" 
  post "confirmaciones_alimentacion_institucion/confirmar_alimentacion"
  get "confirmaciones_alimentacion_institucion/desconfirmar_alimentacion" 
  post "confirmaciones_alimentacion_institucion/desconfirmar_alimentacion"
  get "confirmaciones_alimentacion_institucion/control_sanitario" 
  post "confirmaciones_alimentacion_institucion/control_sanitario"
  post "confirmaciones_alimentacion_institucion/guardar_control_sanitario"
  get "confirmaciones_alimentacion_institucion/verificar_confirmaciones" 
  get "confirmaciones_alimentacion_institucion/verificar_confirmaciones_supervision" 
  #/---------------------------------------------------------------/
   #confirmaciones_alimentacion_supervisores
  get "confirmaciones_alimentacion_supervisores/lista"
  post "confirmaciones_alimentacion_supervisores/lista"
  get "confirmaciones_alimentacion_supervisores/index" 
  get "confirmaciones_alimentacion_supervisores/detalle" 
  post "confirmaciones_alimentacion_supervisores/detalle"
  get "confirmaciones_alimentacion_supervisores/confirmar_alimentacion" 
  post "confirmaciones_alimentacion_supervisores/confirmar_alimentacion"
  get "confirmaciones_alimentacion_supervisores/desconfirmar_alimentacion" 
  post "confirmaciones_alimentacion_supervisores/desconfirmar_alimentacion"
  get "confirmaciones_alimentacion_supervisores/control_sanitario" 
  post "confirmaciones_alimentacion_supervisores/control_sanitario"
  get "confirmaciones_alimentacion_supervisores/confirmar_todo" 
  post "confirmaciones_alimentacion_supervisores/confirmar_todo"
  post 'confirmaciones_alimentacion_supervisores/abrir_informe'
  get 'confirmaciones_alimentacion_supervisores/abrir_informe'

  #/---------------------------------------------------------------/
   #confirmaciones_alimentacion_coordinadores 
  get "confirmaciones_alimentacion_coordinadores/lista"
  post "confirmaciones_alimentacion_coordinadores/lista"
  get "confirmaciones_alimentacion_coordinadores/index" 
  get "confirmaciones_alimentacion_coordinadores/dependencia" 
  post "confirmaciones_alimentacion_coordinadores/dependencia"
  get "confirmaciones_alimentacion_coordinadores/detalle" 
  post "confirmaciones_alimentacion_coordinadores/detalle"
  get "confirmaciones_alimentacion_coordinadores/confirmar_alimentacion" 
  post "confirmaciones_alimentacion_coordinadores/confirmar_alimentacion"
  get "confirmaciones_alimentacion_coordinadores/desconfirmar_alimentacion" 
  post "confirmaciones_alimentacion_coordinadores/desconfirmar_alimentacion"
  get "confirmaciones_alimentacion_coordinadores/control_sanitario" 
  post "confirmaciones_alimentacion_coordinadores/control_sanitario"
  get "confirmaciones_alimentacion_coordinadores/confirmar_todo" 
  post "confirmaciones_alimentacion_coordinadores/confirmar_todo"
  post 'confirmaciones_alimentacion_coordinadores/abrir_informe'
  get 'confirmaciones_alimentacion_coordinadores/abrir_informe'

  #/---------------------------------------------------------------/
   #consulta_direccion_administrativa
   
  get "consultas_alimentacion_escolar/lista"
  post "consultas_alimentacion_escolar/lista"
  get "consultas_alimentacion_escolar/index" 
  get "consultas_alimentacion_escolar/detalle" 
  post "consultas_alimentacion_escolar/detalle"
  get 'consultas_alimentacion_escolar/abrir_informe_autorizacion'
  post 'consultas_alimentacion_escolar/abrir_informe_autorizacion' 
  get 'consultas_alimentacion_escolar/abrir_informe_autorizacion_xls'
  post 'consultas_alimentacion_escolar/abrir_informe_autorizacion_xls' 


 #/---------------------------------------------------------------/
 #    cupos_por_departamentos

  get "cupos_departamentos/index" 
  get "cupos_departamentos/lista"
  post "cupos_departamentos/lista"
  get "cupos_departamentos/editar_cupos"
  get "cupos_departamentos/generar_cupos_departamentos"
  post "cupos_departamentos/actualizar_cupos"
  
 #/---------------------------------------------------------------/
  #Postulaciones Becas Medias
  get "becas_medias/lista"
  post "becas_medias/lista"
  get "becas_medias/index"
  get "becas_medias/matriculaciones_detalles"
  post "becas_medias/seleccionar_postulante"
  post "becas_medias/cancelar_postulante"
  get "becas_medias/postulantes_lista"
  post "becas_medias/postulantes_lista"
  get "becas_medias/postulantes"
  get "becas_medias/mostrar_formulario"
  post "becas_medias/confirmar_datos"
  get "becas_medias/mostrar_responsable"
  post "becas_medias/confirmar_responsable"
  get "becas_medias/agregar_responsable"
  post "becas_medias/guardar_responsable"
  get "becas_medias/buscar_persona"
  get "becas_medias/mostrar_responsable_asignado"
  post "becas_medias/generar_cupos"
  
  
  #Desembolso institución/Confirmación de pagos
  get "pagos_desembolsos_instituciones/lista"
  post "pagos_desembolsos_instituciones/lista"
  get "pagos_desembolsos_instituciones/index"
  get "pagos_desembolsos_instituciones/registrar_pago"
  post "pagos_desembolsos_instituciones/guardar_pago"
  get "pagos_desembolsos_instituciones/mostrar_detalle_pago"
   
  #/---------------------------------------------------------------/
  
  #JURISDICCIONES
  get "jurisdicciones/index"
  get "jurisdicciones/buscar_juridisccion_oferta"

  #DISCIPLINAS
  post "disciplinas/lista"
  get "disciplinas/lista"
  get "disciplinas/agregar"
  post "disciplinas/guardar"
  get "disciplinas/eliminar"
  get "disciplinas/editar"
  post "disciplinas/actualizar"
  get "disciplinas/index"

   #AREAS_ACADEMICAS
  post "areas_academicas/lista"
  get "areas_academicas/lista"
  get "areas_academicas/agregar"
  post "areas_academicas/guardar"
  get "areas_academicas/eliminar"
  get "areas_academicas/editar"
  post "areas_academicas/actualizar"
  get "areas_academicas/index"

   #INFORMES NIVELES
  post "informes_niveles/lista"
  get "informes_niveles/lista"
  get "informes_niveles/index"
   


  #PERSONAS
  post "personas/lista"
  get "personas/lista"
  get "personas/agregar"
  get "personas/agregar_persona_senatics"
  post "personas/guardar"
  post "personas/guardar_persona_senatics"
  get "personas/eliminar"
  get "personas/editar"
  post "personas/actualizar"
  get "personas/index"
  get "personas/mostrar_formulario"
  post "personas/unificar_persona"
  get "personas/obtener_datos"
  get "personas/buscar_persona_senatics"
  #ROLES
  post "roles/lista"
  get "roles/lista"
  get "roles/agregar"
  post "roles/guardar"
  get "roles/eliminar"
  get "roles/editar"
  post "roles/actualizar"
  get "roles/accesos"
  get "roles/agregar_acceso"
  get "roles/guardar_acceso"
  get "roles/eliminar_acceso"
  get "roles/index"

  #CONTROLADORES
  post "controladores/lista"
  get "controladores/lista"
  get "controladores/agregar"
  post "controladores/guardar"
  get "controladores/eliminar"
  get "controladores/editar"
  post "controladores/actualizar"
  get "controladores/acciones"
  get "controladores/agregar_accion"
  post "controladores/guardar_accion"
  get "controladores/eliminar_accion"
  get "controladores/index"

  #Usuarios
  get "usuarios/cambiar_perfil_actual"
  get "usuarios/mi_cuenta"
  post "usuarios/actualizar_mi_cuenta"
  post "usuarios/actualizar_mi_password"
  get "usuarios/perfiles"
  get "usuarios/agregar_perfil"
  get "usuarios/guardar_perfil"
  get "usuarios/eliminar_perfil"
  post "usuarios/actualizar_password"
  get "usuarios/reset_password"
  get "usuarios/perfiles"
  get 'usuarios/index'
  get 'usuarios/lista'
  post 'usuarios/lista'
  get "usuarios/agregar"
  post "usuarios/guardar"
  get "usuarios/eliminar"
  get "usuarios/editar"
  post "usuarios/actualizar"
  get 'usuarios/buscar_persona'
  post 'usuarios/cambiar_estado_usuario'

  #Login
  get 'login' => "usuarios_sessions#new",      :as => :login
  get 'logout' => "usuarios_sessions#destroy", :as => :logout
  post "usuarios_sessions/create"
  get "usuarios_sessions/acceso_denegado"
  get "usuarios_sessions/new"  
  get "usuarios_sessions/mantenimiento"  

  get "principal/buscar_institucion"
  get "principal/buscar_persona"
  get "principal/buscar_usuario"
  post "principal/guardar_recuperar_password"
  get "principal/recuperar_password"
  post "principal/guardar_usuario"
  get "principal/activar_cuenta"
  get "principal/agregar_usuario"
  get "contactos" => "principal#contactos", :as => :contactos
  get "index" => "principal#index", :as => :index
  get "about" => "principal#about", :as => :about
  get "legal" => "principal#legal", :as => :legal
  get "index" => "principal#index", :as => :indexv
	
	

  root 'principal#index'
  
  get "application/autocompletar" => 'application#autocompletar', :as => :autocompletar

    #OFERTAS EDUCATIVAS INCLUSIVAS
  get 'ofertas_educativas_inclusivas/index'
  post 'ofertas_educativas_inclusivas/lista'
  get 'ofertas_educativas_inclusivas/lista'
  post 'ofertas_educativas_inclusivas/abrir_informe'
  get 'ofertas_educativas_inclusivas/abrir_informe'
  
	
    #INFORMACIONES
 
  get "informaciones/index"
  get "informaciones/lista"
  post "informaciones/lista"
	get "informaciones/perfiles"
	get "informaciones/enlaces"
  get "informaciones/agregar"
  post "informaciones/guardar"
	get "informaciones/agregar_enlace"
	get "informaciones/guardar_enlace"
	post "informaciones/guardar_enlace"
	get "informaciones/agregar_perfil"
  get "informaciones/guardar_perfil"
  get "informaciones/eliminar"
  get "informaciones/editar"
  post "informaciones/actualizar"
	get "informaciones/editar_enlace"
	post "informaciones/actualizar_enlace"
  get "informaciones/eliminar_enlace"
  get "informaciones/eliminar_rol"


     #VARIABLES ESTADISTICAS
  get 'variables_estadisticas/index'
  post 'variables_estadisticas/lista'
  get 'variables_estadisticas/lista'
  get 'variables_estadisticas/mostrar_formulario'
  get 'variables_estadisticas/buscar_propietario'
  post 'variables_estadisticas/buscar_propietario'
  post 'variables_estadisticas/confirmar_datos'
  post'variables_estadisticas/detalles_plurigrado'
  get 'variables_estadisticas/detalles_plurigrado'
  get 'variables_estadisticas/obtener_detalles_plurigrado'
  get "variables_estadisticas/agregar"
  post 'variables_estadisticas/guardar'
  get 'variables_estadisticas/eliminar'

    #MATRICULACIONES EXCEPCIONES

  get "matriculaciones_excepciones/index"
  post 'matriculaciones_excepciones/lista'
  get 'matriculaciones_excepciones/lista'
  get "matriculaciones_excepciones/agregar"
  post 'matriculaciones_excepciones/guardar'
  get 'matriculaciones_excepciones/eliminar'
  get 'matriculaciones_excepciones/buscar_persona'
  get "matriculaciones_excepciones/editar"
  post "matriculaciones_excepciones/actualizar"



   

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
