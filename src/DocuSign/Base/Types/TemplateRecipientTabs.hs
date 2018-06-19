module DocuSign.Base.Types.TemplateRecipientTabs where

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

data TemplateRecipientTabs = TemplateRecipientTabs
  { templateRecipientTabsApproveTabs          :: Maybe [Approve]
  , templateRecipientTabsCheckboxTabs         :: Maybe [Checkbox]
  , templateRecipientTabsCompanyTabs          :: Maybe [Company]
  , templateRecipientTabsDateSignedTabs       :: Maybe [DateSigned]
  , templateRecipientTabsDateTabs             :: Maybe [Date]
  , templateRecipientTabsDeclineTabs          :: Maybe [Decline]
  , templateRecipientTabsEmailAddressTabs     :: Maybe [EmailAddress]
  , templateRecipientTabsEmailTabs            :: Maybe [Email]
  , templateRecipientTabsEnvelopeIdTabs       :: Maybe [EnvelopeId]
  , templateRecipientTabsFirstNameTabs        :: Maybe [FirstName]
  , templateRecipientTabsFormulaTabs          :: Maybe [FormulaTab]
  , templateRecipientTabsFullNameTabs         :: Maybe [FullName]
  , templateRecipientTabsInitialHereTabs      :: Maybe [InitialHere]
  , templateRecipientTabsLastNameTabs         :: Maybe [LastName]
  , templateRecipientTabsListTabs             :: Maybe [List]
  , templateRecipientTabsNoteTabs             :: Maybe [Note]
  , templateRecipientTabsNumberTabs           :: Maybe [Double]
  , templateRecipientTabsRadioGroupTabs       :: Maybe [RadioGroup]
  , templateRecipientTabsSignerAttachmentTabs :: Maybe [SignerAttachment]
  , templateRecipientTabsSignHereTabs         :: Maybe [SignHere]
  , templateRecipientTabsSsnTabs              :: Maybe [Ssn]
  , templateRecipientTabsTextTabs             :: Maybe [Text]
  , templateRecipientTabsTitleTabs            :: Maybe [Title]
  , templateRecipientTabsViewTabs             :: Maybe [View]
  , templateRecipientTabsZipTabs              :: Maybe [Zip]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateRecipientTabs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateRecipientTabs")
instance ToJSON TemplateRecipientTabs where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateRecipientTabs")

instance Default TemplateRecipientTabs
