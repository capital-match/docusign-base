module DocuSign.Base.Types.Company where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data Company = Company
  { companyAnchorCaseSensitive       :: Maybe Text
  , companyAnchorHorizontalAlignment :: Maybe Text
  , companyAnchorIgnoreIfNotPresent  :: Maybe Text
  , companyAnchorMatchWholeWord      :: Maybe Text
  , companyAnchorString              :: Maybe Text
  , companyAnchorUnits               :: Maybe Text
  , companyAnchorXOffset             :: Maybe Text
  , companyAnchorYOffset             :: Maybe Text
  , companyBold                      :: Maybe Text
  , companyConcealValueOnDocument    :: Maybe Text
  , companyConditionalParentLabel    :: Maybe Text
  , companyConditionalParentValue    :: Maybe Text
  , companyCustomTabId               :: Maybe Text
  , companyDisableAutoSize           :: Maybe Text
  , companyDocumentId                :: Maybe Text
  , companyErrorDetails              :: Maybe ErrorDetails
  , companyFont                      :: Maybe Text
  , companyFontColor                 :: Maybe Text
  , companyFontSize                  :: Maybe Text
  , companyItalic                    :: Maybe Text
  , companyLocked                    :: Maybe Text
  , companyMaxLength                 :: Maybe Int
  , companyMergeField                :: Maybe MergeField
  , companyName                      :: Maybe Text
  , companyOriginalValue             :: Maybe Text
  , companyPageNumber                :: Maybe Text
  , companyRecipientId               :: Maybe Text
  , companyRequired                  :: Maybe Text
  , companyStatus                    :: Maybe Text
  , companyTabId                     :: Maybe Text
  , companyTabLabel                  :: Maybe Text
  , companyTabOrder                  :: Maybe Text
  , companyTemplateLocked            :: Maybe Text
  , companyTemplateRequired          :: Maybe Text
  , companyUnderline                 :: Maybe Text
  , companyValue                     :: Maybe Text
  , companyWidth                     :: Maybe Int
  , companyXPosition                 :: Maybe Text
  , companyYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON Company where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "company")
instance ToJSON Company where
  toJSON = genericToJSON (removeFieldLabelPrefix "company")

instance Default Company
