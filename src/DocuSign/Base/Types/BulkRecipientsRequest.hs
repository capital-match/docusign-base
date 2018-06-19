module DocuSign.Base.Types.BulkRecipientsRequest where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkRecipient

data BulkRecipientsRequest = BulkRecipientsRequest
  { bulkRecipientsRequestBulkRecipients :: Maybe [BulkRecipient]
  } deriving (Show, Eq, Generic)

instance FromJSON BulkRecipientsRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkRecipientsRequest")
instance ToJSON BulkRecipientsRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkRecipientsRequest")

instance Default BulkRecipientsRequest
