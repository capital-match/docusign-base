module DocuSign.Base.Types.BrandResources where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.UserInfo

data BrandResources = BrandResources
  { brandResourcesCreatedByUserInfo    :: Maybe UserInfo
  , brandResourcesCreatedDate          :: Maybe Text
  , brandResourcesModifiedByUserInfo   :: Maybe UserInfo
  , brandResourcesModifiedDate         :: Maybe Text
  , brandResourcesModifiedTemplates    :: Maybe [Text]
  , brandResourcesResourcesContentType :: Maybe Text
  , brandResourcesResourcesContentUri  :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BrandResources where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandResources")
instance ToJSON BrandResources where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandResources")

instance Default BrandResources
