module DocuSign.Base.Types.TemplateViews where

import DocuSign.Base.Types.Common

data TemplateViews = TemplateViews
  { templateViewsUrl :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateViews where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateViews")
instance ToJSON TemplateViews where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateViews")

instance Default TemplateViews
