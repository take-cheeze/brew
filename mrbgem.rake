MRuby::Gem::Specification.new 'mruby-brew' do
  self.license = 'BSD'
  self.author = 'homebrew developers'
  self.summary = 'Homebrew on mruby'

  self.mrblib_dir = 'Library/Homebrew'

  self.rbfiles = Dir.glob "#{dir}/#{mrblib_dir}/**/*.rb"
  rbfiles.reject! { |v| v.match?('/vendor/') || v.match?(/brew\.rb$/) }
  rbfiles << "#{dir}/#{mrblib_dir}/brew.rb"
end
