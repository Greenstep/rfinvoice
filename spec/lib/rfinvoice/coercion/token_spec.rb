require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::Token do
  subject { described_class.build(::RFinvoice::Type::Token, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  context 'with limit as range' do
    subject { described_class.build(::RFinvoice::Type::Token0_14, name: :test) }

    it 'should raise error on broken value what is string' do
      expect { subject.coerce('s' * 15) }.to raise_error
    end

    it 'should normalize string' do
      expect(subject.coerce("suppa\nf\tly\r wow")).to eq("suppafly wow")
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
    subject { described_class.build(::RFinvoice::Type::Token3, name: :test) }
    it 'should raise error on broken value what is string' do
      expect { subject.coerce('s' * 15) }.to raise_error
    end
    it 'should allow SSS' do
      expect(subject.coerce('SSS')).to eq('SSS')
    end
  end

  context 'without limit' do
    it 'should return value' do
      expect(subject.coerce('s' * 20)).to eq('s' * 20)
    end
  end
end