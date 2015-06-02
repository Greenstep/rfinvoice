require 'spec_helper'

RSpec.describe ::RFinvoice::Type do
  context 'string types' do
    described_class::GENERIC_STRING_TYPES.each do |(min, max)|
      it "#{described_class}::String#{min}_#{max} should defined" do
        expect(described_class.const_defined?("String#{min}_#{max}")).to be_truthy
      end
    end
  end
end