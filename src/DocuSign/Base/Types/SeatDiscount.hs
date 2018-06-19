module DocuSign.Base.Types.SeatDiscount where

import DocuSign.Base.Types.Common

data SeatDiscount = SeatDiscount
  { seatDiscountBeginSeatCount  :: Maybe Text
  , seatDiscountDiscountPercent :: Maybe Text
  , seatDiscountEndSeatCount    :: Maybe Text
  } deriving (Show, Eq, Generic)

instance FromJSON SeatDiscount where
  parseJSON = genericParseJSON (removeFieldLabelPrefix "seatDiscount")
instance ToJSON SeatDiscount where
  toJSON = genericToJSON (removeFieldLabelPrefix "seatDiscount")

instance Default SeatDiscount
