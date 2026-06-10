# Reggae (110 bpm)
# max-recording-time: 10
hat   = (ring 0,0,1, 1,0,1, 1,0,1, 1,0,1)
snare = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0)
kick  = (ring 0,0,0, 0,0,0, 1,0,0, 0,0,0)
h_amp = (ring 0.2, 0.2, 0.8)

use_bpm 110

define :reggae do
  tick
  sample :drum_cymbal_closed, amp: h_amp.look if hat.look == 1
  sample :drum_snare_soft,    amp: 1.2 if snare.look == 1
  sample :drum_bass_soft,     amp: 1.8 if kick.look == 1

  sleep 1.0/3
end

sample :drum_cymbal_closed
(hat.length * 4).times do
  reggae
end
