module DocuSign.Base.Types.SigningGroupUsers where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SigningGroupUser

data SigningGroupUsers = SigningGroupUsers
  { signingGroupUsersUsers :: Maybe [SigningGroupUser]
  } deriving (Show, Eq, Generic)

instance FromJSON SigningGroupUsers where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signingGroupUsers")
instance ToJSON SigningGroupUsers where
  toJSON = genericToJSON (removeFieldLabelPrefix "signingGroupUsers")

instance Default SigningGroupUsers
