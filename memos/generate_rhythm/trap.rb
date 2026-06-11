
mica_dir = '../content/cc0/rhythms'


def generate(bpm)
  ring_length = 4 * 2 * 4
  <<~RUBY
    # Trap (#{bpm} bpm)
    # max-recording-time: #{(60.0/bpm * ring_length * 0.25 * 4).ceil + 1}
    hat1  = (ring 1,0,1,0)
    hat2  = (ring 1,1,2,0)
    hat3  = (ring 1,0,1,2)
    h_amp = (ring 0.6, 0.3, 0.4, 0.2)
    hat   = (hat1*2) + (hat2+hat1) + (hat1+hat3) + (hat1*2)

    clap0 = (ring 0,0,0,0)
    clap1 = (ring 1,0,0,0)
    clap  = (clap0*2 + clap1 + clap0)

    kick0 = (ring 0,0,0,0)
    kick1 = (ring 1,0,0,0)
    kick3 = (ring 0,0,1,0)
    kick  = (kick1 + kick0*3) + (kick3 + kick1 + kick3 + kick0)

    use_bpm #{bpm}

    define :trap do
      tick
      sample :hat_star,  amp: h_amp.look if hat.look == 1
      if hat.look == 2
        in_thread { 3.times { sample :hat_star, amp: h_amp.look; sleep 0.25/2  } }
      end
      synth :sc808_clap, amp: 1.8 if clap.look == 1
      sample :bd_haus,   amp: 1.0 if kick.look == 1
  
      sleep 0.25
    end


    (hat.length * 4).times do
      trap
    end
  RUBY
end


path = nil
code = nil

(130..150).step(5).each do |bpm|
  dir = "#{mica_dir}/trap/#{bpm}bpm"
  
  path = "#{dir}/#{bpm}bpm.rb"
  FileUtils.mkdir_p dir
  code = generate(bpm)
  File.write(path, code)
end

puts path
puts code




