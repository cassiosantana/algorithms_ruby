# frozen_string_literal: true

class AlgorithmBase
  def initialize(...); end

  def self.call(...)
    new(...).call
  end

  def self.call!(...)
    new(...).call!
  end
end
