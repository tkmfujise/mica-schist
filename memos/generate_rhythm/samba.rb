
mica_dir = '/path/to/mica-sound/content/cc0/rhythms'


def generate(bpm)
  ring_length = 16
  <<~RUBY
    # Samba (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.25 * 2).ceil + 1}
    hat   = (ring 1,0,1,1, 1,0,1,1, 1,0,1,1, 1,0,1,1)
    snare = (ring 0,0,1,0, 0,1,0,0, 1,0,0,1, 0,0,1,0)
    kick  = (ring 1,0,0,1, 1,0,0,1, 1,0,0,1, 1,0,0,1)

    use_bpm #{bpm}

    define :samba do
      tick
      sample :drum_cymbal_closed, amp: 0.4 if hat.look == 1
      sample :drum_snare_soft,    amp: 0.8 if snare.look == 1
      sample :drum_bass_soft,     amp: 1.2 if kick.look == 1
      sleep 0.25
    end

    (hat.length * 2).times do
      samba
    end
  RUBY
end


path = nil
code = nil

(60..130).step(10).each do |bpm|
  dir = "#{mica_dir}/samba/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code


