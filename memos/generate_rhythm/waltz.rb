
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 3
  <<~RUBY
    # Waltz (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 1.0 * 4).ceil + 1}
    hat   = (ring 0,1,1)
    snare = (ring 0,1,1)
    kick  = (ring 1,0,0)
    s_amp = (ring 0, 0.8, 0.4)

    use_bpm #{bpm}

    define :waltz do
      tick
      sample :drum_cymbal_closed, amp: 0.4        if hat.look == 1
      sample :drum_snare_soft,    amp: s_amp.look if snare.look == 1
      sample :drum_heavy_kick,    amp: 0.7        if kick.look == 1
  
      sleep 1.0
    end

    (snare.length * 4).times do
      waltz
    end
  RUBY
end


path = nil
code = nil

(100..240).step(10).each do |bpm|
  dir = "#{mica_dir}/waltz/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code


