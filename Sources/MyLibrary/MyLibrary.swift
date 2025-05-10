import KeychainAccess

public protocol KeychainKC {
    func setKC(_ value: String, forKey key: String)
    func getKC(forKey key: String) -> String?
    func removeKC(forKey key: String)
}
struct Keychain: KeychainKC {
    func setKC(key: String, value:String)->Bool{
        saveKC(key: key, value: value)
    }
    
    func getKC(key: String)->String?{
        loadKC(key: key)
    }
    func removeKC(key: String)->Bool{
        deleteKC(key: key)
    }
}
