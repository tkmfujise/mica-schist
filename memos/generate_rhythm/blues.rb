
mica_dir = '/path/to/mica-sound/content/cc0/sonic_pi/rhythms'


def generate(bpm)
  ring_length = 6
  <<~RUBY
    # Blues (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 1.0/3 * 4).ceil + 1}
    hat   = (ring 1,0,1, 1,0,1)
    snare = (ring 0,0,0, 1,0,0)
    kick  = (ring 1,0,1, 0,0,1, 1,0,0, 0,0,1)

    use_bpm #{bpm}

    define :blues do
      tick
      sample :drum_cymbal_closed, amp: 0.5 if hat.look == 1
      sample :drum_snare_soft,    amp: 0.7 if snare.look == 1
      sample :drum_heavy_kick,    amp: 1.0 if kick.look == 1
      sleep 1.0/3
    end

    (hat.length * 4).times do
      blues
    end
  RUBY
end


path = nil
code = nil

(60..150).step(10).each do |bpm|
  dir = "#{mica_dir}/blues/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code


