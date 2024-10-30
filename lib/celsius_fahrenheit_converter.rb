# frozen_string_literal: true

require_relative "celsius_fahrenheit_converter/version"

module CelsiusFahrenheitConverter
  class Error < StandardError; end

  # Converts a temperature from Fahrenheit to Celsius.
  #
  # @param fahrenheit_degree [Float, Integer] the temperature in Fahrenheit
  # @return [Float] the temperature in Celsius
  # @example
  #   CelsiusFahrenheitConverter.to_celsius(32) # => 0.0
  #   CelsiusFahrenheitConverter.to_celsius(212) # => 100.0
  def self.to_celsius(fahrenheit_degree)
    result = (fahrenheit_degree.to_f - 32) / (9.to_f / 5)
    puts result
    result
  end

  # Converts a temperature from Celsius to Fahrenheit.
  #
  # @param celsius_degree [Float, Integer] the temperature in Celsius
  # @return [Float] the temperature in Fahrenheit
  # @example
  #   CelsiusFahrenheitConverter.to_fahrenheit(0) # => 32.0
  #   CelsiusFahrenheitConverter.to_fahrenheit(100) # => 212.0
  def self.to_fahrenheit(celsius_degree)
    result = celsius_degree.to_f * 9 / 5 + 32
    puts result
    result
  end
end
