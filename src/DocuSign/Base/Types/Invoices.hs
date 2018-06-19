module DocuSign.Base.Types.Invoices where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BillingInvoiceItem

data Invoices = Invoices
  { invoicesAmount           :: Maybe Text
  , invoicesBalance          :: Maybe Text
  , invoicesDueDate          :: Maybe Text
  , invoicesInvoiceId        :: Maybe Text
  , invoicesInvoiceItems     :: Maybe [BillingInvoiceItem]
  , invoicesInvoiceNumber    :: Maybe Text
  , invoicesInvoiceUri       :: Maybe Text
  , invoicesNonTaxableAmount :: Maybe Text
  , invoicesPdfAvailable     :: Maybe Text
  , invoicesTaxableAmount    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Invoices where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "invoices")
instance ToJSON Invoices where
  toJSON = genericToJSON (removeFieldLabelPrefix "invoices")

instance Default Invoices
