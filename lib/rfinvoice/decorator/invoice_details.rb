require 'rfinvoice/decorator/invoice_type_code'
require 'rfinvoice/decorator/invoice_date'
require 'rfinvoice/decorator/invoicing_period_start_date'
require 'rfinvoice/decorator/invoicing_period_end_date'
require 'rfinvoice/decorator/order_date'
require 'rfinvoice/decorator/order_confirmation_date'
require 'rfinvoice/decorator/agreement_date'
require 'rfinvoice/decorator/notification_date'
require 'rfinvoice/decorator/control_date'
require 'rfinvoice/decorator/definition_details'
require 'rfinvoice/decorator/invoice_total_vat_amount'
require 'rfinvoice/decorator/invoice_total_vat_included_amount'
require 'rfinvoice/decorator/invoice_total_vat_excluded_amount'
require 'rfinvoice/decorator/invoice_total_roundoff_amount'
require 'rfinvoice/decorator/other_currency_amount_vat_included_amount'
require 'rfinvoice/decorator/other_currency_amount_vat_excluded_amount'
require 'rfinvoice/decorator/credit_limit_amount'
require 'rfinvoice/decorator/operation_limit_amount'
require 'rfinvoice/decorator/monthly_amount'

module RFinvoice
  module Decorator
    class InvoiceDetails < BaseDecorator
    end
  end
end
