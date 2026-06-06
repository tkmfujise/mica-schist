
mica_dir = '/path/to/mica-sound/content/cc0/sonic_pi/rhythms'


def generate(bpm)
  ring_length = 16
  <<~RUBY
    # Reggae (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.5 * 2).ceil + 1}
    hat   = (ring 1,0,0, 1,0,1, 1,0,0, 1,0,1,  1,0,0, 1,0,0, 1,0,1, 1,0,0)
    snare = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0,  0,0,0, 0,0,1, 0,1,0, 0,0,0)
    kick  = (ring 1,0,0, 0,0,0, 0,0,0, 0,0,0,  1,0,0, 0,0,0, 0,0,0, 0,0,0)

    use_bpm #{bpm}

    define :reggae do
      tick
      sample :drum_cymbal_closed, amp: 0.8 if hat.look == 1
      sample :drum_snare_soft,    amp: 2.0 if snare.look == 1
      sample :drum_bass_soft,     amp: 2.0 if kick.look == 1
      sleep 1.0/3
    end

    (hat.length * 2).times do
      reggae
    end
  RUBY
end


path = nil
code = nil

(100..150).step(5).each do |bpm|
  dir = "#{mica_dir}/reggae/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code




