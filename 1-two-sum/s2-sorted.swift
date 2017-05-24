// https://leetcode.com/submissions/detail/103857386/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let count = nums.count
        let entries = nums.enumerated().sorted(by: {$0.1 < $1.1})
        var i = 0, j = count-1
        while i < j {
            let sum = entries[i].1 + entries[j].1
            if sum == target {
                return [entries[i].0, entries[j].0]
            }
            if sum > target {
                j-=1
            } else if sum < target {
                i+=1
            }
        }
        return []
    }
}
