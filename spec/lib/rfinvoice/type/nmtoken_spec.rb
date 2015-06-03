require 'spec_helper'

RSpec.describe ::RFinvoice::Type do
  context 'nmtoken types' do
    described_class::GENERIC_NMTOKEN_TYPES.each do |(min, max)|
      it "#{described_class}::NMToken#{min}_#{max} should defined" do
        expect(described_class.const_defined?("NMToken#{min}_#{max}")).to be_truthy
      end
    end
  end
end
