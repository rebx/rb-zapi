
require 'shoulda'
#require_relative '../lib/rb-zapi/zapimeth'
$:.unshift File.dirname(__FILE__) + '/../lib/rb-zapi'
begin
  require 'zapimeth'
rescue LoadError => e
  puts $:
  raise e
end

class TestSetParams < Test::Unit::TestCase

  context "set parameters" do

    setup do
      @obj = Object.new
      @obj.extend(ZapiMethods)
    end

    should "have authentication style defined when style is given" do
      style = 'LOGIN_PASSWORD'
      @obj.set_auth_style(style)
      assert @obj.instance_variable_defined?("@auth_style")
    end

    should "return authentication style when style is given" do
      style = 'LOGIN_PASSWORD'
      @obj.set_auth_style(style)
      assert_equal @obj.instance_variable_get("@auth_style"), style
    end

    should "have protocol transport defined when it is given" do
      proto = 'NA_SERVER_TRANSPORT_HTTPS'
      @obj.set_protocol_transport(proto)
      assert @obj.instance_variable_defined?("@proto_trans")
    end

    should "return protocol transport when it is given" do
      proto = 'NA_SERVER_TRANSPORT_HTTPS'
      @obj.set_protocol_transport(proto)
      assert_equal @obj.instance_variable_get("@proto_trans"), proto
    end

    should "have server type when it is given" do
      type = 'Filer'
      @obj.set_server_type(type)
      assert @obj.instance_variable_defined?("@server_type")
    end

    should "return server type when it is given" do
      type = 'Filer'
      @obj.set_server_type(type)
      assert_equal @obj.instance_variable_get("@server_type"), type
    end
  end

end
