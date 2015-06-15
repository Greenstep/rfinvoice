require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::EpiRemittanceInfoIdentifierPatternCoercion do
  subject { described_class.build(described_class, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  it 'should raise error on broken value what is string' do
    expect { subject.coerce('s') }.to raise_error
  end

  it 'should raise error on broken value what is not string' do
    expect { subject.coerce({}) }.to raise_error
  end

  %w(12 1234567890987654321 RF98123456789012).each do |key|
    it "should allow #{key}" do
      expect(subject.coerce(key)).to eq(key)
    end
  end
end