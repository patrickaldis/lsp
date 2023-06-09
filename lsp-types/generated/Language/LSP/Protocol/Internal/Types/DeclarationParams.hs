-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DeclarationParams where

import Control.DeepSeq
import GHC.Generics
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.Position
import qualified Language.LSP.Protocol.Internal.Types.ProgressToken
import qualified Language.LSP.Protocol.Internal.Types.TextDocumentIdentifier
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data DeclarationParams = DeclarationParams 
  { {-|
  The text document.
  -}
  _textDocument :: Language.LSP.Protocol.Internal.Types.TextDocumentIdentifier.TextDocumentIdentifier
  , {-|
  The position inside the text document.
  -}
  _position :: Language.LSP.Protocol.Internal.Types.Position.Position
  , {-|
  An optional token that a server can use to report work done progress.
  -}
  _workDoneToken :: (Maybe Language.LSP.Protocol.Internal.Types.ProgressToken.ProgressToken)
  , {-|
  An optional token that a server can use to report partial results (e.g. streaming) to
  the client.
  -}
  _partialResultToken :: (Maybe Language.LSP.Protocol.Internal.Types.ProgressToken.ProgressToken)
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData)

instance Aeson.ToJSON DeclarationParams where
  toJSON (DeclarationParams arg0 arg1 arg2 arg3) = Aeson.object $ concat $  [["textDocument" Aeson..= arg0]
    ,["position" Aeson..= arg1]
    ,"workDoneToken" Language.LSP.Protocol.Types.Common..=? arg2
    ,"partialResultToken" Language.LSP.Protocol.Types.Common..=? arg3]

instance Aeson.FromJSON DeclarationParams where
  parseJSON = Aeson.withObject "DeclarationParams" $ \arg -> DeclarationParams <$> arg Aeson..: "textDocument" <*> arg Aeson..: "position" <*> arg Aeson..:! "workDoneToken" <*> arg Aeson..:! "partialResultToken"