
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 4
  <<~RUBY
    # Disco (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.5 * 4).ceil + 1}
    hat   = (ring 1,2,1,2)
    snare = (ring 0,0,1,0)
    kick  = (ring 1,0,1,0)

    use_bpm #{bpm}

    define :disco do
      tick
      sample :drum_cymbal_closed, amp: 0.2 if hat.look == 1
      sample :drum_cymbal_open, sustain: 0.3, amp: 0.2 if hat.look == 2
      sample :drum_snare_hard,    amp: 1.0 if snare.look == 1
      sample :drum_heavy_kick,    amp: 0.7 if kick.look == 1
      sleep 0.5
    end

    (hat.length * 4).times do
      disco
    end
  RUBY
end


path = nil
code = nil

(110..130).step(5).each do |bpm|
  dir = "#{mica_dir}/disco/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code


