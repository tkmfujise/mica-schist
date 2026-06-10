
mica_dir = '/path/to/mica-sound/content/cc0/rhythms'


def generate(bpm)
  ring_length = 16
  <<~RUBY
    # Bossa Nova (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.5 * 2).ceil + 1}
    hat   = (ring 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1)
    snare = (ring 0,0,1,0, 0,1,0,0, 1,0,0,1, 0,0,1,0)
    kick  = (ring 1,0,0,1, 1,0,0,1, 1,0,0,1, 1,0,0,1)

    use_bpm #{bpm}

    define :bossa_nova do
      tick
      sample :drum_cymbal_closed, amp: 0.5 if hat.look == 1
      sample :drum_snare_soft,    amp: 1.5 if snare.look == 1
      sample :drum_bass_soft,     amp: 2.0 if kick.look == 1
      sleep 0.5
    end

    (hat.length * 2).times do
      bossa_nova
    end
  RUBY
end


path = nil
code = nil

(100..130).step(5).each do |bpm|
  dir = "#{mica_dir}/bossa_nova/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code



