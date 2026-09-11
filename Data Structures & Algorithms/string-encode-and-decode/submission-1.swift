class Solution {
    func encode(_ strs: [String]) -> String {
        var encodedString = ""
        for string in strs {
            // Need to append length of string too so we know how many char to traverse
            // If we dont add # after length then length can be like 12 which will be hard
            // Also string can be like 12abc, so 1212abc is confuding
            // this is reason we use own # to get exact length
            encodedString +=  String(format:"%d#%@", string.length, string)
        }
        return encodedString
    }

    func decode(_ str: String) -> [String] {
        var decoded = [String]()
        let sArr = Array(str)
        var i = 0
        while i < sArr.count {
            var j = i
            // traverse till # to separate length string
            while sArr[j] != "#" {
                j+=1
            }
            let lengthStr = String(sArr[i..<j])
            let length = Int(lengthStr)!
            i = j+1
            let end = i + length
            let subString = String(sArr[i..<end])
            decoded.append(subString)
            i = end
        }
        return decoded
    }
}
