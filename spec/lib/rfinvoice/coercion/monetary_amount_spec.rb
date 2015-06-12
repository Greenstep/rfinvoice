require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::MonetaryAmountCoercion do
  subject { described_class.build(described_class, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  %w(12,6 0.00006 0,555555 s).each do |key|
    it "should not allow #{key}" do
      expect { subject.coerce(key) }.to raise_error
    end
  end

  it 'should raise error on broken value what is not string' do
    expect { subject.coerce({}) }.to raise_error
  end

  %w(12,50 -16,70 0,0005).each do |key|
    it "should allow #{key}" do
      expect(subject.coerce(key)).to eq(key)
    end
  end
end