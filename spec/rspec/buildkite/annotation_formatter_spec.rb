# frozen_string_literal: true

require 'spec_helper'
require 'rspec/buildkite/annotation_formatter'

module RSpec
  module Buildkite
    ::RSpec.describe AnnotationFormatter do
      let(:output) { StringIO.new }
      subject(:formatter) { described_class.new(output) }
      before { ENV['BUILDKITE'] = 'true' }

      before do
        allow(formatter).to receive(:run_agent).and_return(true)
      end

      describe 'constructor' do
        its(:output) { should eq output }
        
        its(:example_group) { should be_nil }
      end
    end
  end
end
