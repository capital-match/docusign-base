module DocuSign.Base.Types.Filter where

import DocuSign.Base.Types.Common

data Filter = Filter
  { filterActionRequired :: Maybe Text
  , filterExpires        :: Maybe Text
  , filterFolderIds      :: Maybe Text
  , filterFromDateTime   :: Maybe Text
  , filterIsTemplate     :: Maybe Text
  , filterOrder          :: Maybe Text
  , filterOrderBy        :: Maybe Text
  , filterSearchTarget   :: Maybe Text
  , filterSearchText     :: Maybe Text
  , filterStatus         :: Maybe Text
  , filterToDateTime     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Filter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "filter")
instance ToJSON Filter where
  toJSON = genericToJSON (removeFieldLabelPrefix "filter")

instance Default Filter
