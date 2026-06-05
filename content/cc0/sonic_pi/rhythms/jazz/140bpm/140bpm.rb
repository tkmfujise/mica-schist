# Jazz (140 bpm)
# max-recording-time: 6
ride  = (ring 1, 0, 0,  0.6, 0, 0.8)
kick  = (ring 0, 0, 0,  0.4, 0, 0)

use_bpm 140

define :jazz do
  tick
  sample :drum_cymbal_soft, amp: ride.look if ride.look > 0
  sample :drum_bass_soft,   amp: kick.look if kick.look > 0
  sleep 1.0/3
end


(ride.length * 4).times do
  jazz
end
