if Rails.env.production?
  HoptoadNotifier.configure do |config|
    config.api_key     = '89d8c19ecacf442a1c89b77786d0fb8e'
    config.host        = 'errbit.demo.crypsis.net'
    config.port        = 80
    config.secure      = config.port == 443
  end
end