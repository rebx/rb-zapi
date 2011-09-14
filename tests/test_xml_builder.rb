
require 'shoulda'
require 'nokogiri'

require_relative '../lib/rb-zapi/zapi_methods'
require_relative '../lib/rb-zapi/zapi_definition'

class TestXMLBuilder < Test::Unit::TestCase

  context "build xml" do

    setup do
      @obj = Object.new()
      @obj.extend(ZapiMethods)
    end

    should "have xml doc given no content" do
      @obj.build_xml_content()
      assert @obj.instance_variable_defined?("@xml_content")
    end
    
    should "have valid xml doc given no content" do
      @obj.build_xml_content()
      assert @
    end

  end
end
