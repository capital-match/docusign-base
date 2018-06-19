module DocuSign.Base.Types.UserInformationList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Users

data UserInformationList = UserInformationList
  { userInformationListEndPosition   :: Maybe Text
  , userInformationListNextUri       :: Maybe Text
  , userInformationListPreviousUri   :: Maybe Text
  , userInformationListResultSetSize :: Maybe Text
  , userInformationListStartPosition :: Maybe Text
  , userInformationListTotalSetSize  :: Maybe Text
  , userInformationListUsers         :: Maybe [Users]
  } deriving (Show, Eq, Generic)

instance FromJSON UserInformationList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "userInformationList")
instance ToJSON UserInformationList where
  toJSON = genericToJSON (removeFieldLabelPrefix "userInformationList")

instance Default UserInformationList
