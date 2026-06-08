# Reggae (140 bpm)
# max-recording-time: 8

hat   = (ring 1,0,1, 1,0,1, 1,0,1, 1,0,1)
snare = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0)
kick  = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0)

use_bpm 140

define :reggae do
  tick
  sample :drum_cymbal_closed, amp: 0.6 if hat.look == 1
  sample :drum_snare_soft,    amp: 1.5 if snare.look == 1
  sample :drum_bass_soft,     amp: 1.8 if kick.look == 1

  sleep 1.0/3
end

(hat.length * 4).times do
  reggae
end
