module DocuSign.Base.Types.Brand where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.BrandEmailContent
import DocuSign.Base.Types.BrandLink
import DocuSign.Base.Types.BrandLogos
import DocuSign.Base.Types.BrandResourceUrls
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.NameValue

data Brand = Brand
  { brandBrandCompany            :: Maybe Text
  , brandBrandId                 :: Maybe Text
  , brandBrandName               :: Maybe Text
  , brandColors                  :: Maybe [NameValue]
  , brandEmailContent            :: Maybe [BrandEmailContent]
  , brandErrorDetails            :: Maybe ErrorDetails
  , brandIsOverridingCompanyName :: Maybe Text
  , brandIsSendingDefault        :: Maybe Text
  , brandIsSigningDefault        :: Maybe Text
  , brandLandingPages            :: Maybe [NameValue]
  , brandLinks                   :: Maybe [BrandLink]
  , brandLogos                   :: Maybe BrandLogos
  , brandResources               :: Maybe BrandResourceUrls
  } deriving (Show, Eq, Generic)

instance FromJSON Brand where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "brand")
instance ToJSON Brand where
  toJSON = genericToJSON (removeFieldLabelPrefix "brand")

instance Default Brand
