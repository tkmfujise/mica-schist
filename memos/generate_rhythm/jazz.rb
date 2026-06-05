
mica_dir = '/path/to/mica-sound/content/cc0/sonic_pi/rhythms'


def generate(bpm)
  ring_length = 6
  <<~RUBY
    # Jazz (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 1.0/2/3 * 4).ceil + 2}
    ride  = (ring 1, 0, 0,  0.6, 0, 0.8)
    kick  = (ring 0, 0, 0,  0.4, 0, 0)

    use_bpm #{bpm}

    define :jazz do
      tick
      sample :drum_cymbal_soft, amp: ride.look if ride.look > 0
      sample :drum_bass_soft,   amp: kick.look if kick.look > 0
      sleep 1.0/2/3
    end


    (ride.length * 4).times do
      jazz
    end
  RUBY
end


path = nil
code = nil

[40, 50, 60, 70, 80, 90, 100, 110, 120].each do |bpm|
  dir = "#{mica_dir}/jazz/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code

