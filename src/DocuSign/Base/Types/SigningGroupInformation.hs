module DocuSign.Base.Types.SigningGroupInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SigningGroups

data SigningGroupInformation = SigningGroupInformation
  { signingGroupInformationGroups :: Maybe [SigningGroups]
  } deriving (Show, Eq, Generic)

instance FromJSON SigningGroupInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signingGroupInformation")
instance ToJSON SigningGroupInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "signingGroupInformation")

instance Default SigningGroupInformation
