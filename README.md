[![Gem Version](https://badge.fury.io/rb/signed_form-activeadmin.png)](http://badge.fury.io/rb/signed_form-activeadmin)
[![Dependency Status](https://gemnasium.com/cschramm/signed_form-activeadmin.png)](https://gemnasium.com/cschramm/signed_form-activeadmin)
[![Code Climate](https://codeclimate.com/github/cschramm/signed_form-activeadmin.png)](https://codeclimate.com/github/cschramm/signed_form-activeadmin)
[![Build Status](https://travis-ci.org/cschramm/signed_form-activeadmin.png?branch=travis)](https://travis-ci.org/cschramm/signed_form-activeadmin)

# SignedForm / Active Admin

Integrates [SignedForm](https://github.com/erichmenge/signed_form)
with [Active Admin](http://www.activeadmin.info/).

This eliminates the need to explicitly permit all fields used in
Active Admin forms in the generated Active Admin controllers.

## Usage

    gem 'signed_form-activeadmin'

## Caveat

Formtastic uses the `check_box_tag` helper and not `check_box` for boolean fields, so they are not caught by SignedForm. You need to explicitly call `add_signed_fields` to get them signed and permitted.

````ruby
form do |f|
  f.inputs do
    f.input :active
    f.add_signed_fields :active
  end
end
````
