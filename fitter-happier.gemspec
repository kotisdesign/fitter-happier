lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name         = 'fitter-happier'
  s.version      = '0.0.4'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ['Jon Moses', 'Corey Donohoe', 'Zachary Spencer', 'Jay Fredlund']
  s.email        = ['zspencer@zacharyspencer.com', 'jay.fredlund@kotisdesign.com']
  s.homepage     = 'https://github.com/kotisdesign/fitter-happier'
  s.summary      = 'FitterHappier is a plug-in that provides actions for monitoring site and/or database availability for rails apps.'
  s.description  = 'Send bug reports to http://github.com/kotisdesign/fitter-happier/'

  s.files        = Dir.glob("{lib,app,config,rails}/**/*") + %w( CHANGELOG MIT-LICENSE README.mdown )
  s.require_path = 'lib'

  s.add_runtime_dependency("actionpack")

  s.add_development_dependency("rake")

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"
    s.metadata["github_repo"] = "ssh://github.com/kotisdesign/fitter-happier"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

end
