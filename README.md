# Rails Easy Sign In

Adds a sign in box to your login page to allow automatic sign in. Useful in development environments.

## Installation

  1. Add  ```rb gem 'chosen-rails' ``` to the development group of your _Gemfile_ and bundle.
  2. Add ```js #= require rails_easy_sign_in``` to your _application.js_ file
  3. Add ```css @import easy_sign_in``` to your _application.css.sass_ file
  4. Add the following to _app/views/devise/sessions/new.html.haml:

```rb
- if Rails.application.config.should_show_easy_login
  .easy-sign-in
    = link_to 'Sign in as Administrator', '#', data: { email: "admin@example.com", password: "password" }
    = link_to 'Sign in as Member', '#', data: { email: "member@example.com", password: "password" }
```
