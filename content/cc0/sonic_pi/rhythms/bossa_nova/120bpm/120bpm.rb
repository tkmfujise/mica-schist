# Bossa Nova (120 bpm)
# max-recording-time: 9
hat   = (ring 1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1)
snare = (ring 0,0,1,0, 0,1,0,0, 1,0,0,1, 0,0,1,0)
kick  = (ring 1,0,0,1, 1,0,0,1, 1,0,0,1, 1,0,0,1)

use_bpm 120

define :bossa_nova do
  tick
  sample :drum_cymbal_closed, amp: 0.5 if hat.look == 1
  sample :drum_snare_soft,    amp: 1.5 if snare.look == 1
  sample :drum_bass_soft,     amp: 2.0 if kick.look == 1
  sleep 0.5
end

(hat.length * 2).times do
  bossa_nova
end
