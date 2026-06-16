# max-recording-time: 8
use_synth :dsaw
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:C6, :major), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:C6, :major).reverse, [0.25]
end
