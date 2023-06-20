import java.util.HashMap;
import java.util.Map;

class Solution {
  public boolean isAnagram(String s, String t) {
    if (s.length() != t.length()) return false;

    Map<Character, Integer> map = new HashMap<Character, Integer>();

    for (int i = 0; i < s.length(); i++) {
      char schar = s.charAt(i);
      if (map.containsKey(schar)) {
        map.put(schar, map.get(schar)+1);
      } else {
        map.put(schar, 1);
      }

      char tchar = t.charAt(i);
      if (map.containsKey(tchar)) {
        map.put(tchar, map.get(tchar)-1);
      } else {
        map.put(tchar, -1);
      }            
    }

    for (Map.Entry<Character, Integer> i : map.entrySet()) {
      if (i.getValue() != 0) return false;
    }

    return true;
  }

  public boolean isAnagram1(String s, String t) {
    if (s.length() != t.length()) return false;

    int[] store = new int[26];

    for (int i = 0; i < s.length(); i++) {
       store[s.charAt(i) - 'a']++;
       store[t.charAt(i) - 'a']--;
    }

    for (int n : store) {
      if (n != 0) return false;
    }

    return true;
  }
}