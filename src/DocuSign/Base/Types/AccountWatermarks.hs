module DocuSign.Base.Types.AccountWatermarks where

import DocuSign.Base.Types.Common

data AccountWatermarks = AccountWatermarks
  { accountWatermarksDisplayAngle  :: Maybe Text
  , accountWatermarksEnabled       :: Maybe Text
  , accountWatermarksFont          :: Maybe Text
  , accountWatermarksFontColor     :: Maybe Text
  , accountWatermarksFontSize      :: Maybe Text
  , accountWatermarksId            :: Maybe Text
  , accountWatermarksImageBase64   :: Maybe Text
  , accountWatermarksTransparency  :: Maybe Text
  , accountWatermarksWatermarkText :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON AccountWatermarks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountWatermarks")
instance ToJSON AccountWatermarks where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountWatermarks")

instance Default AccountWatermarks
