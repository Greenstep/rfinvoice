require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::NMTokenCoercion do
  subject { described_class.build(::RFinvoice::Type::NMTokenType, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  context 'with limit as range' do
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

    ['тест', '测试', 'SomeTest'].each do |key|
      it "should allow #{key}" do
        expect(subject.coerce(key)).to eq(key)
      end
    end
  end

  context 'with limit as exact number' do
    subject { described_class.build(::RFinvoice::Type::NMToken2, name: :test) }
    it 'should raise error on broken value what is string' do
      expect { subject.coerce('s' * 15) }.to raise_error
    end
    it 'should allow SS' do
      expect(subject.coerce('SS')).to eq('SS')
    end
  end

  context 'without limit' do
    it 'should return value' do
      expect(subject.coerce('s' * 20)).to eq('s' * 20)
    end
  end
end