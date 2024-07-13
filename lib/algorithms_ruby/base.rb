# frozen_string_literal: true

module AlgorithmsRuby
  class Base
    def initialize(...); end

    def self.call(...)
      new(...).call
    end

    def self.call!(...)
      new(...).call!
    end
  end
end
