// https://leetcode.com/submissions/detail/103868397/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        nums.enumerated().forEach({(idx, num) in 
                dic[num] = idx
        })
        // let other = 0
        for idx in 0..<nums.count {
            let num = nums[idx]
            let otherNum = target-num
            if let otherIdx = dic[otherNum] {
                if otherIdx != idx {
                    return [idx, otherIdx]
                }
            }
        }
        return []
    }
}
