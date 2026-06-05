# Straight 8th (90 bpm)
# max-recording-time: 7
hat   = (ring 1,1,1,1,1,1,1,1)
snare = (ring 0,0,1,0,0,0,1,0)
kick  = (ring 1,0,0,0,0,0,1,0)

use_bpm 90

define :straight_8th do
  tick
  sample :drum_cymbal_closed, amp: 0.4 if hat.look == 1
  sample :drum_snare_soft,    amp: 0.6 if snare.look == 1
  sample :drum_heavy_kick,    amp: 1.0 if kick.look == 1
  sleep 0.5
end


sample :drum_cymbal_hard
(hat.length * 2).times do
  straight_8th
end
