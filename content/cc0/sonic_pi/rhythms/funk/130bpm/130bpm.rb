# Funk (130 bpm)
# max-recording-time: 5
hat   = (ring 1,1,1,1, 0,1,1,1, 1,1,1,1, 0,1,1,1)
snare = (ring 0,0,0,0, 1,0,0,0, 0,0,0,0, 1,0,0,0)
kick  = (ring 1,0,0,0, 0,0,0,1, 0,0,1,0, 0,0,0,1)
h_amp = (ring 1.0, 0.4, 0.8, 0.4)

use_bpm 130

define :funk do
  tick
  sample :drum_cymbal_closed, amp: h_amp.look if hat.look == 1
  sample :drum_snare_hard,    amp: 1.0 if snare.look == 1
  sample :drum_heavy_kick,    amp: 1.5 if kick.look == 1
  sleep 0.25
end

(hat.length * 2).times do
  funk
end
