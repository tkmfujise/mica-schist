mica_dir = '/path/to/mica-sound/content/cc0/sonic_pi/rhythms'


def generate(bpm)
  ring_length = 16
  <<~RUBY
    # Funk (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.25 * 2).ceil + 1}
    hat   = (ring 1,1,1,1, 0,1,1,1, 1,1,1,1, 0,1,1,1)
    snare = (ring 0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0)
    kick  = (ring 1,0,0,0, 0,0,0,1, 0,0,1,0, 0,0,0,1)
    h_amp = (ring 1.0, 0.4, 0.8, 0.4)

    use_bpm #{bpm}

    define :funk do
      tick
      sample :drum_cymbal_closed, amp: h_amp.look if hat.look == 1
      sample :drum_snare_hard,    amp: 1.0 if snare.look == 1
      sample :drum_heavy_kick,    amp: 1.5 if kick.look == 1
      sleep 0.25
    end

    (hat.length * 2).times do
      funk
    end
  RUBY
end


path = nil
code = nil

(60..130).step(10).each do |bpm|
  dir = "#{mica_dir}/funk/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code


