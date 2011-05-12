
require 'rb-zapi/zapidef'

class RbZapi
  
  include ZapiDefinition
  
  attr_accessor :server, :na_user, :na_passwd
  
  def initialize(server)
    @server = server
  end
  
end
