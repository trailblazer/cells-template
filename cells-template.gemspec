
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "cells-template"
  spec.version       = "0.0.1"
  spec.authors       = ["Abdelkader Boudih"]
  spec.email         = ["terminale@gmail.com"]

  spec.summary       = %q{"Template integration for Cells."}
  spec.description   =  spec.summary
  spec.homepage      = "https://github.com/trailblazer/cells-template"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "cells", ">= 4.0.1", "< 6.0.0"
end
