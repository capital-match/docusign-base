{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}

module DocuSign.Base.ContentTypes
  ( GIF
  , JPEG
  , PDF
  , PNG
  , fromBytes
  , toBytes
  ) where

import Data.ByteString        ( ByteString )
import Data.ByteString.Lazy   ( fromStrict
                              , toStrict )
import Data.Typeable          ( Typeable )
import Network.HTTP.Media     ( (//) )
import Servant.API            ( Accept
                              , MimeRender
                              , MimeUnrender
                              , contentType
                              , mimeRender
                              , mimeUnrender )

-- | Graphics Interchange Format
newtype GIF = GIF ByteString
  deriving Typeable

-- | Joint Photographic Expert Group Format
newtype JPEG = JPEG ByteString
  deriving Typeable

-- | Portable Document Format
newtype PDF = PDF ByteString
  deriving Typeable

-- | Portable Network Graphics Format
newtype PNG = PNG ByteString
  deriving Typeable

instance Show GIF  where show _ = "GIF"
instance Show JPEG where show _ = "JPEG"
instance Show PDF  where show _ = "PDF"
instance Show PNG  where show _ = "PNG"

instance Accept GIF  where contentType _ = "image"       // "gif"
instance Accept JPEG where contentType _ = "image"       // "jpeg"
instance Accept PDF  where contentType _ = "application" // "pdf"
instance Accept PNG  where contentType _ = "image"       // "png"

instance MimeRender GIF  GIF  where mimeRender _ = fromStrict . toBytes
instance MimeRender JPEG JPEG where mimeRender _ = fromStrict . toBytes
instance MimeRender PDF  PDF  where mimeRender _ = fromStrict . toBytes
instance MimeRender PNG  PNG  where mimeRender _ = fromStrict . toBytes

instance MimeUnrender GIF  GIF  where mimeUnrender _ = pure . fromBytes . toStrict
instance MimeUnrender JPEG JPEG where mimeUnrender _ = pure . fromBytes . toStrict
instance MimeUnrender PDF  PDF  where mimeUnrender _ = pure . fromBytes . toStrict
instance MimeUnrender PNG  PNG  where mimeUnrender _ = pure . fromBytes . toStrict

class ToBytes a where toBytes :: a -> ByteString

instance ToBytes GIF  where toBytes (GIF  a) = a
instance ToBytes JPEG where toBytes (JPEG a) = a
instance ToBytes PDF  where toBytes (PDF  a) = a
instance ToBytes PNG  where toBytes (PNG  a) = a

class FromBytes a where fromBytes :: ByteString -> a

instance FromBytes GIF  where fromBytes = GIF
instance FromBytes JPEG where fromBytes = JPEG
instance FromBytes PDF  where fromBytes = PDF
instance FromBytes PNG  where fromBytes = PNG

