# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rails_easy_sign_in"
  s.version     = "0.0.3"
  s.authors     = ["Jordan Maguire"]
  s.email       = ["jordan@thefrontiergroup.com.au"]
  s.homepage    = "https://github.com/jordanmaguire/rails_easy_sign_in"
  s.summary     = "Easy sign in for Rails apps"
  s.description = <<-EOF
    Too many users not enough brain memory?

    Use Rails easy sign in to add an easy menu for signing in with different users. Never
    need to remember users for demo-ing an app again.
  EOF
  s.licenses = ['WTFPL']

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "railties"
end
