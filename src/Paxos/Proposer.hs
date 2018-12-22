module Paxos.Proposer where

data Prepare

data Promise
data Proposal
data Accept
data Accepted

prepare :: Prepare -> IO Promise
prepare = undefined

propose :: Proposal -> IO (Maybe Accept)
propose = undefined
