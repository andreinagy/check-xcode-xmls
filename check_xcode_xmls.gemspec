
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'check_xcode_xmls/version'

Gem::Specification.new do |spec|
  spec.name          = 'check_xcode_xmls'
  spec.version       = CheckXcodeXmls::VERSION
  spec.authors       = ['Andrei Nagy']
  spec.email         = ['nagy.andrei@gmail.com']

  spec.summary       = 'Check that constraints in storyboards and xibs have constraints identifiers.'
  spec.description   = 'Check interface builder files for autolayout constraints without identifiers.'
  spec.homepage      = 'https://github.com/andreinagy/check-xcode-xmls'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    # spec.metadata["homepage_uri"] = spec.homepage
    # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
    # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.glob('{bin,lib}/**/*')
  # Dir.chdir(File.expand_path('..', __FILE__)) do
  # `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end
  spec.bindir        = 'bin'
  spec.executables   = 'check-xcode-xmls'
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'nokogiri', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
