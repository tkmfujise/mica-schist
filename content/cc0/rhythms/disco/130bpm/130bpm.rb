# Disco (130 bpm)
# max-recording-time: 5
hat   = (ring 1,2,1,2)
snare = (ring 0,0,1,0)
kick  = (ring 1,0,1,0)

use_bpm 130

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
