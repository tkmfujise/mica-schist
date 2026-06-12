# max-recording-time: 8
use_synth :dull_bell
with_fx :lpf, cutoff: 120 do
play_pattern_timed  scale(:C, :major), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :major).reverse, [0.25]
end
