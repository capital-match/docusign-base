module DocuSign.Base.Types.SigningGroupUser where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails

data SigningGroupUser = SigningGroupUser
  { signingGroupUserEmail        :: Maybe Text
  , signingGroupUserErrorDetails :: Maybe ErrorDetails
  , signingGroupUserUserName     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SigningGroupUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signingGroupUser")
instance ToJSON SigningGroupUser where
  toJSON = genericToJSON (removeFieldLabelPrefix "signingGroupUser")

instance Default SigningGroupUser
