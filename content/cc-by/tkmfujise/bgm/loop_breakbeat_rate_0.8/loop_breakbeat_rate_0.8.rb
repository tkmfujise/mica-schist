# max-recording-time: 10
2.times do
  sample :loop_breakbeat, rate: 0.8
  sleep sample_duration(:loop_breakbeat) * 1.25
end
