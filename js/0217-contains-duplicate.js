/**
 * @param {number[]} nums
 * @return {boolean}
 */
var containsDuplicate = function(nums) {
  const elements = new Set()
  for (let i = 0; i < nums.length; i++) {
    if (elements.has(nums[i])) return true
    elements.add(nums[i])
  }
  return false
};