# max-recording-time: 4
use_synth :growl
cg = play (chord :e2, :m13), sustain: 0.3, note_slide: 5, amp: 2.0, release: 0.5
sleep 0.1
control cg, notes: (chord :e4, :m13)
sleep 2
