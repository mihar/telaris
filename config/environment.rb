RAILS_GEM_VERSION = '2.3.7' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'will_paginate'
  config.gem 'inherited_resources', :version => "1.0.3"
  config.gem 'paperclip'
  config.gem 'RedCloth'
  config.gem 'haml'
  config.gem 'recaptcha', :lib => "recaptcha/rails"
  config.time_zone = 'Ljubljana'

  config.i18n.default_locale = :sl
end

ENV['RECAPTCHA_PUBLIC_KEY']  = '6LfzZLoSAAAAADdVC-7yL1OC_Rm_k43Hd8AiWMip'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LfzZLoSAAAAAN8izDGjZ-6UIpoipk1Y9dUx0tyg'

ExceptionNotification::Notifier.exception_recipients = %w(rasmajx@gmail.com)
ExceptionNotification::Notifier.sender_address = %("Telaris App" <app@telaris.si>)
ExceptionNotification::Notifier.email_prefix = "[TELARIS] "
