// https://leetcode.com/submissions/detail/103869386/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        for idx in 0..<nums.count {
            if let otherIdx = dic[target-nums[idx]] {
                if otherIdx != idx {
                    return [idx, otherIdx]
                }
            }
            dic[nums[idx]] = idx
        }
        return []
    }
}
