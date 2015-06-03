require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::String do
  subject { described_class.build(::RFinvoice::Type::String) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  context 'with limit as range' do
    subject { described_class.build(::RFinvoice::Type::String0_35) }

    it 'should raise error on broken value what is string' do
      expect { subject.coerce('*' * 36) }.to raise_error
    end

    it 'should raise error on broken value what is not string' do
      expect { subject.coerce({}) }.to raise_error
    end

    it 'should return value' do
      expect(subject.coerce('*' * 20)).to eq('*' * 20)
    end
  end

  context 'without limit' do
    it 'should return value' do
      expect(subject.coerce('*' * 20)).to eq('*' * 20)
    end
  end
end