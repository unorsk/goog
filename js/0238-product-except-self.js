/**
 * @param {number[]} nums
 * @return {number[]}
 */
var productExceptSelf = function(nums) {
  const result = new Array(nums.length).fill(1)

  let product = nums[0]
  for (let i = 1; i < nums.length; i++) {
    result[i] = product
    product *= nums[i]
  }

  product = nums[nums.length-1]
  for (let i = nums.length - 2; i >= 0; i--) {
    result[i] = result[i] * product
    product *= nums[i]
  }
  return result
};

console.log(productExceptSelf([1, 2, 3, 4]))
console.log(productExceptSelf([-1, 1, 0, -3, 3]))