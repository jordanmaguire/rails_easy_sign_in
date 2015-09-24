EasySignIn =
  setup: ->
    # These are based on devise's field names, for a User model.
    # Ghetto support for authentication with either an email or a username
    $emailField = $("#user_email")
    $usernameField = $("#user_username")
    $loginField = $("#user_login")
    $passwordField = $("#user_password")

    if $emailField || $usernameField || $loginField
      $("a").filter("[data-email], [data-username], [data-login]").click (event) ->
        event.preventDefault()
        $el = $(this)
        $emailField.val($el.data('email'))
        $usernameField.val($el.data('username'))
        $loginField.val($el.data('login'))
        $passwordField.val($el.data('password'))
        $("form").submit()

$(document).ready(EasySignIn.setup).on "page:load", EasySignIn.setup
