module DocuSign.Base.Types.UserSignaturesInformation where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserSignatures

data UserSignaturesInformation = UserSignaturesInformation
  { userSignaturesInformationUserSignatures :: Maybe [UserSignatures]
  } deriving (Show, Eq, Generic)

instance FromJSON UserSignaturesInformation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userSignaturesInformation")
instance ToJSON UserSignaturesInformation where
  toJSON = genericToJSON (removeFieldLabelPrefix "userSignaturesInformation")

instance Default UserSignaturesInformation
