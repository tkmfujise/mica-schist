# max-recording-time: 10
2.times do
  sample :loop_amen, rate: 0.8
  sleep sample_duration(:loop_amen) * 1.25
end
