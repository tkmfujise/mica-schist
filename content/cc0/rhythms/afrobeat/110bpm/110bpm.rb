# Afrobeat (110 bpm)
# max-recording-time: 6
hat1   = (ring 1,2,0,1)
hat2   = (ring 0,1,0,1)
hat    = hat1 + hat2

snare0 = (ring 0,0,0,0)
snare1 = (ring 0,1,1,0)
snare2 = (ring 1,0,1,0)
snare  = snare0 + snare1 + snare2 + snare1
s_amp  = (ring 0.5, 0.8)

kick0  = (ring 0,0,0,0)
kick1  = (ring 0,1,1,0)
kick2  = (ring 1,1,0,0)
kick   = kick1 + kick0 + kick2 + kick0

use_bpm 110

define :afrobeat do
  tick
  sample :drum_cymbal_closed, amp: 0.3 if hat.look == 1
  sample :drum_cymbal_open, sustain: 0.3, amp: 0.3 if hat.look == 2
  sample :drum_snare_hard,    amp: s_amp.look if snare.look == 1
  sample :drum_heavy_kick,    amp: 1.1 if kick.look == 1
  sleep 0.25
end

(hat.length * 4).times do
  afrobeat
end
