# Rails Easy Sign In

Adds a sign in box to your login page to allow automatic sign in. Useful in development environments.

## Installation

  1. Add ```gem 'rails_easy_sign_in' ``` to the development group of the _Gemfile_ and bundle.
  2. Add ```rails_easy_sign_in.js``` and ```rails_easy_sign_in.css``` to config.assets.precompile.
  3. Add the following to _app/views/layouts/application.html.haml_

```
- if Rails.application.config.should_show_easy_login
  = stylesheet_link_tag "rails_easy_sign_in"
  = javascript_include_tag "rails_easy_sign_in"
```

  4. Add ```config.should_show_easy_login = false``` to _config/application.rb_
  5. Add ```config.should_show_easy_login = true``` to _config/environtments/development.rb_
  6. Add the following to _app/views/devise/sessions/new.html.haml_

```
- if Rails.application.config.should_show_easy_login
  .easy-sign-in
    = link_to 'Sign in as Administrator', '#', data: { email: "admin@example.com", password: "password" }
    = link_to 'Sign in as Member', '#', data: { email: "member@example.com", password: "password" }
```
