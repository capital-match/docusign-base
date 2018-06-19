module DocuSign.Base.Types.ListItem where

import DocuSign.Base.Types.Common

data ListItem = ListItem
  { listItemSelected :: Maybe Text
  , listItemText     :: Maybe Text
  , listItemValue    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ListItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "listItem")
instance ToJSON ListItem where
  toJSON = genericToJSON (removeFieldLabelPrefix "listItem")

instance Default ListItem
