
require 'shoulda'
require_relative '../lib/rb-zapi/zapi_methods'
require_relative '../lib/rb-zapi/zapi_definition'

class TestSetParams < Test::Unit::TestCase

  context "set parameters" do

    setup do
      @obj = Object.new
      @obj.extend(ZapiMethods)
    end

    # auth_style tests
    should "have authentication style defined when style is given" do
      style = 'LOGIN_PASSWORD'
      @obj.set_auth_style(style)
      assert @obj.instance_variable_defined?("@auth_style")
    end

    should "return authentication style when no style is given" do
      @obj.set_auth_style()
      assert_equal @obj.instance_variable_get("@auth_style"), ZapiDefinition::AUTH_STYLE
    end
    
    should "return authentication style when style is given" do
      style = 'LOGIN_PASSWORD'
      @obj.set_auth_style(style)
      assert_equal @obj.instance_variable_get("@auth_style"), style
    end

    # proto_trans tests
    should "have protocol transport defined when it is given" do
      proto = 'NA_SERVER_TRANSPORT_HTTPS'
      @obj.set_protocol_transport(proto)
      assert @obj.instance_variable_defined?("@proto_trans")
    end

    should "return protocol transport when none is given" do
      @obj.set_protocol_transport()
      assert_equal @obj.instance_variable_get("@proto_trans"), ZapiDefinition::PROTO_TRANSPORT
    end
    
    should "return protocol transport when it is given" do
      proto = 'NA_SERVER_TRANSPORT_HTTPS'
      @obj.set_protocol_transport(proto)
      assert_equal @obj.instance_variable_get("@proto_trans"), proto
    end

    # server_type tests
    should "have server type when it is given" do
      type = 'Filer'
      @obj.set_server_type(type)
      assert @obj.instance_variable_defined?("@server_type")
    end
    
    should "return server type when none is given" do
      @obj.set_server_type()
      assert_equal @obj.instance_variable_get("@server_type"), ZapiDefinition::SERVER_TYPE
    end

    should "return server type when it is given" do
      type = 'Filer'
      @obj.set_server_type(type)
      assert_equal @obj.instance_variable_get("@server_type"), type
    end
    
    # port definition test
    
    should "have port defined when it is given" do
      port = 80
      @obj.set_port(port)
      assert @obj.instance_variable_defined?("@port")
    end
    
    should "have port when it is given" do
      port = 80
      @obj.set_port(port)
      assert_equal @obj.instance_variable_get("@port"), port
    end
    
    should "return port when none is given" do
      @obj.set_port()
      assert_equal @obj.instance_variable_get("@port"), ZapiDefinition::DEFAULT_PORT
    end
  end

end
