/**
 * @param {string} s1
 * @param {string} s2
 * @return {boolean}
 */
var checkInclusion = function (s1, s2) {
  if (s1.length > s2.length) return false;

  const a = "a".charCodeAt(0);

  const s1array = new Array(26).fill(0),
    s2array = new Array(26).fill(0);

  for (let i = 0; i < s1.length; i++) {
    s1array[s1.codePointAt(i) - a]++;
    s2array[s2.codePointAt(i) - a]++;
  }

  let matches = 0;
  for (let i = 0; i < 26; i++) {
    if (s1array[i] == s2array[i]) matches++;
  }

  let l = 0;
  for (let r = s1.length; r < s2.length; r++) {
    if (matches == 26) return true;

  }

  return false;

};