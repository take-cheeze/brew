MRuby::Build.new do
  toolchain :gcc

  gem File.dirname __FILE__
end
