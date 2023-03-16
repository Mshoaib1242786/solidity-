// SPDX-License-Identifier:MIT
// pragma solidity ^0.8.7;
 
 //20
// contract Loops{
//     function ForLoop() public pure returns(uint){
//         uint c = 0;
//       for(uint i = 0; i < 10; i++){
//           if(i==3){
//               continue;
//           }
//           if(i==9){
//               break;
               
//           }
//          c+=1;
//       }
//       return c;
//     }
//     function WhileLoop() public pure returns(uint){
//         uint j;
//         while(j<10){
//             j++;
//         }
//         return j;
//     }
// }

// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

// contract Loops{
//     function ForLoop() public pure returns(uint){
//         uint c = 0;
//       for(uint i = 0; i < 10; i++){
//           if(i==3){
//               continue;
//           }
//           if(i==9){
//               break;
               
//           }
//          c+=1;
//       }
//       return c;
//     }
//     function WhileLoop() public pure returns(uint){
//         uint j;
//         while(j<10){
//             j++;
//         }
//         return j;
//     }
// }
// 21
// contract Enum{
//   enum Statuse{
//       Pending,
//       Shipped,
//       Accepted,
//       Rejected,
//       Canceled
//   }
//   Statuse public statuse;
// //   Statuse public statuse =Satuse.Pending;
// function getFunction() public  returns(Statuse){
//     return statuse = Statuse.Rejected;
// }
 
// //  function setFunction(string memory _statuse) public {
// //      require( _statuse=="Pending","error");
// //      statuse = _statuse;
//  function setFunction(Statuse _statuse) public {
//      require( _statuse==Statuse.Pending,"error");
//      statuse = _statuse;
//  }
//  function canceled() public {
//      statuse = Statuse.Canceled;
//  }
//  function reset() public  {
//      delete statuse;
//  }

// }
// 22
// contract Error{
//     error Error__GreaterThanTen(uint ammount);
//     function testRequire(uint _i) public pure returns(uint){
//         require(_i>10, "Input must be greater then 10");
//         return _i;
 
//     }

//     function testRevert( uint _i) public pure returns(uint){
//         if(_i<=10){
//             // revert("Input must be greater then 10");
//             revert Error__GreaterThanTen({ammount:_i});
//         }
//         return _i;
//     }
// }
// 23
// contract Arry{
//     uint [] public arr;
//     uint [] public arr2 = [1,2,3];
//     uint [10] public myNameIsSh;
//     function get(uint i) public view returns(uint){
//              return arr[i];
//     }
//     function getArr() public view returns(uint [] memory){
//         return arr;
//     }
//     function push(uint i) public {
//          return arr.push(i);
//     }
//      function pop() public {
//          return arr.pop();
//     }
//      function getLength() public view returns(uint) {
//          return arr.length;
//     }
//      function remove(uint index) public{
//          delete arr[index];
//     }
//     function exemples() pure external{
//         uint[] memory b = new uint[](5);
//     }
// }
// 24
// contract Todos{
//     struct Todo{
//         string text;
//         bool completed;
//     }
//     // VARABLES USES
//     // Todo public myTodo = Todo ("greeting" , false);
//     // Todo public _Todo = Todo ({text:"greeting" , completed: false});
 

//    Todo[] public  todos;
// function create(string calldata _text) public{
//     todos.push(Todo(_text, false));
//     todos.push(Todo({text:_text, completed:false}));
//     Todo memory todo;
//     todo.text = _text;
//     todos.push (todo);
     
// } // ends create function
// function get(uint _index) public view returns(string memory text, bool completed ){
//      Todo storage todo = todos[_index];
//      return (todo.text,todo.completed);
//  }

//  function updateText(uint _index , string calldata _text) public{
    
//      Todo storage todo = todos[_index];
//      todo.text = _text;
//  }
 
//  function toggleCompleted (uint _index) public{
    
//      Todo storage todo = todos[_index];
//     todo.completed = !todo.completed;
// }
// } // ends contract
// 25
// contract Mapping{
//     mapping(address => uint) public myMap;
//     function get(address _addr) public view returns(uint){
//         return myMap[_addr];
//     }
//      function set(address _addr, uint _i) public {
//          myMap[_addr] = _i;
//     }
//      function remove(address _addr) public{
//         delete  myMap[_addr];
//     }
// }
// 26
// contract NestedMapping{
//     mapping(address=>mapping(uint=>bool)) public nested;
//     function get(address _addr1, uint _i) public view returns(bool){
//         return nested[_addr1][ _i];
//     }
//     function set(
//         address _addr1,
//         uint _i,
//         bool _boo
//     ) public{
//         nested[_addr1][_i] =_boo;
//     }
//     function remove(address _addr1, uint  _i) public {
//         delete nested [_addr1][_i];
//     }
// }
// 27
// contract Event {
//     event Log(address indexed sender, string message);
//     event AnotherLog();

//     function test() public {
//         emit Log(msg.sender,"Hello Word!");
//         emit Log(msg.sender,"Hello EVM!");
//         emit AnotherLog();
//     }
// } 
// 28
// contract EtherUints{
//     uint public oneWei = 1 wei;
//     bool public isOneWei = 1 wei ==1;

