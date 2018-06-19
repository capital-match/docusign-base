module DocuSign.Base.Types.BulkRecipientSignatureProvider where

import DocuSign.Base.Types.Common

data BulkRecipientSignatureProvider = BulkRecipientSignatureProvider
  { bulkRecipientSignatureProviderName  :: Maybe Text
  , bulkRecipientSignatureProviderValue :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BulkRecipientSignatureProvider where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkRecipientSignatureProvider")
instance ToJSON BulkRecipientSignatureProvider where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkRecipientSignatureProvider")

instance Default BulkRecipientSignatureProvider
