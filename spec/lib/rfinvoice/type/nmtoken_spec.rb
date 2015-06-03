require 'spec_helper'

RSpec.describe ::RFinvoice::Type do
  context 'nmtoken types' do
    described_class::GENERIC_NMTOKEN_TYPES.each do |definition|
      if definition.is_a?(::Array)
        min, max = definition
        it "#{described_class}::NMToken#{min}_#{max} should defined" do
          expect(described_class.const_defined?("NMToken#{min}_#{max}")).to be_truthy
        end
      else
        it "#{described_class}::NMToken#{definition} should defined" do
          expect(described_class.const_defined?("NMToken#{definition}")).to be_truthy
        end
      end

    end
  end
end
