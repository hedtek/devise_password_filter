module Devise
  module Models
    module Filterable
      def self.included(base)
        base.class_eval do
          validate :password_not_common

          def password_not_common
            if Rails.application.config.filter_passwords.include?(password)
              self.errors.add(:password, "is on a list of commonly used passwords. Please choose another password.")
            end
          end
        end
      end
    end
  end
end