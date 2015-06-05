require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerAccountID do
  let(:document) { Fabricate(:seller_account_id) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:identification_scheme_name).as('IdentificationSchemeName').with_attribute }
end