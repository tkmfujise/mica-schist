
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 2
  <<~RUBY
    # House (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.5 * 8).ceil + 1}
    hat   = (ring 0,1)
    clap  = (ring 0,0,1,0)
    kick  = (ring 1,0)

    use_bpm #{bpm}

    define :house do
      tick
      sample :hat_zild,  amp: 0.8 if hat.look == 1
      synth :sc808_clap, amp: 1.2 if clap.look == 1
      sample :bd_haus,   amp: 1.5 if kick.look == 1
  
      sleep 0.5
    end


    (hat.length * 8).times do
      house
    end
  RUBY
end


path = nil
code = nil

(110..130).step(5).each do |bpm|
  dir = "#{mica_dir}/house/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code



