
require 'rb-zapi/zapidef'

class RbZapi

  include ZapiDefinition

  attr_accessor :server, :na_user, :na_passwd, :auth_style, :proto_trans
  attr_reader :zapi_uri

  def initialize(server)
    @server = server
  end

end
