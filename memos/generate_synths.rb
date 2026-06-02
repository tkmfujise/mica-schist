mica_dir = '/path/to/mica-sound/content/cc0/sonic_pi/synths'


ignoring = %i[sound_in sound_in_stereo]

path = nil
code = nil

def generate(name, note)
  <<~RUBY.gsub(/^\s+/, '')
  use_synth :#{name}
    play #{note}
  RUBY
end


[30, 40, 50, 60, 70, 80, 90].each do |note|
  dir = "#{mica_dir}/play_#{note}"
  
  (synth_names - ignoring).each do |name|
    path = "#{dir}/#{name}"
    FileUtils.mkdir_p path
    code = generate(name, note)
    File.write("#{path}/#{name}.rb", code)
    ##| puts path
  end
end

puts path
puts code


