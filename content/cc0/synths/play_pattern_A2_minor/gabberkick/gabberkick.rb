# max-recording-time: 8
use_synth :gabberkick
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:A2, :minor), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:A2, :minor).reverse, [0.25]
end
