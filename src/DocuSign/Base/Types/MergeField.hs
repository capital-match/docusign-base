module DocuSign.Base.Types.MergeField where

import DocuSign.Base.Types.Common

data MergeField = MergeField
  { mergeFieldAllowSenderToEdit :: Maybe Text
  , mergeFieldConfigurationType :: Maybe Text
  , mergeFieldPath              :: Maybe Text
  , mergeFieldRow               :: Maybe Text
  , mergeFieldWriteBack         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON MergeField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "mergeField")
instance ToJSON MergeField where
  toJSON = genericToJSON (removeFieldLabelPrefix "mergeField")

instance Default MergeField
