if Rails.env.development?
  Paperclip.options[:command_path] = '/usr/local/bin'
end