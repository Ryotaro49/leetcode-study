function twoSum(nums: number[], target: number): number[] {
    for (let i = 0; i < nums.length; i++) {
        for (let j = i + 1; j < nums.length; j++) {
            if (nums[i] + nums[j] === target) {
                return [i, j]
            }
        }
    }
    return []
};

function twoSumHashTable(nums: number[], target: number): number[]{
    const map: Map <number, number> = new Map()
    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i]
        if (map.has(complement)) {
            return [map.get(complement)!, i]
        }
        map.set(nums[i], i)
    }
    return []
}

const resultHashTable = twoSumHashTable([2, 7, 11, 15], 9)

console.log("result",resultHashTable)