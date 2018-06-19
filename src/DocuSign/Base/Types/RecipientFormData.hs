module DocuSign.Base.Types.RecipientFormData where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.NameValue

data RecipientFormData = RecipientFormData
  { recipientFormDataDeclinedTime  :: Maybe Text
  , recipientFormDataDeliveredTime :: Maybe Text
  , recipientFormDataEmail         :: Maybe Text
  , recipientFormDataFormData      :: Maybe [NameValue]
  , recipientFormDataName          :: Maybe Text
  , recipientFormDataRecipientId   :: Maybe Text
  , recipientFormDataSentTime      :: Maybe Text
  , recipientFormDataSignedTime    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON RecipientFormData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "recipientFormData")
instance ToJSON RecipientFormData where
  toJSON = genericToJSON (removeFieldLabelPrefix "recipientFormData")

instance Default RecipientFormData
