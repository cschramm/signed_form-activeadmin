module SignedForm
  module ActiveAdmin
    class Railtie < ::Rails::Railtie
      initializer 'signed_form-activeadmin' do |_|
        module ::ActiveAdmin
          class BaseController
            include SignedForm::ActionController::PermitSignedParams
          end

          module ViewHelpers
            module FormHelper
              alias_method :orig_active_admin_form_for, :active_admin_form_for

              define_method :active_admin_form_for do |resource, options = {}, &block|
                options[:signed] = true
                orig_active_admin_form_for resource, options, &block
              end
            end
          end
        end
      end
    end
  end
end
