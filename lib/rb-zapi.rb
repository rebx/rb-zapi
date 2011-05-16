
# encoding: utf-8

require 'rb-zapi/zapidef'

class RbZapi

  include ZapiDefinition

  attr_accessor :host, :server, :na_user, :na_passwd, :auth_style, :proto_trans, :server_type
  attr_reader :zapi_uri, :port

  def initialize(server, na_user, na_passwd, auth_style, proto_trans, server_type)
    @server = server
    @na_user = na_user
    @na_passwd = na_passwd
    set_auth_style(auth_style)
    set_proto_trans(proto_trans)
    set_server_type(server_type)
  end

end
