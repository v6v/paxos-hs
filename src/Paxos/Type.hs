module Paxos.Type where

newtype Slot = Slot Integer deriving Show
newtype BallotNum = BallotNum Integer deriving Show
newtype InputValue = InputValue Integer deriving Show

-- difference between InputValue and Input (?)
data Proposal = Proposal Caller ClientId InputValue
              | EmptyProposal
              deriving Show

data Ballot = Ballot Integer Leader
            | EmptyBallot
            deriving Show

newtype ClientId = ClientId Integer deriving Show
newtype Output = Output Integer deriving Show
newtype Caller = Caller Integer deriving Show
newtype Leader = Leader Integer deriving Show
newtype AcceptedProposals = AcceptedProposals [Proposal] deriving Show
newtype Decisions = Decisions [(Slot, Proposal)] deriving Show
newtype PreemptedBy = PreemptedBy ClientId deriving Show
newtype State = State Integer deriving Show

data Msg = Accepted Slot BallotNum
         | Accept Slot BallotNum Proposal
         | Decision Slot Proposal
         | Invoked ClientId Output
         | Invoke Caller ClientId InputValue
         | Join
         | Active
         | Prepare BallotNum
         | Promise BallotNum AcceptedProposals
         | Propose Slot Proposal
         | Welcome State Slot Decisions
         | Decided Slot
         | Preempted Slot PreemptedBy
         | Adopted BallotNum AcceptedProposals
         | Accepting Leader
         deriving Show

