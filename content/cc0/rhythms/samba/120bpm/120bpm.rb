# Samba (120 bpm)
# max-recording-time: 5
hat   = (ring 1,0,1,1, 1,0,1,1, 1,0,1,1, 1,0,1,1)
snare = (ring 0,0,1,0, 0,1,0,0, 1,0,0,1, 0,0,1,0)
kick  = (ring 1,0,0,1, 1,0,0,1, 1,0,0,1, 1,0,0,1)

use_bpm 120

define :samba do
  tick
  sample :drum_cymbal_closed, amp: 0.4 if hat.look == 1
  sample :drum_snare_soft,    amp: 0.8 if snare.look == 1
  sample :drum_bass_soft,     amp: 1.2 if kick.look == 1
  sleep 0.25
end

(hat.length * 2).times do
  samba
end
