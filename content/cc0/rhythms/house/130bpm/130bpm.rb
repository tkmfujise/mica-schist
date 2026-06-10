# House (130 bpm)
# max-recording-time: 5
hat   = (ring 0,1)
clap  = (ring 0,0,1,0)
kick  = (ring 1,0)

use_bpm 130

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
