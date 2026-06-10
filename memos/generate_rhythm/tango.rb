
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 8
  <<~RUBY
    # Tango (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.5 * 4).ceil + 1}
    snare = (ring 1,0, 1,0, 1,0, 1,2)
    kick  = (ring 1,0, 1,0, 1,0, 1,1)
    s_amp = (ring 0.8, 0.2)

    use_bpm #{bpm}

    define :tango do
      tick
      sample :drum_snare_soft, amp: s_amp.look    if snare.look == 1
      sample :drum_roll, slice: 0.4, release: 0.2 if snare.look == 2
      sample :drum_bass_soft,  amp: 0.8           if kick.look == 1
  
      sleep 0.5
    end

    (snare.length * 4).times do
      tango
    end
  RUBY
end


path = nil
code = nil

(80..130).step(10).each do |bpm|
  dir = "#{mica_dir}/tango/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code

