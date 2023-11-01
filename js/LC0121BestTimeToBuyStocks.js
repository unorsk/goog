/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function (prices) {
  let profit = 0,
    l = 0,
    r = 1;

  while (r < prices.length) {
    if (prices[l] < prices[r]) {
      profit = Math.max(prices[r] - prices[l], profit);
    } else {
      l = r
    }
    r++

  }

  return profit;
};