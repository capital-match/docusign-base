module DocuSign.Base.Types.BulkRecipientsSummaryResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkRecipient
import DocuSign.Base.Types.ErrorDetails

data BulkRecipientsSummaryResponse = BulkRecipientsSummaryResponse
  { bulkRecipientsSummaryResponseBulkRecipients      :: Maybe [BulkRecipient]
  , bulkRecipientsSummaryResponseBulkRecipientsCount :: Maybe Text
  , bulkRecipientsSummaryResponseBulkRecipientsUri   :: Maybe Text
  , bulkRecipientsSummaryResponseErrorDetails        :: Maybe [ErrorDetails]
  } deriving (Show, Eq, Generic)

instance FromJSON BulkRecipientsSummaryResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkRecipientsSummaryResponse")
instance ToJSON BulkRecipientsSummaryResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkRecipientsSummaryResponse")

instance Default BulkRecipientsSummaryResponse
