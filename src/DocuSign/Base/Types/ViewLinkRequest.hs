module DocuSign.Base.Types.ViewLinkRequest where

import DocuSign.Base.Types.Common

data ViewLinkRequest = ViewLinkRequest
  { viewLinkRequestEmail     :: Maybe Text
  , viewLinkRequestReturnUrl :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON ViewLinkRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "viewLinkRequest")
instance ToJSON ViewLinkRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix "viewLinkRequest")

instance Default ViewLinkRequest
