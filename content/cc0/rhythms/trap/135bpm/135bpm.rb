# Trap (135 bpm)
# max-recording-time: 9
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

use_bpm 135

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


(hat.length * 2).times do
  trap
end
