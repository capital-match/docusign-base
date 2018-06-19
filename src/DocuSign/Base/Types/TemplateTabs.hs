module DocuSign.Base.Types.TemplateTabs where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.Approve
import DocuSign.Base.Types.Checkbox
import DocuSign.Base.Types.Company
import DocuSign.Base.Types.Date
import DocuSign.Base.Types.DateSigned
import DocuSign.Base.Types.Decline
import DocuSign.Base.Types.Email
import DocuSign.Base.Types.EmailAddress
import DocuSign.Base.Types.EnvelopeId
import DocuSign.Base.Types.FirstName
import DocuSign.Base.Types.FormulaTab
import DocuSign.Base.Types.FullName
import DocuSign.Base.Types.InitialHere
import DocuSign.Base.Types.LastName
import DocuSign.Base.Types.List
import DocuSign.Base.Types.Note
import DocuSign.Base.Types.RadioGroup
import DocuSign.Base.Types.SignerAttachment
import DocuSign.Base.Types.SignHere
import DocuSign.Base.Types.Ssn
import DocuSign.Base.Types.Title
import DocuSign.Base.Types.View
import DocuSign.Base.Types.Zip

data TemplateTabs = TemplateTabs
  { templateTabsApproveTabs          :: Maybe [Approve]
  , templateTabsCheckboxTabs         :: Maybe [Checkbox]
  , templateTabsCompanyTabs          :: Maybe [Company]
  , templateTabsDateSignedTabs       :: Maybe [DateSigned]
  , templateTabsDateTabs             :: Maybe [Date]
  , templateTabsDeclineTabs          :: Maybe [Decline]
  , templateTabsEmailAddressTabs     :: Maybe [EmailAddress]
  , templateTabsEmailTabs            :: Maybe [Email]
  , templateTabsEnvelopeIdTabs       :: Maybe [EnvelopeId]
  , templateTabsFirstNameTabs        :: Maybe [FirstName]
  , templateTabsFormulaTabs          :: Maybe [FormulaTab]
  , templateTabsFullNameTabs         :: Maybe [FullName]
  , templateTabsInitialHereTabs      :: Maybe [InitialHere]
  , templateTabsLastNameTabs         :: Maybe [LastName]
  , templateTabsListTabs             :: Maybe [List]
  , templateTabsNoteTabs             :: Maybe [Note]
  , templateTabsNumberTabs           :: Maybe [Double]
  , templateTabsRadioGroupTabs       :: Maybe [RadioGroup]
  , templateTabsSignerAttachmentTabs :: Maybe [SignerAttachment]
  , templateTabsSignHereTabs         :: Maybe [SignHere]
  , templateTabsSsnTabs              :: Maybe [Ssn]
  , templateTabsTextTabs             :: Maybe [Text]
  , templateTabsTitleTabs            :: Maybe [Title]
  , templateTabsViewTabs             :: Maybe [View]
  , templateTabsZipTabs              :: Maybe [Zip]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateTabs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateTabs")
instance ToJSON TemplateTabs where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateTabs")

instance Default TemplateTabs
