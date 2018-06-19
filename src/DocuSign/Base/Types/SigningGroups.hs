module DocuSign.Base.Types.SigningGroups where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.SigningGroupUser

data SigningGroups = SigningGroups
  { signingGroupsCreated        :: Maybe Text
  , signingGroupsCreatedBy      :: Maybe Text
  , signingGroupsErrorDetails   :: Maybe ErrorDetails
  , signingGroupsGroupEmail     :: Maybe Text
  , signingGroupsGroupName      :: Maybe Text
  , signingGroupsGroupType      :: Maybe Text
  , signingGroupsModified       :: Maybe Text
  , signingGroupsModifiedBy     :: Maybe Text
  , signingGroupsSigningGroupId :: Maybe Text
  , signingGroupsUsers          :: Maybe [SigningGroupUser]
  } deriving (Show, Eq, Generic)

instance FromJSON SigningGroups where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "signingGroups")
instance ToJSON SigningGroups where
  toJSON = genericToJSON (removeFieldLabelPrefix "signingGroups")

instance Default SigningGroups
