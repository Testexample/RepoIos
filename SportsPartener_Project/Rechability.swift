
import Foundation
import SystemConfiguration




protocol  Utilities{
    
}



extension NSObject : Utilities
{
    
    
    enum Rechabilitystatus
    {
        case notRechable
        case rechableViaWWAN
        case rechableViaWiFi
    }
    
    var currentRechabilitystatus : Rechabilitystatus
        
    {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to:&zeroAddress,{
            $0.withMemoryRebound(to: sockaddr.self ,  capacity: 1){
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        })
            else
        {
            return .notRechable
        }
        
        var flags : SCNetworkReachabilityFlags = []
        
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags)
        {
            return .notRechable
        }
        if flags.contains(.reachable ) == false
        {
            return .notRechable
        }
        else if flags.contains(.isWWAN) == true
        {
            return .rechableViaWWAN
        }
        else if flags.contains(.connectionRequired) == false
        {
            return .rechableViaWiFi
        }
        else if (flags.contains(.connectionOnDemand) == true || flags.contains(.connectionOnTraffic) == true) && flags.contains(.interventionRequired) == false
        {
            return .rechableViaWiFi
        }
        else
        {
            return .notRechable
        }
    }
}










//import Foundation
//import SystemConfiguration
//
//
//
//public class Reachability
//
//{
//
//    class func isConnectedToNetwork() -> Bool
//
//    {
//
//        var zeroAddress = sockaddr_in(sin_len: 0, sin_family: 0, sin_port: 0, sin_addr: in_addr(s_addr: 0), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
//        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
//        zeroAddress.sin_family = sa_family_t(AF_INET)
//
//
//        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
//            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
//                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
//            }
//        }
//
//        var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags(rawValue: 0)
//
//        if SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) == false
//        {
//            return false
//        }
//
//        let isReachable = flags == .reachable
//        let needsConnection = flags == .connectionRequired
//
//        return (isReachable && !needsConnection) ? true : false
//
//    }
//}
