# Flamenco (110 bpm)
# max-recording-time: 6
hat   = (ring 1,1, 0,0, 1,1, 0,1)
snare = (ring 0,0, 1,1, 0,0, 1,0)
kick  = (ring 1,0, 0,1, 0,0, 1,0)

use_bpm 110

define :flamenco do
  tick
  sample :drum_cymbal_closed, amp: 0.3 if hat.look == 1
  sample :drum_snare_soft,    amp: 1.5 if snare.look == 1
  sample :drum_heavy_kick,    amp: 0.8 if kick.look == 1
  sleep 0.25
end

(hat.length * 4).times do
  flamenco
end
