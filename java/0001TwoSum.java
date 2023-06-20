import java.util.HashMap;
import java.util.Map;

class Solution {
    public int[] twoSum(int[] nums, int target) {
      Map<Integer, Integer> map = new HashMap<Integer, Integer>();
      for (int i = 0; i < nums.length; i++) {
        final int diff = target - nums[i];
        if (map.containsKey(diff)) {
          return new int[]{map.get(diff), i};
        } else {
          map.put(nums[i], i);
        }
      }
      return new int[]{-1, -1};
    }

    public static void main(String[] args) {
      Solution s = new Solution();
      s.twoSum(null, 0);
    }
}