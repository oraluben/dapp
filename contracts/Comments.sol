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
        mapping(address => Comment) comments;
    }

    mapping (address => Item) items;

    function addItem(string title, string desc) public returns (address) {
        var i = Item(msg.sender, title, desc);
        items[i.addr] = i;
        return i.addr;
    }

    function addComment(string comment, bool good, address item) public returns (address) {
        var c = Comment(msg.sender, item, good, comment);
        items[item].comments[c.addr] = c;
        return c.addr;
    }
}