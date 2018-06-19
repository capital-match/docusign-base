module DocuSign.Base.Types.BrandEmailContent where

import DocuSign.Base.Types.Common

data BrandEmailContent = BrandEmailContent
  { brandEmailContentContent          :: Maybe Text
  , brandEmailContentEmailContentType :: Maybe Text
  , brandEmailContentEmailToLink      :: Maybe Text
  , brandEmailContentLinkText         :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON BrandEmailContent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brandEmailContent")
instance ToJSON BrandEmailContent where
  toJSON = genericToJSON (removeFieldLabelPrefix "brandEmailContent")

instance Default BrandEmailContent
