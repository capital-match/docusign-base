module DocuSign.Base.Types.CustomTabs where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.MergeField
import DocuSign.Base.Types.PropertyMetadata

data CustomTabs = CustomTabs
  { customTabsAnchor                    :: Maybe Text
  , customTabsAnchorCaseSensitive       :: Maybe Text
  , customTabsAnchorHorizontalAlignment :: Maybe Text
  , customTabsAnchorIgnoreIfNotPresent  :: Maybe Text
  , customTabsAnchorMatchWholeWord      :: Maybe Text
  , customTabsAnchorUnits               :: Maybe Text
  , customTabsAnchorXOffset             :: Maybe Text
  , customTabsAnchorYOffset             :: Maybe Text
  , customTabsBold                      :: Maybe Text
  , customTabsConcealValueOnDocument    :: Maybe Text
  , customTabsCreatedByDisplayName      :: Maybe Text
  , customTabsCreatedByUserId           :: Maybe Text
  , customTabsCustomTabId               :: Maybe Text
  , customTabsDisableAutoSize           :: Maybe Text
  , customTabsEditable                  :: Maybe Text
  , customTabsFont                      :: Maybe Text
  , customTabsFontColor                 :: Maybe Text
  , customTabsFontSize                  :: Maybe Text
  , customTabsHeight                    :: Maybe Text
  , customTabsIncludedInEmail           :: Maybe Text
  , customTabsInitialValue              :: Maybe Text
  , customTabsItalic                    :: Maybe Text
  , customTabsItems                     :: Maybe [Text]
  , customTabsLastModified              :: Maybe Text
  , customTabsLastModifiedByDisplayName :: Maybe Text
  , customTabsLastModifiedByUserId      :: Maybe Text
  , customTabsLocked                    :: Maybe Text
  , customTabsMaximumLength             :: Maybe Text
  , customTabsMergeField                :: Maybe MergeField
  , customTabsName                      :: Maybe Text
  , customTabsRequired                  :: Maybe Text
  , customTabsScaleValue                :: Maybe Text
  , customTabsShared                    :: Maybe Text
  , customTabsStampType                 :: Maybe Text
  , customTabsStampTypeMetadata         :: Maybe PropertyMetadata
  , customTabsTabLabel                  :: Maybe Text
  , customTabsType                      :: Maybe Text
  , customTabsUnderline                 :: Maybe Text
  , customTabsValidationMessage         :: Maybe Text
  , customTabsValidationPattern         :: Maybe Text
  , customTabsWidth                     :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON CustomTabs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "customTabs")
instance ToJSON CustomTabs where
  toJSON = genericToJSON (removeFieldLabelPrefix "customTabs")

instance Default CustomTabs
