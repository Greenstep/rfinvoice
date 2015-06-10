require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::EpiMonetaryAmount do
  subject { described_class.build(described_class, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  %w(12,6 0.06 0,556 s).each do |key|
    it "should not allow #{key}" do
      expect { subject.coerce(key) }.to raise_error
    end
  end

  it 'should raise error on broken value what is not string' do
    expect { subject.coerce({}) }.to raise_error
  end

  %w(12,50 -16,70 0,05).each do |key|
    it "should allow #{key}" do
      expect(subject.coerce(key)).to eq(key)
    end
  end
end