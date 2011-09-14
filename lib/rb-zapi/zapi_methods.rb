
# encoding: utf-8

require 'nokogiri'

require_relative 'zapi_definition'

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

  def set_port(port=TYPE_PORT_HASH[@server_type || SERVER_TYPE])
    @port = port
  end

  def build_xml_content(content=nil)
    @xml_content = Nokogiri::XML::Builder.new(:encoding => 'utf-8') { |xml|
      xml.doc.create_internal_subset('html', 'SYSTEM', ZapiDefinition::DEF_DOCTYPE)
      #xml.doc.create_internal_subset('html', 'SYSTEM', ZapiDefinition::DEF_DOCTYPE)
      #xml.netapp.('xmlns' => ZapiDefinition::NA_NAMESPACE_URI).version(ZapiDefinition::MAJOR_VERSION + "." + ZapiDefinition::MINOR_VERSION) {
      xml.netapp('xmlns' => ZapiDefinition::NA_NAMESPACE_URI) {
        xml.netapp.version("#{ZapiDefinition::MAJOR_VERSION}.#{ZapiDefinition::MINOR_VERSION}")

      }
    }
  end
end
