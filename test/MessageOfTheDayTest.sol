pragma solidity 0.4.23;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MessageOfTheDay.sol";


contract MessageOfTheDayTest {
    function testInitializesWithDefaultMessage() public {
        MessageOfTheDay instance = new MessageOfTheDay("Hello, michalzalecki.com!");
        Assert.equal(instance.message(), "Hello, michalzalecki.com!", "initial message is invalid");
    }

    function testSettingMessage() public {
        MessageOfTheDay instance = new MessageOfTheDay("");
        instance.setMessage("Hello, World!");
        Assert.equal(instance.message(), "Hello, World!", "message is invalid");
    }

    function testPreventNonOwnerFromSettingMessage() public {
        MessageOfTheDay instance = MessageOfTheDay(DeployedAddresses.MessageOfTheDay());
        bool result = address(instance).call(bytes4(keccak256("setMessage(string)")), "Hello!");
        Assert.equal(result, false, "non-owner is able to set a message");
    }
}
