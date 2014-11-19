EasySignIn.setup = ->

  # These are based on devise's field names, for a User model.
  # Ghetto support for authentication with either an email or a username
  $emailField = $("#user_email")
  $usernameField = $("#user_username")
  $passwordField = $("#user_password")

  if $emailField || $usernameField
    $("a").filter("[data-email], [data-username]").click (event) ->
      event.preventDefault()
      $el = $(this)
      $emailField.val($el.data('email'))
      $usernameField.val($el.data('username'))
      $passwordField.val($el.data('password'))
      $("form").submit()

$(document).ready(EasySignIn.setup).on "page:load", EasySignIn.setup
