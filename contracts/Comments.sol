pragma solidity ^0.4.17;

contract Comments {
    struct Comment {
        address addr;
        address item;
        bool good;
        string comment;
    }
    struct Item {
        address addr;
        string title;
        string desc;
    }

    Item[] items;
    mapping(address => Comment) comments;

    function addItem(string title, string desc) public returns (address) {
        var i = Item(msg.sender, title, desc);
        items.push(i);
        return i.addr;
    }
}