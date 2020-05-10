
require 'spec_helper'

module RSpec
  describe Buildkite do
    it "has a version number" do
      expect(Buildkite::VERSION).not_to be nil
    end
  end
end
