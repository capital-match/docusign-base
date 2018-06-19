module DocuSign.Base.Types.TemplateBulkRecipients where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkRecipient

data TemplateBulkRecipients = TemplateBulkRecipients
  { templateBulkRecipientsBulkRecipients :: Maybe [BulkRecipient]
  , templateBulkRecipientsEndPosition    :: Maybe Text
  , templateBulkRecipientsNextUri        :: Maybe Text
  , templateBulkRecipientsPreviousUri    :: Maybe Text
  , templateBulkRecipientsResultSetSize  :: Maybe Text
  , templateBulkRecipientsStartPosition  :: Maybe Text
  , templateBulkRecipientsTotalSetSize   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateBulkRecipients where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateBulkRecipients")
instance ToJSON TemplateBulkRecipients where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateBulkRecipients")

instance Default TemplateBulkRecipients
