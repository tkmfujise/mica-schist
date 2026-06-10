
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 8
  <<~RUBY
    # Rumba (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.25 * 4).ceil + 1}
    hat    = (ring 1,0,0, 1,0,0, 1,0)
    palma1 = (ring 0,0,1,0, 1,0, 1,0)
    palma2 = (ring 0,1,1,0, 1,1, 0,0)
    palma  = palma1 + palma2
    kick   = (ring 1,0,0,0, 1,0, 0,0)

    use_bpm #{bpm}

    define :rumba do
      tick
      synth :sc808_maracas, decay: 10, amp: 0.4 if hat.look == 1
      synth :sc808_clap,               amp: 1.5 if palma.look == 1
      sample :drum_heavy_kick,         amp: 1.2 if kick.look == 1
      sleep 0.25
    end

    (hat.length * 4).times do
      rumba
    end
  RUBY
end


path = nil
code = nil

(60..130).step(10).each do |bpm|
  dir = "#{mica_dir}/rumba/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code

