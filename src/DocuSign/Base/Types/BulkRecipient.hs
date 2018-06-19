module DocuSign.Base.Types.BulkRecipient where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BulkRecipientSignatureProvider
import DocuSign.Base.Types.BulkRecipientTabLabel
import DocuSign.Base.Types.ErrorDetails

data BulkRecipient = BulkRecipient
  { bulkRecipientAccessCode                     :: Maybe Text
  , bulkRecipientEmail                          :: Maybe Text
  , bulkRecipientErrorDetails                   :: Maybe [ErrorDetails]
  , bulkRecipientIdentification                 :: Maybe Text
  , bulkRecipientName                           :: Maybe Text
  , bulkRecipientNote                           :: Maybe Text
  , bulkRecipientPhoneNumber                    :: Maybe Text
  , bulkRecipientRecipientSignatureProviderInfo :: Maybe [BulkRecipientSignatureProvider]
  , bulkRecipientRowNumber                      :: Maybe Text
  , bulkRecipientTabLabels                      :: Maybe [BulkRecipientTabLabel]
  } deriving (Show, Eq, Generic)

instance FromJSON BulkRecipient where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkRecipient")
instance ToJSON BulkRecipient where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkRecipient")

instance Default BulkRecipient
