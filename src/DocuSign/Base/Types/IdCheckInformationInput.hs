module DocuSign.Base.Types.IdCheckInformationInput where

import DocuSign.Base.Types.Common
import DocuSign.Base.Types.AddressInformationInput
import DocuSign.Base.Types.DobInformationInput
import DocuSign.Base.Types.Ssn4InformationInput
import DocuSign.Base.Types.Ssn9InformationInput

data IdCheckInformationInput = IdCheckInformationInput
  { idCheckInformationInputAddressInformationInput :: Maybe AddressInformationInput
  , idCheckInformationInputDobInformationInput     :: Maybe DobInformationInput
  , idCheckInformationInputSsn4InformationInput    :: Maybe Ssn4InformationInput
  , idCheckInformationInputSsn9InformationInput    :: Maybe Ssn9InformationInput
  } deriving (Show, Eq, Generic)

instance FromJSON IdCheckInformationInput where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "idCheckInformationInput")
instance ToJSON IdCheckInformationInput where
  toJSON = genericToJSON (removeFieldLabelPrefix "idCheckInformationInput")

instance Default IdCheckInformationInput
