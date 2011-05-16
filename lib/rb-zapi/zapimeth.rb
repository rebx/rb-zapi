
# encoding: utf-8

require_relative 'zapidef'

module ZapiMethods

  include ZapiDefinition

  def set_defaults
    set_auth_style()
    set_proto_trans()
    set_server_type()
  end

  def set_auth_style(auth_style=AUTH_STYLE)
    @auth_style = auth_style
  end

  def set_protocol_transport(proto_trans=PROTO_TRANSPORT)
    @proto_trans = proto_trans
  end

  def set_server_type(server_type=SERVER_TYPE)
    @server_type = server_type if TYPE_PORT_HASH.has_key?(server_type)
  end

end
