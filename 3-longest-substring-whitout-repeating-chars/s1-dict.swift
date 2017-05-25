// https://leetcode.com/submissions/detail/103973509/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var curSet: Dictionary<Character, Int> = [:], maxLength = 0, lowestIdx = 0
        let characters = Array(s.characters)
        for i in 0 ..< characters.count {
            if let repeatedIdx = curSet.updateValue(i, forKey: characters[i]) {
                if repeatedIdx>=lowestIdx {
                    lowestIdx = repeatedIdx + 1
                }
            }
            maxLength = i - lowestIdx + 1 > maxLength ? i - lowestIdx + 1 : maxLength 
        }
        
        return maxLength
    }
}
