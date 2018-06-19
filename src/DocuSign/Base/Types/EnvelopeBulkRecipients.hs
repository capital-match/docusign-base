module DocuSign.Base.Types.EnvelopeBulkRecipients where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkRecipient

data EnvelopeBulkRecipients = EnvelopeBulkRecipients
  { envelopeBulkRecipientsBulkRecipients :: Maybe [BulkRecipient]
  , envelopeBulkRecipientsEndPosition    :: Maybe Text
  , envelopeBulkRecipientsNextUri        :: Maybe Text
  , envelopeBulkRecipientsPreviousUri    :: Maybe Text
  , envelopeBulkRecipientsResultSetSize  :: Maybe Text
  , envelopeBulkRecipientsStartPosition  :: Maybe Text
  , envelopeBulkRecipientsTotalSetSize   :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeBulkRecipients where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeBulkRecipients")
instance ToJSON EnvelopeBulkRecipients where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeBulkRecipients")

instance Default EnvelopeBulkRecipients
