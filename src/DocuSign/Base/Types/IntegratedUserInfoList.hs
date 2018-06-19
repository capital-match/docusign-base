module DocuSign.Base.Types.IntegratedUserInfoList where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserInfo

data IntegratedUserInfoList = IntegratedUserInfoList
  { integratedUserInfoListAllUsersSelected :: Maybe Text
  , integratedUserInfoListEndPosition      :: Maybe Text
  , integratedUserInfoListNextUri          :: Maybe Text
  , integratedUserInfoListPreviousUri      :: Maybe Text
  , integratedUserInfoListResultSetSize    :: Maybe Text
  , integratedUserInfoListStartPosition    :: Maybe Text
  , integratedUserInfoListTotalSetSize     :: Maybe Text
  , integratedUserInfoListUsers            :: Maybe [UserInfo]
  } deriving (Show, Eq, Generic)

instance FromJSON IntegratedUserInfoList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "integratedUserInfoList")
instance ToJSON IntegratedUserInfoList where
  toJSON = genericToJSON (removeFieldLabelPrefix "integratedUserInfoList")

instance Default IntegratedUserInfoList
