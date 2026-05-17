RSpec.describe Mica::Analyzer do
  describe '#parse_stat' do
    subject { analyzer.send(:parse_stat, output) }
    let(:analyzer) { described_class.new(Tempfile.new) }

    context 'pattern 1' do
      let(:output) {
        <<~TEXT
          Samples read:             25736
          Length (seconds):      0.268083
          Scaled by:         2147483647.0
          Maximum amplitude:     0.003519
          Minimum amplitude:    -0.003186
          Midline amplitude:     0.000166
          Mean    norm:          0.000746
          Mean    amplitude:     0.000003
          RMS     amplitude:     0.000974
          Maximum delta:         0.005347
          Minimum delta:         0.000000
          Mean    delta:         0.001040
          RMS     delta:         0.001325
          Rough   frequency:        10393
          Volume adjustment:      284.200
        TEXT
      }

      it 'works' do
        is_expected.to eq({
          samples_read:       25736.0,
          length:             0.268083,
          scaled_by:          2147483647.0,
          maximum_amplitude:  0.003519,
          minimum_amplitude:  -0.003186,
          midline_amplitude:  0.000166,
          mean_norm:          0.000746,
          mean_amplitude:     3.0e-06,
          rms_amplitude:      0.000974,
          maximum_delta:      0.005347,
          minimum_delta:      0.0,
          mean_delta:         0.00104,
          rms_delta:          0.001325,
          rough_frequency:    10393.0,
          volume_adjustment:  284.2,
        })
      end
    end


    context 'pattern 2' do
      let(:output) {
        <<~TEXT
          Samples read:            769832
          Length (seconds):      8.019083
          Scaled by:         2147483647.0
          Maximum amplitude:     0.399000
          Minimum amplitude:    -0.387229
          Midline amplitude:     0.005885
          Mean    norm:          0.043900
          Mean    amplitude:     0.000000
          RMS     amplitude:     0.062621
          Maximum delta:         0.247621
          Minimum delta:         0.000000
          Mean    delta:         0.001978
          RMS     delta:         0.005928
          Rough   frequency:          723
          Volume adjustment:        2.506
        TEXT
      }

      it 'works' do
        is_expected.to eq({
          samples_read:      769832.0,
          length:            8.019083,
          scaled_by:         2147483647.0,
          maximum_amplitude: 0.399,
          minimum_amplitude: -0.387229,
          midline_amplitude: 0.005885,
          mean_norm:         0.0439,
          mean_amplitude:    0.0,
          rms_amplitude:     0.062621,
          maximum_delta:     0.247621,
          minimum_delta:     0.0,
          mean_delta:        0.001978,
          rms_delta:         0.005928,
          rough_frequency:   723.0,
          volume_adjustment: 2.506,
        })
      end
    end
  end
end
