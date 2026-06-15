mica_dir = '/path/to/mica-sound/content/cc0/samples'


path = nil
code = nil

def generate(name, rate)
  <<~RUBY
  # max-recording-time: #{[(1.0 * sample_duration(name) / rate).ceil + 1, 5].max}
  sample :#{name}, rate: #{rate}
    RUBY
end


[0.2, 0.4, 0.6, 0.8, 1.2, 1.4, 1.6, 1.8, 2.0].each do |rate|
  dir = "#{mica_dir}/rate_#{rate}"
  
  sample_groups.each do |group|
    sample_names(group).each do |name|
      path = "#{dir}/#{name}"
      FileUtils.mkdir_p path
      code = generate(name, rate)
      File.write("#{path}/#{name}.rb", code)
      ##| puts path
    end
  end
end

puts path
puts code

