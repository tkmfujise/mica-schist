# max-recording-time: 8
use_synth :sc808_tommid
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:A6, :minor), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:A6, :minor).reverse, [0.25]
end
