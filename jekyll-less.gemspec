# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-less/version"

Gem::Specification.new do |s|
  s.name        = "jekyll-less"
  s.version     = Jekyll::Less::VERSION
  s.authors     = ["Roger López"]
  s.email       = ["roger@zroger.com"]
  s.homepage    = "http://github.com/zroger/jekyll-less"
  s.summary     = %q{Less CSS converter for Jekyll}
  s.description = %q{Convert Less CSS files to standard CSS files as part of your Jekyll build.}

  s.rubyforge_project = "jekyll-less"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency('jekyll', [">= 0.10.0"])
  s.add_runtime_dependency('less', [">= 2.0.5"])
end
