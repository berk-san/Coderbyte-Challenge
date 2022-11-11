import UIKit


func BracketMatcher(_ str: String) -> Int {
  var bracketLeft = 0
  var bracketRight = 0

  if str.starts(with: ")") || str.last == "(" {
    return 0
  }
  
  for item in str {
    if item == "(" {
      bracketLeft += 1
    } else if item == ")" {
      bracketRight += 1
    }
  }
  if bracketLeft == bracketRight {
    return 1
  } else {
    return 0
  }
}

// keep this function call here
//print(BracketMatcher(readLine(stripNewline: true)));


BracketMatcher("()(dsfsg23432)(23448)()")
