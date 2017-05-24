// https://leetcode.com/submissions/detail/103868770/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        for i in 0..<nums.count {
            dic[nums[i]] = i
        }
        // let other = 0
        for idx in 0..<nums.count {
            if let otherIdx = dic[target-nums[idx]] {
                if otherIdx != idx {
                    return [idx, otherIdx]
                }
            }
        }
        return []
    }
}
