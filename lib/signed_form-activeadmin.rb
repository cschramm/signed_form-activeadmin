module SignedForm
  module ActiveAdmin
    class Railtie < ::Rails::Railtie
      initializer 'signed_form-activeadmin', after: :prepend_helpers_path do |_|
        module ::ActiveAdmin
          class BaseController
            include SignedForm::ActionController::PermitSignedParams
          end

          module ViewHelpers
            module FormHelper
              orig_active_admin_form_for = instance_method :active_admin_form_for

              define_method :active_admin_form_for do |resource, options = {}, &block|
                options[:signed] = true
                orig_active_admin_form_for.bind(self).call resource, options, &block
              end
            end
          end
        end

        module ::Formtastic
          module Inputs
            class BooleanInput
              orig_check_box_html = instance_method :check_box_html

              define_method :check_box_html do
                builder.try :add_signed_fields, method
                orig_check_box_html.bind(self).call
              end
            end
          end
        end
      end
    end
  end
end
