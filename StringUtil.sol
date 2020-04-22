pragma solidity ^0.4.25;
pragma experimental ABIEncoderV2;
contract StringUitl{
    
    function isUintInArray(uint256 data,uint256[]ary) public  view returns(uint256){
        for(uint i=0;i< ary.length;i++){
            if(data == ary[i]){
                return 1;
            }
        }
        return 0;
    }
    
    function isStrInArray(string data,string[] ary) public  view returns(bool){
        for(uint i=0;i< ary.length;i++){
            if(true == strCompare(ary[i],data)){
                return true;
            }
        }
        return false;
    }
    
    function strCompare(string str1, string str2) pure internal returns (bool) {
        if (bytes(str1).length != bytes(str2).length) {
            return false;
        }
        
        return keccak256(str1) == keccak256(str2);
    }
    
    function strConcat(string _str1, string _str2) pure internal returns (string){
        bytes memory _str1ToBytes = bytes(_str1);
        bytes memory _str2ToBytes = bytes(_str2);
        string memory ret = new string(_str1ToBytes.length + _str2ToBytes.length);
        bytes memory retTobytes = bytes(ret);
        uint index = 0;
        for (uint i = 0; i < _str1ToBytes.length; i++)retTobytes[index++] = _str1ToBytes[i];
        for (i = 0; i < _str2ToBytes.length; i++) retTobytes[index++] = _str2ToBytes[i];
        return string(retTobytes);
    }
}
