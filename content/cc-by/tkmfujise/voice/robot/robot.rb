5.times do
  sample :elec_beep, rate: (range 0.2, 0.8, step: 0.1).choose
  sleep (range 0.1, 0.3, step: 0.05).choose
end

