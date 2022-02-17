import Foundation

func strStr(_ heystack: String, _ needle: String) -> Int {
        
        let heyCount = heystack.count
        let needCount = needle.count
        
        if needCount == 0 || heystack == needle { return 0 }
        guard heyCount >= needCount else { return -1 }
        
        var heyStartIndex = heystack.startIndex
        
        for i in 0...(heyCount - needCount){
            let end = heystack.index(heyStartIndex, offsetBy: needCount)
            if heystack[heyStartIndex..<end] == needle { return i }
            heyStartIndex = heystack.index(heyStartIndex, offsetBy: 1)
        }
        
        return -1
}
