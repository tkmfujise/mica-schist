
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 12
  <<~RUBY
    # Reggae (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 1.0/3 * 4).ceil + 1}
    hat   = (ring 0,0,1, 1,0,1, 1,0,1, 1,0,1)
    snare = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0)
    kick  = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0)
    h_amp = (ring 0.2, 0.2, 0.8)

    use_bpm #{bpm}

    define :reggae do
      tick
      sample :drum_cymbal_closed, amp: h_amp.look if hat.look == 1
      sample :drum_snare_soft,    amp: 1.2 if snare.look == 1
      sample :drum_bass_soft,     amp: 1.8 if kick.look == 1

      sleep 1.0/3
    end

    sample :drum_cymbal_closed
    (hat.length * 4).times do
      reggae
    end
  RUBY
end


path = nil
code = nil

(80..130).step(10).each do |bpm|
  dir = "#{mica_dir}/reggae/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code




