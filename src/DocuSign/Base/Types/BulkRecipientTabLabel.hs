module DocuSign.Base.Types.BulkRecipientTabLabel where

import DocuSign.Base.Types.Common

data BulkRecipientTabLabel = BulkRecipientTabLabel
  { bulkRecipientTabLabelName  :: Maybe Text
  , bulkRecipientTabLabelValue :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BulkRecipientTabLabel where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "bulkRecipientTabLabel")
instance ToJSON BulkRecipientTabLabel where
  toJSON = genericToJSON (removeFieldLabelPrefix "bulkRecipientTabLabel")

instance Default BulkRecipientTabLabel
