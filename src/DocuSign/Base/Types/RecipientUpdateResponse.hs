module DocuSign.Base.Types.RecipientUpdateResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.EnvelopeRecipientTabs
import DocuSign.Base.Types.ErrorDetails

data RecipientUpdateResponse = RecipientUpdateResponse
  { recipientUpdateResponseErrorDetails :: Maybe ErrorDetails
  , recipientUpdateResponseRecipientId  :: Maybe Text
  , recipientUpdateResponseTabs         :: Maybe EnvelopeRecipientTabs
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientUpdateResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientUpdateResponse")
instance ToJSON RecipientUpdateResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientUpdateResponse")

instance Default RecipientUpdateResponse
