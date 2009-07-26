# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pancake}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Neighman"]
  s.autorequire = %q{pancake}
  s.date = %q{2009-07-26}
  s.default_executable = %q{pancake-gen}
  s.description = %q{Eat Pancake Stacks for Breakfast}
  s.email = %q{has.sox@gmail.com}
  s.executables = ["pancake-gen"]
  s.extra_rdoc_files = ["README.textile", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README.textile", "Rakefile", "TODO", "lib/pancake", "lib/pancake/bootloaders.rb", "lib/pancake/configuration.rb", "lib/pancake/core_ext", "lib/pancake/core_ext/object.rb", "lib/pancake/generators", "lib/pancake/generators/base.rb", "lib/pancake/generators/stack_generator.rb", "lib/pancake/generators/templates", "lib/pancake/generators/templates/%stack_name%", "lib/pancake/generators/templates/%stack_name%/lib", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/config", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/config/environments", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/config/environments/development.rb.tt", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/config/environments/production.rb.tt", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/config/router.rb.tt", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/config.ru.tt", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/gems", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/gems/cache", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/mounts", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/public", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/tmp", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%.rb.tt", "lib/pancake/generators/templates/%stack_name%/LICENSE.tt", "lib/pancake/generators/templates/%stack_name%/pancake.init.tt", "lib/pancake/generators/templates/%stack_name%/Rakefile.tt", "lib/pancake/generators/templates/%stack_name%/README.tt", "lib/pancake/generators/templates/%stack_name%/spec", "lib/pancake/generators/templates/%stack_name%/spec/%stack_name%_spec.rb.tt", "lib/pancake/generators/templates/%stack_name%/spec/spec_helper.rb.tt", "lib/pancake/generators/templates/%stack_name%/VERSION.tt", "lib/pancake/generators/templates/common", "lib/pancake/generators/templates/common/dotgitignore", "lib/pancake/generators/templates/common/dothtaccess", "lib/pancake/generators.rb", "lib/pancake/hooks", "lib/pancake/hooks/inheritable_inner_classes.rb", "lib/pancake/hooks/on_inherit.rb", "lib/pancake/master.rb", "lib/pancake/middleware.rb", "lib/pancake/more", "lib/pancake/more/controller", "lib/pancake/more/controller/action_options.rb", "lib/pancake/more/controller/base.rb", "lib/pancake/more/controller/errors.rb", "lib/pancake/more/controller/publish.rb", "lib/pancake/more/controller.rb", "lib/pancake/router.rb", "lib/pancake/stack", "lib/pancake/stack/app.rb", "lib/pancake/stack/bootloader.rb", "lib/pancake/stack/configuration.rb", "lib/pancake/stack/middleware.rb", "lib/pancake/stack/router.rb", "lib/pancake/stack/stack.rb", "lib/pancake.rb", "lib/pancake/generators/templates/%stack_name%/.gitignore", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/gems/cache/.empty_directory", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/mounts/.empty_directory", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/public/.empty_directory", "lib/pancake/generators/templates/%stack_name%/lib/%stack_name%/tmp/.empty_directory", "spec/bootloaders", "spec/bootloaders/base_spec.rb", "spec/configuration_spec.rb", "spec/fixtures", "spec/fixtures/foo_stack", "spec/fixtures/foo_stack/pancake.init", "spec/helpers", "spec/helpers/helpers.rb", "spec/helpers/matchers.rb", "spec/inheritance_spec.rb", "spec/middleware_spec.rb", "spec/more", "spec/more/controller", "spec/more/controller/publish_spec.rb", "spec/pancake_configuration_spec.rb", "spec/pancake_spec.rb", "spec/spec_helper.rb", "spec/stack", "spec/stack/application_spec.rb", "spec/stack/bootloaders_spec.rb", "spec/stack/inheritance_spec.rb", "spec/stack/middleware_spec.rb", "spec/stack/router_spec.rb", "spec/stack/stack_configuration_spec.rb", "spec/stack/stack_spec.rb", "bin/pancake-gen"]
  s.homepage = %q{http://github.com/hassox/pancake}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Eat Pancake Stacks for Breakfast}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end