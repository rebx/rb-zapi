
# encoding: utf-8

module ZapiDefinition

  # ZAPI version standards
  MAJORVERS = 1
  MINORVERS = 3
  # User defaults
  DEF_NA_USER = 'root'
  DEF_NA_PASSWD = ''
  # Authentication style
  # LOGIN OR HOSTS OR LOGIN_PASSWORD
  AUTH_STYLE = 'LOGIN'
  SERVER_TYPE = 'Filer'
  # Protocol transport
  # HTTP or NA_SERVER_TRANSPORT_HTTPS
  PROTO_TRANSPORT = 'HTTP'
  # XML header stuff
  NA_NAMESPACE_URI = 'http://www.netapp.com/filer/admin'
  DEF_DOCTYPE = 'file:/etc/netapp_filer.dtd'
  # Filer to URI Mappings
  TYPE_URL_HASH = {
    'Filer'     =>   "/servlets/netapp.servlets.admin.XMLrequest_filer",
    'NetCache'  =>   "/servlets/netapp.servlets.admin.XMLrequest",
    'Agent'     =>   "/apis/XMLrequest",
    'DFM'       =>   "/apis/XMLrequest"
  }
  # Filer to port Mappings
  TYPE_PORT_HASH = {
    'Filer'     =>    80,
    'NetCache'  =>    80,
    'Agent'     =>    4092,
    'DFM'       =>    8081
  }

end
