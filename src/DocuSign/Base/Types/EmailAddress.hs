module DocuSign.Base.Types.EmailAddress where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.ErrorDetails
import DocuSign.Base.Types.MergeField

data EmailAddress = EmailAddress
  { emailAddressAnchorCaseSensitive       :: Maybe Text
  , emailAddressAnchorHorizontalAlignment :: Maybe Text
  , emailAddressAnchorIgnoreIfNotPresent  :: Maybe Text
  , emailAddressAnchorMatchWholeWord      :: Maybe Text
  , emailAddressAnchorString              :: Maybe Text
  , emailAddressAnchorUnits               :: Maybe Text
  , emailAddressAnchorXOffset             :: Maybe Text
  , emailAddressAnchorYOffset             :: Maybe Text
  , emailAddressBold                      :: Maybe Text
  , emailAddressConditionalParentLabel    :: Maybe Text
  , emailAddressConditionalParentValue    :: Maybe Text
  , emailAddressCustomTabId               :: Maybe Text
  , emailAddressDocumentId                :: Maybe Text
  , emailAddressErrorDetails              :: Maybe ErrorDetails
  , emailAddressFont                      :: Maybe Text
  , emailAddressFontColor                 :: Maybe Text
  , emailAddressFontSize                  :: Maybe Text
  , emailAddressItalic                    :: Maybe Text
  , emailAddressMergeField                :: Maybe MergeField
  , emailAddressName                      :: Maybe Text
  , emailAddressPageNumber                :: Maybe Text
  , emailAddressRecipientId               :: Maybe Text
  , emailAddressStatus                    :: Maybe Text
  , emailAddressTabId                     :: Maybe Text
  , emailAddressTabLabel                  :: Maybe Text
  , emailAddressTabOrder                  :: Maybe Text
  , emailAddressTemplateLocked            :: Maybe Text
  , emailAddressTemplateRequired          :: Maybe Text
  , emailAddressUnderline                 :: Maybe Text
  , emailAddressValue                     :: Maybe Text
  , emailAddressXPosition                 :: Maybe Text
  , emailAddressYPosition                 :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON EmailAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "emailAddress")
instance ToJSON EmailAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix "emailAddress")

instance Default EmailAddress
