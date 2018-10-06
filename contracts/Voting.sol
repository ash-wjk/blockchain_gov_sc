pragma solidity ^0.4.17;
// We have to specify what version of compiler this code will compile with

contract Voting {
  /* mapping field below is equivalent to an associative array or hash.
  */
  
    mapping (bytes32 => uint8) public votingsReceived;
    
    /* We will use an array of bytes32 to store the list of projects
    */
    
    bytes32[] public projectList;

    /* This is the constructor which will be called once when we
    deploy the contract to the blockchain. When we deploy the contract,
    we will pass an array of project names for which users will give votings
    */
    constructor (bytes32[] projectNames) public {
        projectList = projectNames;
    }

    // This function returns the total votings a project has received so far
    function totalVotesFor(bytes32 project) view public returns (uint8) {
        return votingsReceived[project];
    }

    // This function increments the vote count for the specified project. Equivalent to upvoting
    function voteForProject(bytes32 project) public {
        votingsReceived[project] += 1;
    }
}