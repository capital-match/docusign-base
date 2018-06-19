module DocuSign.Base.Types.EnvelopeViews where

import DocuSign.Base.Types.Common

data EnvelopeViews = EnvelopeViews
  { envelopeViewsUrl :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EnvelopeViews where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "envelopeViews")
instance ToJSON EnvelopeViews where
  toJSON = genericToJSON (removeFieldLabelPrefix "envelopeViews")

instance Default EnvelopeViews
