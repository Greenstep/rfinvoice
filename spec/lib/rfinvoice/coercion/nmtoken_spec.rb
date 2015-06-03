require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::NMToken do
  subject { described_class.build(::RFinvoice::Type::NMToken, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  context 'with limit' do
    subject { described_class.build(::RFinvoice::Type::NMToken0_14, name: :test) }

    it 'should raise error on broken value what is string' do
      expect { subject.coerce('s' * 15) }.to raise_error
    end

    it 'should raise error on broken value what is string and includes ","' do
      expect { subject.coerce('suppa,fly') }.to raise_error
    end

    it 'should raise error on broken value what is not string' do
      expect { subject.coerce({}) }.to raise_error
    end

    it 'should return value' do
      expect(subject.coerce('s' * 10)).to eq('s' * 10)
    end
  end

  context 'without limit' do
    it 'should return value' do
      expect(subject.coerce('s' * 20)).to eq('s' * 20)
    end
  end
end