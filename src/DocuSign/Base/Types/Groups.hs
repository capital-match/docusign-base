module DocuSign.Base.Types.Groups where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Group

data Groups = Groups
  { groupsEndPosition   :: Maybe Text
  , groupsGroups        :: Maybe [Group]
  , groupsNextUri       :: Maybe Text
  , groupsPreviousUri   :: Maybe Text
  , groupsResultSetSize :: Maybe Text
  , groupsStartPosition :: Maybe Text
  , groupsTotalSetSize  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Groups where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "groups")
instance ToJSON Groups where
  toJSON = genericToJSON (removeFieldLabelPrefix "groups")

instance Default Groups
