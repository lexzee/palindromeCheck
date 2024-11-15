import Text "mo:base/Text";
import Char "mo:base/Char";
import Array "mo:base/Array";

actor PalindromeChecker {
 public func checkPalindrome(t : Text) : async Text {
  var array : [Char] = [];
  var reverse : [Char] = [];

  for (c in Text.toLowercase(t).chars()) {
    array := Array.append<Char>(array, [c]);
  };

  reverse := Array.reverse<Char>(array);

  if (array == reverse) {
    return  t # " is a palindrome!";
  } else {
    return t # " is not a palindrome!";
  };
 }
}

