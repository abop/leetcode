// https://leetcode.com/submissions/detail/103971605/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var curSet: Dictionary<Character, Int> = [:], maxLength = 0, curRepeatedIdx = 0
        let characters = Array(s.characters)
        for i in 0 ..< characters.count {
            if let repeatedIdx = curSet.updateValue(i, forKey: characters[i]) {
                maxLength = curSet.count > maxLength ? curSet.count : maxLength
                for j in curRepeatedIdx...repeatedIdx {
                    curSet[characters[j]] = nil
                }
                curSet[characters[repeatedIdx]] = i
                curRepeatedIdx = repeatedIdx + 1
            }
        }
        return curSet.count > maxLength ? curSet.count : maxLength 
    }
}
