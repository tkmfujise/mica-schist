# max-recording-time: 11
2.times do
  sample :loop_safari, rate: 1.2, finish: 0.5
  sleep sample_duration(:loop_safari) * 0.5 * 0.82
end
