module DocuSign.Base.Types.TemplateDocumentTabs where

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

data TemplateDocumentTabs = TemplateDocumentTabs
  { templateDocumentTabsApproveTabs          :: Maybe [Approve]
  , templateDocumentTabsCheckboxTabs         :: Maybe [Checkbox]
  , templateDocumentTabsCompanyTabs          :: Maybe [Company]
  , templateDocumentTabsDateSignedTabs       :: Maybe [DateSigned]
  , templateDocumentTabsDateTabs             :: Maybe [Date]
  , templateDocumentTabsDeclineTabs          :: Maybe [Decline]
  , templateDocumentTabsEmailAddressTabs     :: Maybe [EmailAddress]
  , templateDocumentTabsEmailTabs            :: Maybe [Email]
  , templateDocumentTabsEnvelopeIdTabs       :: Maybe [EnvelopeId]
  , templateDocumentTabsFirstNameTabs        :: Maybe [FirstName]
  , templateDocumentTabsFormulaTabs          :: Maybe [FormulaTab]
  , templateDocumentTabsFullNameTabs         :: Maybe [FullName]
  , templateDocumentTabsInitialHereTabs      :: Maybe [InitialHere]
  , templateDocumentTabsLastNameTabs         :: Maybe [LastName]
  , templateDocumentTabsListTabs             :: Maybe [List]
  , templateDocumentTabsNoteTabs             :: Maybe [Note]
  , templateDocumentTabsNumberTabs           :: Maybe [Double]
  , templateDocumentTabsRadioGroupTabs       :: Maybe [RadioGroup]
  , templateDocumentTabsSignerAttachmentTabs :: Maybe [SignerAttachment]
  , templateDocumentTabsSignHereTabs         :: Maybe [SignHere]
  , templateDocumentTabsSsnTabs              :: Maybe [Ssn]
  , templateDocumentTabsTextTabs             :: Maybe [Text]
  , templateDocumentTabsTitleTabs            :: Maybe [Title]
  , templateDocumentTabsViewTabs             :: Maybe [View]
  , templateDocumentTabsZipTabs              :: Maybe [Zip]
  } deriving (Show, Eq, Generic)

instance FromJSON TemplateDocumentTabs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "templateDocumentTabs")
instance ToJSON TemplateDocumentTabs where
  toJSON = genericToJSON (removeFieldLabelPrefix "templateDocumentTabs")

instance Default TemplateDocumentTabs
