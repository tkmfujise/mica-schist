mica_dir = '/path/to/mica-sound/content/cc0/arpeggio'

chords = %i[
  M
  m
  7
  M7
  m7
  sus2
  sus4
  dim
  augmented
  5
  add9
  madd9
  9
  m9
  maj9
  11
  13
  m6
  m7b5
  dom7
  5
  sus2
  sus4
  add9
  madd9
  augmented
]


path = nil
code = nil


def generate(note, chord)
  <<~RUBY.gsub(/^\s+/, '')
  use_synth :piano
  play :#{note}
  sleep 0.25
  play_pattern_timed chord(:#{note}, '#{chord}'), [0.25]
  play_pattern_timed chord(:#{note}, '#{chord}'), [0.1]
  RUBY
end



note = :C3

chords.each do |chord|
  dir = "#{mica_dir}/#{chord}_#{note}"
  
  path = "#{dir}/#{chord}_#{note}.rb"
  # FileUtils.mkdir_p dir
  code = generate(note, chord)
  # File.write(path, code)
end

puts path
puts code
