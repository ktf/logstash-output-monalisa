Gem::Specification.new do |s|
  s.name = 'logstash-output-monalisa'
  s.version = '0.1.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "Output plugin to push metrics to monalisa"
  s.description = "This plugin pushes specified metrics to a monalisa instance."
  s.authors = ["Giulio Eulisse"]
  s.email = 'giulio.eulisse@cern.ch'
  s.homepage = "https://ktf.github.io"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', '>= 1.4.0', '< 2.0.0'
  s.add_development_dependency 'logstash-devutils'
end
