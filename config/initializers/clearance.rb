Clearance.configure do |config|
  config.cookie_expiration = lambda { 5.minutes.from_now.utc }
  config.mailer_sender = 'ricardoestefanorosa.riso@gmail.com'
end
