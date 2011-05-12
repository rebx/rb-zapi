
module ZapiDefinition

  MAJORVERS = 1
  MINORVERS = 3
  DEF_NA_USER = 'root'
  DEF_NA_PASSWD = ''
  # LOGIN OR HOSTS OR LOGIN_PASSWORD
  AUTH_STYLE = 'LOGIN'
  SERVER_TYPE = 'FILER'
  # HTTP or NA_SERVER_TRANSPORT_HTTPS
  PROTO_TRANSPORT = 'HTTP'
  NA_NAMESPACE_URI = 'http://www.netapp.com/filer/admin'
  DEF_DOCTYPE = 'file:/etc/netapp_filer.dtd'
  TYPE_URL_HASH = {
    Filer     =>   "/servlets/netapp.servlets.admin.XMLrequest_filer",
    NetCache  =>   "/servlets/netapp.servlets.admin.XMLrequest",
    Agent     =>   "/apis/XMLrequest",
    DFM       =>   "/apis/XMLrequest"
  }
  TYPE_PORT_HASH = {
    Filer     =>    80,
    NetCache  =>    80,
    Agent     =>    4092,
    DFM       =>    8081
  }

  def set defaults

  end

  def set_auth_style(auth_style=AUTH_STYLE)

  end

  def set_proto_trans(proto_trans=PROTO_TRANSPORT)

  end

  def set_server_type(server_type=SERVER_TYPE)

  end


end
