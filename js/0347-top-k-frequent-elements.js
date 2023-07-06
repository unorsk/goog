/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number[]}
 */
var topKFrequent = function(nums, k) {
    const map = new Map()
    const arr = new Array(nums.length + 1).fill(null)

    for (let i = 0; i < nums.length; i++) {
      const value = (map.get(nums[i]) || 0) + 1

      map.set(nums[i], value)
    }

    for (let [k, v] of map) {
      const arrayV = arr[v] || []
      arr[v] = [...arrayV, k]
    }

    const r = []

    for (let i = arr.length - 1; i >= 0; i--) {
      if (k < 1) break

      if (arr[i] !== null) {
        for (let j = 0; j < arr[i].length; j++) {
          if (k < 1) break

          r.push(arr[i][j])
          k--
        }
      }
    }

    return r
};

// console.log(topKFrequent([1,1,1,2,2,3], 2));
// console.log(topKFrequent([-1, -1]));
// console.log(topKFrequent([1, 2]));
// console.log(topKFrequent([1], 1));