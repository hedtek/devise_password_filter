module DevisePasswordFilter
  class Engine < ::Rails::Engine
    config.filter_list = DevisePasswordFilter::Engine.root + "data/common_passwords.txt"

    initializer 'devise_password_filter.load_common_passwords' do
      config.filter_passwords = File.readlines(config.filter_list).map(&:strip)
    end

    initializer 'devise_password_filter.add_module' do
      Devise.add_module(:filterable, model: 'devise_password_filter/model')
    end
  end
end
