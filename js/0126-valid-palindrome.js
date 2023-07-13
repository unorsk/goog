/**
 * @param {string} s
 * @return {boolean}
 */
var isPalindrome = function (s) {
  if (s.length == 1) return true

  let i = 0,
    j = s.length - 1

  const a = "a".charCodeAt(0),
    z = "z".charCodeAt(0),
    zero = "0".charCodeAt(0),
    nine = "9".charCodeAt(0)

  const notAlphaNumeric = (iChar) => (iChar < zero) || (iChar > nine && iChar < a) || (iChar > z)

  do {
    const iChar = s.charAt(i).toLowerCase().charCodeAt(0);
    if (notAlphaNumeric(iChar)) {
      i++
      continue
    }

    const jChar = s.charAt(j).toLowerCase().charCodeAt(0);
    if (notAlphaNumeric(jChar)) {
      j--
      continue
    }
    if (iChar != jChar) return false
    i++
    j--

  } while (i < j)

  return true
};

// console.log(isPalindrome("A man, a plan, a canal: Panama"))//true
// console.log(isPalindrome("race a car"))//false
// console.log(isPalindrome(" "))//true
// console.log(isPalindrome("0P"))//false