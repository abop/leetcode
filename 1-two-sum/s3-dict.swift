// https://leetcode.com/submissions/detail/103866686/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic:Dictionary<Int, [Int]> = Dictionary()
        nums.enumerated().forEach({(idx, num) in 
            if let curIndexed = dic[num] {
                dic[num] = curIndexed + [idx]
            } else {
                dic[num] = [idx]
            }
        })
        // let other = 0
        for (num, idxes) in dic {
            let otherNum = target-num
            if otherNum == num {
                if idxes.count > 1 {
                    return [idxes[0], idxes[1]]
                }
            } else if let otherIdxes = dic[otherNum] {
                return [idxes[0], otherIdxes[0]]
            }
        }
        return []
    }
}
