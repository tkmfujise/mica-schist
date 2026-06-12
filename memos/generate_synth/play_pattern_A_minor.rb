mica_dir = '../content/cc0/synths'


scales = [
  :bass_foundation,
  :blade,
  :chipbass,
  :chiplead,
  :dpulse,
  :dsaw,
  :dtri,
  :dull_bell,
  :fm,
  :gabberkick,
  :growl,
  :organ_tonewheel,
  :pluck,
  :pretty_bell,
  :prophet,
  :rhodey,
  :rodeo,
  :saw,
  :sc808_congahi,
  :sc808_congalo,
  :sc808_congamid,
  :sc808_cowbell,
  :sc808_tomhi,
  :sc808_tomlo,
  :sc808_tommid,
  :sine,
  :square,
  :subpulse,
  :supersaw,
  :tech_saws,
  :tri,
  :winwood_lead,
]


path = nil
code = nil

def generate(name)
  note_length = 8
  <<~RUBY.gsub(/^\s+/, '')
  # max-recording-time: #{(note_length * 0.25 * 2 + 0.25).ceil + 3}
  use_synth :#{name}
  with_fx :lpf, cutoff: 120 do
    play_pattern_timed  scale(:A, :minor), [0.25]
    sleep 0.25
    play_pattern_timed  scale(:A, :minor).reverse, [0.25]
  end
  RUBY
end


scales.each do |name|
  dir = "#{mica_dir}/play_pattern_A_minor"
  
  path = "#{dir}/#{name}"
  FileUtils.mkdir_p path
  code = generate(name)
  File.write("#{path}/#{name}.rb", code)
  ##| puts path
end

puts path
puts code



