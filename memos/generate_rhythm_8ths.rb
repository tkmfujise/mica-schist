mica_dir = '/path/to/mica-sound/content/cc0/sonic_pi/rhythms'


def generate(bpm)
  ring_length = 8
  <<~RUBY
    # Straight 8th (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.25 * 2).ceil + 1}
    hat   = (ring 1,1,1,1,1,1,1,1)
    snare = (ring 0,0,1,0,0,0,1,0)
    kick  = (ring 1,0,0,0,0,0,1,0)

    use_bpm #{bpm}

    define :straight_8th do
      tick
      sample :drum_cymbal_closed if hat.look == 1
      sample :drum_snare_soft    if snare.look == 1
      sample :drum_heavy_kick    if kick.look == 1
      sleep 0.25
    end


    sample :drum_cymbal_hard
    (hat.length * 2).times do
      straight_8th
    end
  RUBY
end


path = nil
code = nil

[40, 50, 60, 70, 80, 90, 100, 110, 120].each do |bpm|
  dir = "#{mica_dir}/straight_8th/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code
