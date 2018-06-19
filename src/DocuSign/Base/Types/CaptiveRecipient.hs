module DocuSign.Base.Types.CaptiveRecipient where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data CaptiveRecipient = CaptiveRecipient
  { captiveRecipientClientUserId :: Maybe Text
  , captiveRecipientEmail        :: Maybe Text
  , captiveRecipientErrorDetails :: Maybe ErrorDetails
  , captiveRecipientUserName     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CaptiveRecipient where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "captiveRecipient")
instance ToJSON CaptiveRecipient where
  toJSON = genericToJSON (removeFieldLabelPrefix "captiveRecipient")

instance Default CaptiveRecipient
