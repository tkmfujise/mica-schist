# Waltz (200 bpm)
# max-recording-time: 5
hat   = (ring 0,1,1)
snare = (ring 0,1,1)
kick  = (ring 1,0,0)
s_amp = (ring 0, 0.8, 0.4)

use_bpm 200

define :waltz do
  tick
  sample :drum_cymbal_closed, amp: 0.4        if hat.look == 1
  sample :drum_snare_soft,    amp: s_amp.look if snare.look == 1
  sample :drum_heavy_kick,    amp: 0.7        if kick.look == 1

  sleep 1.0
end

(snare.length * 4).times do
  waltz
end
