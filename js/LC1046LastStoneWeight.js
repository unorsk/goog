var lastStoneWeight = function (stones = []) {
  if (stones.length == 1) return stones[0];

  while (stones.length > 1) {
    stones.sort((a, b) => a - b);
    const stone = Math.abs(stones.pop() - stones.pop());
    stones.push(stone);
  }

  return stones[0] ?? 0;
};

console.log(lastStoneWeight([2, 7, 4, 1, 8, 1])); // 1
console.log(lastStoneWeight([1])); // 1
console.log(lastStoneWeight([1, 1])); // 0
