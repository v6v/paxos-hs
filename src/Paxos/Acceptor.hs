module Paxos.Acceptor where

import           Paxos.Type


data AcceptorState = AcceptorState {
  ballotNum         :: BallotNum
, acceptedProposals :: AcceptedProposals
  }


onMsg :: AcceptorState -> AcceptorState
onMsg = undefined
