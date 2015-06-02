require 'spec_helper'

describe RFinvoice do
  it 'has a version number' do
    expect(RFinvoice::VERSION).not_to be nil
  end
  context '#configure' do

    context 'default values' do
      it 'should have raise_on_broken_value as true' do
        expect(described_class.configuration.raise_on_broken_value).to be_truthy
      end
    end

    context 'raise_on_broken_value' do
      before :each do
        described_class.configure do |config|
          config.raise_on_broken_value = false
        end
      end

      it 'should have raise_on_broken_value as false' do
        expect(described_class.configuration.raise_on_broken_value).to be_falsey
      end

      after :each do
        described_class.reset
      end
    end
  end
end
