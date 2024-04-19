// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract proposalContract{

       struct Proposal {
        string title; //This will allow each proposal to have a brief title in addition to its description
        string description; // Description of the proposal
        uint256 approve; // Number of approve votes
        uint256 reject; // Number of reject votes
        uint256 pass; // Number of pass votes
        uint256 total_vote_to_end; // When the total votes in the proposal reaches this limit, proposal ends
        bool current_state; // This shows the current state of the proposal, meaning whether if passes of fails
        bool is_active; // This shows if others can vote to our contract
    }

    mapping(uint256 => Proposal) proposal_history; // Recordings of previous proposals

    function createVote(string calldata _Description, string calldata _tittle, uint256 _totalVoteToEnd)public {
        count+=1;
        proposal[count] = Proposal(_Description, _tittle,0,0,0,_totalVoteToEnd,false,true);
    }
}

