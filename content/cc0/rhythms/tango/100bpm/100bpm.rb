# Tango (100 bpm)
# max-recording-time: 11
snare = (ring 1,0, 1,0, 1,0, 1,2)
kick  = (ring 1,0, 1,0, 1,0, 1,1)
s_amp = (ring 0.8, 0.2)

use_bpm 100

define :tango do
  tick
  sample :drum_snare_soft, amp: s_amp.look    if snare.look == 1
  sample :drum_roll, slice: 0.4, release: 0.2 if snare.look == 2
  sample :drum_bass_soft,  amp: 0.8           if kick.look == 1

  sleep 0.5
end

(snare.length * 4).times do
  tango
end
