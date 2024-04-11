
// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Todolist {
    //This is a custom data structure in solidity used to represent a Todo object which has a single field "content" of type string.
    struct Todo {
        string content;
    }
    Todo[] todolist; // This is an array of Todo structs where all todos will be stored.this struct is the string type

    //This is a function which accepts a string (`_text`) as input which is used to create a new todo item in the list.
    
    function createTodo(string calldata _text) public {
        todolist.push(Todo({content: _text}));
    }

    // This function allows us  to update an existing todo item in the list at a given index  with a new string .

    function updateTodo(uint256 _index, string calldata _text) public {
        todolist[_index].content = _text;
    }

    //This function allows you to retrieve a todo item from your list at a given index. It returns a string which is stored in memory .
    function getTodo(uint256 _index) public view returns (string memory) {
        Todo memory todo = todolist[_index]; //the memory  keyword is used for storing the value in stack memory
        return (todo.content);
    }
// This function allows you to delete a todo item from your list at a given index . 
    function deletTodo(uint256 _index) public {
        delete todolist[_index];
    }
}

