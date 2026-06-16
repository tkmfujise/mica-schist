# max-recording-time: 8
use_synth :sc808_tomhi
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:C5, :major), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:C5, :major).reverse, [0.25]
end
