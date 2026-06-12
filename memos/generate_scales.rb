# ref: https://github.com/sonic-pi-net/sonic-pi/blob/stable/app/server/ruby/lib/sonicpi/scale.rb


mica_dir = '/path/to/mica-sound/content/cc0/scales'


path = nil
code = nil

@all_scales = scale_names.map{|n| [n, (scale :C, n)] }.to_h

def generate(name)
  notes = (scale :C, name)
  same_scales = @all_scales.select{|n, s| s == (scale :C, name) && n != name }.keys
  <<~RUBY.gsub(/^\s+/, '')
  # Notes: #{notes.map{|s| note_info(s).pitch_class }.join(' ')}
  #{same_scales.any? ? '# Same scale: ' + same_scales.join(', ') : ''}
  # max-recording-time: #{(notes.length * 0.25 * 2 + 0.25).ceil + 2}
  use_synth :piano
  play_pattern_timed (scale :C, :#{name}), [0.25]
  sleep 0.25
  play_pattern_timed (scale :C, :#{name}).reverse, [0.25]
  RUBY
end


@all_scales.each do |name, _|
  dir = "#{mica_dir}/#{name}"
  
  path = "#{dir}/#{name}.rb"
  # FileUtils.mkdir_p dir
  code = generate(name)
  # File.write(path, code)
end

puts path
puts code


