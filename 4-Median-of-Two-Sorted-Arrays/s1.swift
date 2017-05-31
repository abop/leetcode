// https://leetcode.com/submissions/detail/104513450/

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var i = -1, j = -1
        if nums1.count == 0 {
            if nums2.count % 2 == 0 {
                let half = nums2.count / 2
                return Double( nums2[half - 1] + nums2[half] ) / 2
            } else {
                return Double(nums2[nums2.count/2])
            }
        }
        
        if nums2.count == 0 {
            if nums1.count % 2 == 0 {
                let half = nums1.count / 2
                return Double( nums1[half - 1] + nums1[half] ) / 2
            } else {
                return Double(nums1[nums1.count/2])
            }
        }
        let c1 = nums1.count, c2 = nums2.count
        var r1 = 0, r2 = 0//min(nums1[0], nums2[0])
        while i + j < ( c1 + c2 ) / 2 - 1 {
            r1 = r2
            if i == c1 - 1 {
                // return 
                j += 1
                r2 = nums2[j]
            } else if j ==  c2 - 1 {
                i += 1
                r2 = nums1[i]
            } else {
                if nums1[i+1] > nums2[j+1] {
                    j += 1
                    r2 = nums2[j]
                } else {
                    i += 1
                    r2 = nums1[i]
                }
            }
            // print("r1=\(r1)")
            // print("r2=\(r2)")
            // print("i=\(i)")
            // print("j=\(j)")
            // print("")
        }
        return (c1+c2) % 2 == 1 ? Double(r2) : Double(r1+r2)/2.0
    }
}
