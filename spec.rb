require 'active_model'
require 'action_controller'

class User
  extend ActiveModel::Naming

  attr_accessor :name

  def to_key
    [1]
  end
end

require 'signed_form'

# We currently fake AA since actually using it requires a complete Rails application to be set up

module ActiveAdmin
  class BaseController < ActionController::Base; end

  module ViewHelpers
    module FormHelper
      include SignedForm::ActionView::FormHelper

      alias_method :active_admin_form_for, :form_for
    end
  end
end

require 'signed_form-activeadmin'

require 'minitest/autorun'

describe ActiveAdmin::ViewHelpers::FormHelper do
  describe 'active_admin_form_for tag' do
    include ActionView::Helpers
    include ActionView::Context if defined? ActionView::Context
    include ActiveAdmin::ViewHelpers::FormHelper

    def polymorphic_path(*)
      '/users'
    end

    def protect_against_forgery?
      false
    end

    it 'should build a form with signature' do
      SignedForm.secret_key = 'abc123'
      SignedForm.options[:digest] = false

      content = active_admin_form_for(User.new) do |f|
        f.text_field :name
      end

      regex = '<form.*>.*<input type="hidden" name="form_signature" ' \
              'value="\w+={0,2}--\w+".*/>.*' \
              '<input.*name="user\[name\]".*/>.*' \
              '</form>'

      content.must_match Regexp.new(regex, Regexp::MULTILINE)
    end
  end
end

describe ActiveAdmin::BaseController do
  it 'should include SignedForm::ActionController::PermitSignedParams' do
    ActiveAdmin::BaseController.included_modules.must_include SignedForm::ActionController::PermitSignedParams
  end
end