//     uint public oneEther = 1 ether;
//     bool public isOneEther = 1 ether ==1e18;
// }
// 29
// contract Gas{
//     uint public i= 1;
//     function forever() public{
//         while(i<200){
//             i += 1;
//         }
//     }
// } 
// 30
// contract X{
//     string public name;
//     constructor(string memory _name ){
//         name = _name;
//     } 
// }
// contract Y{
//     string public text;
//     constructor(string memory _text ){
//         text = _text;
//     } 
// }
// contract C is X,Y{
//     constructor (string memory _name, string memory _text) X(_name) Y(_text){}
// }
// contract D is X,Y{
//     constructor () X("X was called") Y("Y was called"){}
// }
// 31
// contract A{
//     function foo() public pure virtual returns(string memory){
//         return "A";
//     }
// }
// contract B is A{
//       function foo() public pure virtual override returns(string memory){
//         return "B";
//     }

// }
// contract C is B{
//       function foo() public pure override returns(string memory){
//         return "B";
//     }

// }
// 32
// contract Payable{
//     address payable public owner;

//     constructor () payable {
//         owner = payable(msg.sender);
//     }
//     function deposit() public payable{}
//        function notPayable() public {}
       
//           function getBalance() public view returns(uint){
//               uint amount = address (this).balance;
//           return amount;
//    }
// }
 // 33
// contract ReceiveEther{
//     receive() external payable{}
//     fallback() external payable{}
//       function getBalance() public view returns(uint) {             
//       return address (this).balance;
// }
// }
// contract SendTransfer{
//     function sendViaTransfer(address payable _to) public payable{
//         _to.transfer(msg.value);
//     }
//    function sendViaSend(address payable _to) public payable{
//      bool sent =  _to.send(msg.value);
//      require (sent,"Failed to sent Ether");
//    }
//    function sendViaCall(address payable _to) public  payable{
//        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
//        require(sent, "Failed to sent Ether");
//    }
// }
// 34
// contract EncodeDecode{
//     function encode(uint x, address addr) external pure returns(bytes memory){
//     return abi.encode(x,addr);
//     }
//     function decode(bytes calldata data) external pure returns(uint x, address addr){
//     (x,addr) = abi.decode(data,(uint, address));
//     }

//     function hash(
//         uint num,
//         address addr
//     ) public pure returns(bytes32){
//         return keccak256(abi.encode(num,addr));
//     }
    
//     function verifyHash(
//         uint num,
//         address addr,
//         bytes32 _hash
//     ) public pure returns(bool){
//         return keccak256(abi.encode(num,addr)) ==_hash;
//     }
// }
// 35
// contract GasOpt{
//     uint public total;
//     function sumIfEventAndLessThen99(uint[] calldata nums) external pure{
//         uint _total;
//         uint l = nums.length;
//         for (uint i=0; i < l;){
//             // bool isEven= nums[i] %2==0;
//             // bool isLessThen99 = nums[i] < 99;
//             // if(isEven && isLessThen99)
//             uint n = nums[i];
//              if( n %2==0 && n < 99) {
//                 _total+= n;
//             } 
//             unchecked{
//                 ++i;
//             }     
//          }
       
//     }
// }
// 36
// Sir Mian Bassit Sab Home Work
// 1st
// contract Array{
//  uint [4] public a= [1,2,3,4 ];
// function setter(uint index,uint value) public{
//     a[index]=value;
    
// }  
// function length() public view returns(uint){
//     return a.length;
// }
// }
// 2nd

// contract Identity 
// {
//    string name;
//    uint age;
//    constructor() public {
//        name="Muhammad Shoaib";
//        age=28;
//    }
//    function getName() view public returns(string memory)
//    {
//        return name;
//    }
//    function getAge() view public returns(uint)
// {
//     return age;
// }

// function setAge()public{
//     age=age+1;
// }

// }
// 3rd
// contract Array{
//     uint[10]public arr;
//     uint public count;
//     function loop () public{
//     while(count<arr.length){
//         arr[count]=count;
//         count++;
//     }

// }

// }
// 4th
// contract Array{
//     uint[3]public arr;
//     uint public cunt;
//     function loop () public{
//     for(uint i=cunt;i<arr.length;i++){
// arr[cunt]=cunt;
// cunt++;
//     }
//     }

// }

// 5th
// contract Array{
//     function check(int x) public pure returns(string memory){
//     string memory value;

//     if(x>0){
//         value="greater then value of 0";
//     }
//    else if(x==0){
//        value = "equal to zero";
//    }

//    else {
//        value="less than zero";
//    }
//     return value;

//     }
// }
// 6th

// struct Student{
//     uint roll;
//     string name;
// }
// contract Demo {
//     Student public s1;


//     constructor (uint _roll,string memory _name){
//         s1.roll= _roll;
//         s1.name=_name;
//     }
//     //change value
//     function change (uint _roll,string memory _name)public {
//         Student memory new_student=Student({
//             roll: _roll,
//             name:_name
//         });
//         s1=new_student;
//     }
// }
// 7th
// contract State{
//     enum user{
//         allowed,not_allowed,wait}
//         user public u1= user.allowed;
//        uint public lottery=1000;
//        function owner() public {
//            if(u1==user.allowed){
//                lottery=0;
//            }
//        }
//        function changeOwner() public view {
//            u1==user.not_allowed;
//        }
//     }
// 8th
// contract ali{
//     mapping(uint=>string) public roll_no;
//     function setter(uint keys,string memory value) public{
//         roll_no[keys]=value;

//     }
// }
// 9th
// contract demo{
//     struct Student{
//         string name;
//          uint class;
//     }

//     mapping(uint=>Student)public data;

//     function setter(uint _roll  ,string memory _name,uint _class)public
//     {
//         data[_roll]=Student(_name,_class);
//     }
// }
