mica_dir = '../content/cc0/synths'


synths = synths = [
  :bass_foundation,
  :blade,
  :chipbass,
  :chiplead,
  :dpulse,
  :dsaw,
  :dtri,
  :dull_bell,
  :fm,
  :growl,
  # :organ_tonewheel,
  :pretty_bell,
  :prophet,
  :rhodey,
  :rodeo,
  :saw,
  :sine,
  :square,
  :subpulse,
  :tech_saws,
  :tri,
  :winwood_lead,
]


path = nil
code = nil

def generate(name, from, to)
  <<~RUBY
  # max-recording-time: 4
  use_synth :#{name}
  cg = play (chord :#{from}, :m13), sustain: 0.3, note_slide: 5, amp: 2.0, release: 0.5
  sleep 0.1
  control cg, notes: (chord :#{to}, :m13)
  sleep 2
  RUBY
end


[
  [:up,   :e2, :e4],
  [:up,   :e4, :e6],
  [:down, :e4, :e2],
  [:down, :e6, :e4],
].each do |prefix, from, to|
  synths.each do |name|
    dir = "#{mica_dir}/note_slide#{prefix}_#{from}_#{to}"
  
    path = "#{dir}/#{name}"
    FileUtils.mkdir_p path
    code = generate(name, from, to)
    File.write("#{path}/#{name}.rb", code)
    ##| puts path
  end
end

puts path
puts code




