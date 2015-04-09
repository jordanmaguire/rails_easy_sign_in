# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "rails_easy_sign_in"
  gem.version     = "0.0.4"
  gem.authors     = ["Jordan Maguire", "Steven Webb"]
  gem.email       = ["jordan@thefrontiergroup.com.au"]
  gem.homepage    = "https://github.com/jordanmaguire/rails_easy_sign_in"
  gem.summary     = "Easy sign in for Rails apps"
  gem.description = <<-EOF
    Too many users not enough brain memory?

    Use Rails easy sign in to add an easy menu for signing in with different users. Never
    need to remember users for demo-ing an app again.
  EOF
  gem.licenses = ['WTFPL']

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "railties"
end
