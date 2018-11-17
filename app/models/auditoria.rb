class Auditoria < ActiveRecord::Base

    self.table_name="auditorias_012018"  
    
    establish_connection "DBRUE_AUDITORIAS" 
  attr_accessible :usuario, :usuario_update, :ip, :ip_update, :accion, :tabla, :pista_antes, :pista_despues, :sistema

end