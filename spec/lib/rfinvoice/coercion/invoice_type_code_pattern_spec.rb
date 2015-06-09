require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::InvoiceTypeCodePattern do
  subject { described_class.build(::RFinvoice::Type::InvoiceTypeCodePattern, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  it 'should raise error on broken value what is string' do
    expect { subject.coerce('s') }.to raise_error
  end

  it 'should raise error on broken value what is not string' do
    expect { subject.coerce({}) }.to raise_error
  end

  %w(REQ02 QUO10 ORD03 ORC02 INV99 DEV99 TES01 INF00 PRI05 DEN90 SEI12).each do |key|
    it "should allow #{key}" do
      expect(subject.coerce(key)).to eq(key)
    end
  end
end