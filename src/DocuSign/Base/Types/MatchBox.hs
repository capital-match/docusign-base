module DocuSign.Base.Types.MatchBox where

import DocuSign.Base.Types.Common

data MatchBox = MatchBox
  { matchBoxHeight     :: Maybe Int
  , matchBoxPageNumber :: Maybe Int
  , matchBoxWidth      :: Maybe Int
  , matchBoxXPosition  :: Maybe Int
  , matchBoxYPosition  :: Maybe Int
  } deriving (Show, Eq, Generic)

instance FromJSON MatchBox where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "matchBox")
instance ToJSON MatchBox where
  toJSON = genericToJSON (removeFieldLabelPrefix "matchBox")

instance Default MatchBox
