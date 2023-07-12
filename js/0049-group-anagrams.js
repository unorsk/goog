/**
 * @param {string[]} strs
 * @return {string[][]}
 */
var groupAnagrams = function (strs) {
  const map = new Map()
  for (let i = 0; i < strs.length; i++) {
    const sortedStr = strs[i].split("").sort().join("")
    if (map.has(sortedStr)) {
      map.get(sortedStr).push(strs[i])
    } else {
      map.set(sortedStr, [strs[i]])
    }
  }

  return Array.from(map.values())
};


// var groupAnagrams = function(strs) {
//   const a = 'a'.charCodeAt(0)
//   const map = new Map()

//   for (let i = 0; i < strs.length; i++) {
//     const key = new Array(26).fill(0)
//     for (let j = 0; j < strs[i].length; j++) {
//       key[strs[i].charCodeAt(j) - a]++
//     }

//     const value = (map.get(key) || [])
//     value.push(strs[i])
//     console.log(key)
//     console.log(value)
//     map.set(key, value)
//   }

//   return Array.from(map.values())
// }

console.log(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))