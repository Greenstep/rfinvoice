require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::Version do
  subject { described_class.build(described_class, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  %w(12 s 1.4).each do |key|
    it "should not allow #{key}" do
      expect { subject.coerce(key) }.to raise_error
    end
  end

  it 'should raise error on broken value what is not string' do
    expect { subject.coerce({}) }.to raise_error
  end

  %w(1.0 1.1 1.2 1.3 2.0 2.01).each do |key|
    it "should allow #{key}" do
      expect(subject.coerce(key)).to eq(key)
    end
  end
end