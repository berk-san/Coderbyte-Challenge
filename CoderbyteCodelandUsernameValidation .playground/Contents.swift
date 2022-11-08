import UIKit

func CodelandUsernameValidation(_ str: String) -> String {

    if str.count >= 4 && str.count <= 25 {
        if let strFirstLetter = str.first {
          let letters = "a"..."z"
          if letters.contains(strFirstLetter.lowercased()) {
            let range = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"
            for letter in str.lowercased() {
              if range.contains(letter) {
                if str.hasSuffix("_") {
                  return "false"
                } else {
                  return "true"
                }
              } else {
                return "false"
              }
            }
          } else {
            return "false"
          }
        }
      } else {
        return "false"
      }
      return str
}

CodelandUsernameValidation("Sample_")
