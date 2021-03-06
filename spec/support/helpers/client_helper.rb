def configure_client
  RoyalMailApi::Client.configure do |config|
    config.application_id = ENV['RM_APPLICATION_ID']
    config.username = ENV['RM_USERNAME']
    config.password = ENV['RM_PASSWORD']
    config.adapter = :httpclient
    config.shipping_wsdl = File.join(RoyalMailApi.root, 'tmp', 'wsdl', 'ShippingAPI_V2_0_8.wsdl')
    config.tracking_wsdl = File.join(RoyalMailApi.root, 'tmp', 'wsdl', 'Tracking_API_V1.2.wsdl')
    config.ssl_ca_cert_file = File.join(RoyalMailApi.root, 'tmp', 'certs', 'cacert.pem')
    config.ssl_cert_file = File.join(RoyalMailApi.root, 'tmp', 'certs', 'mycert.pem')
    config.ssl_cert_key_file = File.join(RoyalMailApi.root, 'tmp', 'certs', 'mykey.pem')
    config.shipping_endpoint = "https://api.royalmail.com/shipping/onboarding"
    config.tracking_endpoint = "https://api.royalmail.com/tracking"
    config.logger = Logger.new(STDOUT)
  end
end
