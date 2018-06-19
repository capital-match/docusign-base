module DocuSign.Base.Types.AccountTabSettings where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.SettingsMetadata

data AccountTabSettings = AccountTabSettings
  { accountTabSettingsAllowTabOrder                        :: Maybe Text
  , accountTabSettingsAllowTabOrderMetadata                :: Maybe SettingsMetadata
  , accountTabSettingsApproveDeclineTabsEnabled            :: Maybe Text
  , accountTabSettingsApproveDeclineTabsMetadata           :: Maybe SettingsMetadata
  , accountTabSettingsCalculatedFieldsEnabled              :: Maybe Text
  , accountTabSettingsCalculatedFieldsMetadata             :: Maybe SettingsMetadata
  , accountTabSettingsCheckboxTabsEnabled                  :: Maybe Text
  , accountTabSettingsCheckboxTabsMetadata                 :: Maybe SettingsMetadata
  , accountTabSettingsDataFieldRegexEnabled                :: Maybe Text
  , accountTabSettingsDataFieldRegexMetadata               :: Maybe SettingsMetadata
  , accountTabSettingsDataFieldSizeEnabled                 :: Maybe Text
  , accountTabSettingsDataFieldSizeMetadata                :: Maybe SettingsMetadata
  , accountTabSettingsFirstLastEmailTabsEnabled            :: Maybe Text
  , accountTabSettingsFirstLastEmailTabsMetadata           :: Maybe SettingsMetadata
  , accountTabSettingsListTabsEnabled                      :: Maybe Text
  , accountTabSettingsListTabsMetadata                     :: Maybe SettingsMetadata
  , accountTabSettingsNoteTabsEnabled                      :: Maybe Text
  , accountTabSettingsNoteTabsMetadata                     :: Maybe SettingsMetadata
  , accountTabSettingsRadioTabsEnabled                     :: Maybe Text
  , accountTabSettingsRadioTabsMetadata                    :: Maybe SettingsMetadata
  , accountTabSettingsSavingCustomTabsEnabled              :: Maybe Text
  , accountTabSettingsSavingCustomTabsMetadata             :: Maybe SettingsMetadata
  , accountTabSettingsSenderToChangeTabAssignmentsEnabled  :: Maybe Text
  , accountTabSettingsSenderToChangeTabAssignmentsMetadata :: Maybe SettingsMetadata
  , accountTabSettingsSharedCustomTabsEnabled              :: Maybe Text
  , accountTabSettingsSharedCustomTabsMetadata             :: Maybe SettingsMetadata
  , accountTabSettingsTabDataLabelEnabled                  :: Maybe Text
  , accountTabSettingsTabDataLabelMetadata                 :: Maybe SettingsMetadata
  , accountTabSettingsTabLocationEnabled                   :: Maybe Text
  , accountTabSettingsTabLocationMetadata                  :: Maybe SettingsMetadata
  , accountTabSettingsTabLockingEnabled                    :: Maybe Text
  , accountTabSettingsTabLockingMetadata                   :: Maybe SettingsMetadata
  , accountTabSettingsTabScaleEnabled                      :: Maybe Text
  , accountTabSettingsTabScaleMetadata                     :: Maybe SettingsMetadata
  , accountTabSettingsTabTextFormattingEnabled             :: Maybe Text
  , accountTabSettingsTabTextFormattingMetadata            :: Maybe SettingsMetadata
  , accountTabSettingsTextTabsEnabled                      :: Maybe Text
  , accountTabSettingsTextTabsMetadata                     :: Maybe SettingsMetadata
  } deriving (Show, Eq, Generic)

instance FromJSON AccountTabSettings where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "accountTabSettings")
instance ToJSON AccountTabSettings where
  toJSON = genericToJSON (removeFieldLabelPrefix "accountTabSettings")

instance Default AccountTabSettings
