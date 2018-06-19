module DocuSign.Base.Types.ContactGetResponse where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Contacts

data ContactGetResponse = ContactGetResponse
  { contactGetResponseContacts      :: Maybe [Contacts]
  , contactGetResponseEndPosition   :: Maybe Text
  , contactGetResponseNextUri       :: Maybe Text
  , contactGetResponsePreviousUri   :: Maybe Text
  , contactGetResponseResultSetSize :: Maybe Text
  , contactGetResponseStartPosition :: Maybe Text
  , contactGetResponseTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ContactGetResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "contactGetResponse")
instance ToJSON ContactGetResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix "contactGetResponse")

instance Default ContactGetResponse
