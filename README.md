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

Formtastic uses the `check_box_tag` helper and not `check_box` for boolean fields, so they are not caught by SignedForm.
This gem will thus sign every formtastic boolean input if SignedForm is used in the containing form and does not limit
this to Active Admin. If you use formtastic to add boolean fields to signed forms, you probably *want* them to be signed
as other types are automatically, so this should not be an issue.
