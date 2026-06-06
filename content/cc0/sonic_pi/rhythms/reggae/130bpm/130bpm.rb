# Reggae (130 bpm)
# max-recording-time: 9
hat   = (ring 1,0,0, 1,0,1, 1,0,0, 1,0,1,  1,0,0, 1,0,0, 1,0,1, 1,0,0)
snare = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0,  0,0,0, 0,0,1, 0,1,0, 0,0,0)
kick  = (ring 1,0,0, 0,0,0, 0,0,0, 0,0,0,  1,0,0, 0,0,0, 0,0,0, 0,0,0)

use_bpm 130

define :reggae do
  tick
  sample :drum_cymbal_closed, amp: 0.8 if hat.look == 1
  sample :drum_snare_soft,    amp: 2.0 if snare.look == 1
  sample :drum_bass_soft,     amp: 2.0 if kick.look == 1
  sleep 1.0/3
end

(hat.length * 2).times do
  reggae
end
