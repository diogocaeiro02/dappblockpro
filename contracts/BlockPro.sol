// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockPro {
    struct Post {
        address author;
        string content;
        uint timestamp;
    }

    Post[] public posts;

    function createPost(string memory _content) public {
        posts.push(Post(msg.sender, _content, block.timestamp));
    }

    function getAllPosts() public view returns (Post[] memory) {
        return posts;
    }
}
