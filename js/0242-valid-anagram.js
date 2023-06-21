/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function(s, t) {
  if (s.length != t.length) return false

  const occurencies = new Map()

  for (let i = 0; i < s.length; i++) {
    if (occurencies.has(s[i])) {
      occurencies.set(s[i], occurencies.get(s[i]) + 1)
    } else {
      occurencies.set(s[i], 1)
    }

    if (occurencies.has(t[i])) {
      occurencies.set(t[i], occurencies.get(t[i]) - 1)
    } else {
      occurencies.set(t[i], -1)
    }
  }
  
  for (const value of occurencies.values()) {
    if (value != 0) return false 
  }

  return true
};

isAnagram("anagram", "nagaram")