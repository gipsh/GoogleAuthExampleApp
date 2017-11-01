OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
      'my google client id', 
      'my google client secret', 
      {  access_type: "offline",
         prompt: "consent",
         scope: 'email, profile, plus.me, http://gdata.youtube.com',
         client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
