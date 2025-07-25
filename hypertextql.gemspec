# frozen_string_literal: true

require_relative 'lib/hypertextql/version'

Gem::Specification.new do |spec|
  spec.name = 'hypertextql'
  spec.version = HypertextQL::VERSION
  spec.authors = ['Shane Becker', 'Aaron Patterson']
  spec.email = ['veganstraightedge@gmail.com']

  spec.summary = 'SQL database backed by HTML files'
  spec.description = 'SQL database backed by HTML files, HypertextQL spec, and reference implementation (Ruby)'
  spec.homepage = 'https://github.com/veganstraightedge/hypertextql'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.4.5'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/veganstraightedge/hypertextql'
  spec.metadata['changelog_uri'] = 'https://github.com/veganstraightedge/hypertextql/blob/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
