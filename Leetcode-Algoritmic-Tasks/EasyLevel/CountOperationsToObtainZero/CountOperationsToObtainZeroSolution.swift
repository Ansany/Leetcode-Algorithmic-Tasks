import Foundation

func countOperations(_ num1: Int, _ num2: Int) -> Int {
        
    var answer = 0
    var nums1 = num1, nums2 = num2
        
    while nums1 != 0 && nums2 != 0 {
        if nums1 > nums2 {
            nums1 -= nums2
        } else {
            nums2 -= nums1
        }
        answer += 1
    }
    return answer
}
