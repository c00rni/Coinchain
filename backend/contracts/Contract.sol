// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

/// @title ContractChain allow to create decentralise work contract
/// @author Antony Gandonou migan
/// @notice This is a proof of concept for Alyra web developement seminar
contract Contract is Ownable {
    /// @notice Map of work contract identifiers to user public wallets
    mapping(uint => address) private contractId;

    /// @notice Map of work contract statement identifier to contract idetifiers
    mapping(uint => uint) private StatementIndex;

    /// @notice Contract admin balance
    uint public balance;

    /// @notice User information
    struct Profil {
        string lastName;
        string firstName;
        address addr;
    }

    /// @notice Information on contestation
    struct Contest {
        bool isContested;
        uint contestCount;
        string description;
    }

    /// @notice Work contrat statement
    struct Statement {
        uint idStatement;
        string description;
        string proof;
        bool needProof;
        Contest constest;
    }

    /// @notice Work contract
    struct Contrat {
        uint id;
        uint balance;
        bool signed;
        Profil worker;
        Profil client;
        Statement[] statements;
        uint deliveryDeadLine;
        uint contestationDelay;
    }

    /// @notice Type of delay
    enum Delay {
        None,
        ADay,
        OneWeek,
        TwoWeeks
    }

    /// :::::::::::::::::::::::::: EVENTS :::::::::::::::::::::::::: //

    event CreateContrat(uint idContrat, address client);
    event ContractSigned(uint idContrat, address worker);
    event StatementContested(uint idContract, uint statementIndex);
    event ContractRenumeration(uint idContract, uint amount);

    /// :::::::::::::::::::::::::: Worker Contract :::::::::::::::::::::::::: //

    /// @notice Create a work contract
    function createContract(
        uint _askedReward,
        Profil memory _client,
        Profil memory _worker,
        Statement[] memory _statements,
        uint _deliveryDeadLine,
        Delay delay
    ) external {}

    /// @notice Modify remuneration ask of a contract
    function setRemuneration(
        uint _idContract,
        uint _newRemunerationAsked
    ) external {}

    /// @notice Add a statement to a contact
    function addStatement(
        uint _idContract,
        Statement calldata _statement
    ) external {}

    /// @notice Signed an work contract
    function signContract(uint _idContract) public payable {}

    /// @notice Modify the client address which a work contract is assigned
    function setClient(
        uint _idContract,
        address _newClient,
        string calldata _firstName,
        string calldata _lastName
    ) public {}

    /// @notice Modify the contestation periode of a work contract
    function setDelay(uint _idContract, Delay _delay) external {}

    /// @notice Getter on the amount to deposit on contract
    function getRewardAmount(uint _idContract) external {}

    /// :::::::::::::::::::::::::: Statement :::::::::::::::::::::::::: //

    /// @notice Modify a contract statement description
    function setDescriptionStatement(
        uint _idContract,
        uint _indexStatement,
        string calldata _description
    ) public {}

    /// @notice Modify a statatment work contract status
    function setStatementProofStatus(
        uint _idContract,
        uint _indexStatement,
        bool _needStatus
    ) public {}

    /// @notice Modify the proof of a statement
    function setProofStatement(
        uint _idContract,
        uint _indexStatement,
        string calldata _proof
    ) public {}

    /// @notice Contest proof of a statement
    function contestProof(
        uint _idContract,
        uint statementIndex,
        string calldata description
    ) external {}

    /// @notice Allow the worker to withdraw his reward
    function workerWithdraw(uint _idContract) external {}

    /// :::::::::::::::::::::::::: ADMIN :::::::::::::::::::::::::: //

    /// @notice Withdraw contact fund
    function withdraw(uint _amount) external payable onlyOwner {}
}
