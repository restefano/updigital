# em config/initializer/locale.rb

# dizendo à biblioteca I18n onde encontrar as traduções
I18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]

# definindo o local padrão para outra coisa que não :en
I18n.default_locale = :pt