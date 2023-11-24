//
//  YJHOCExtTools.swift
//  YJHOCExtToolsExample
//
//  Created by yunjinghui on 2023/11/24.
//

import Foundation


extension String {
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        if identifier.contains("iPhone") {
            return iPhonePlatform(platform: identifier)
        } else if identifier.contains("iPad") {
            return iPadPlatform(platform: identifier)
        } else if identifier.contains("iPod") {
            return iPodPlatform(platform: identifier)
        } else if identifier.contains("i386") || identifier.contains("x86_64") {
            return "Simulator"
        } else {
            return "Unknown iOS Device"
        }
    }
    
    //iPhone设备
    private func iPhonePlatform(platform: String) -> String {
        switch platform {
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":  return "iPhone 4"
        case "iPhone4,1":  return "iPhone 4s"
        case "iPhone5,1":  return "iPhone 5"
        case "iPhone5,2":  return "iPhone 5 (GSM+CDMA)"
        case "iPhone5,3":  return "iPhone 5c (GSM)"
        case "iPhone5,4":  return "iPhone 5c (GSM+CDMA)"
        case "iPhone6,1":  return "iPhone 5s (GSM)"
        case "iPhone6,2":  return "iPhone 5s (GSM+CDMA)"
        case "iPhone7,2":  return "iPhone 6"
        case "iPhone7,1":  return "iPhone 6 Plus"
        case "iPhone8,1":  return "iPhone 6s"
        case "iPhone8,2":  return "iPhone 6s Plus"
        case "iPhone8,4":  return "iPhone SE"
        case "iPhone9,1":  return "国行、日版、港行iPhone 7"
        case "iPhone9,2":  return "港行、国行iPhone 7 Plus"
        case "iPhone9,3":  return "美版、台版iPhone 7"
        case "iPhone9,4":  return "美版、台版iPhone 7 Plus"
        case "iPhone10,1","iPhone10,4":   return "iPhone 8"
        case "iPhone10,2","iPhone10,5":   return "iPhone 8 Plus"
        case "iPhone10,3","iPhone10,6":   return "iPhone X"
        case "iPhone11,8":  return "iPhone XR"
        case "iPhone11,2":  return "iPhone XS"
        case "iPhone11,4","iPhone11,6":   return "iPhone XS Max"
        case "iPhone12,1": return "iPhone 11"
        case "iPhone12,3": return "iPhone 11 Pro"
        case "iPhone12,5":  return "iPhone 11 Pro Max"
        case "iPhone12,8":  return "iPhone SE 2"
        case "iPhone13,1":  return "iPhone 12 mini"
        case "iPhone13,2":  return "iPhone 12"
        case "iPhone13,3":  return "iPhone 12 Pro"
        case "iPhone13,4":  return "iPhone 12 Pro Max"
        case "iPhone14,2":  return "iPhone 13 Pro"
        case "iPhone14,3":  return "iPhone 13 Pro Max"
        case "iPhone14,4":  return "iPhone 13 mini"
        case "iPhone14,5":  return "iPhone 13"
        case "iPhone14,6":  return "iPhone SE 3"
        case "iPhone14,7":  return "iPhone 14"
        case "iPhone14,8":  return "iPhone 14 Plus"
        case "iPhone15,2":  return "iPhone 14 Pro"
        case "iPhone15,3":  return "iPhone 14 Pro Max"
        case "iPhone15,4":  return "iPhone 15"
        case "iPhone15,5":  return "iPhone 15 Plus"
        case "iPhone16,1":  return "iPhone 15 Pro"
        case "iPhone16,2":  return "iPhone 15 Pro Max"
        default:
            return "Unknown iPhone"
        }
    }
    
    //iPad设备
    private func iPadPlatform(platform: String) -> String {
        switch platform {
        case "iPad1,1":  return "iPad"
        case "iPad1,2":  return "iPad 3G"
        case "iPad2,1":  return "iPad 2 (WiFi)"
        case "iPad2,2":  return "iPad 2"
        case "iPad2,3":  return "iPad 2 (CDMA)"
        case "iPad2,4":  return "iPad 2"
        case "iPad2,5":  return "iPad Mini (WiFi)"
        case "iPad2,6":  return "iPad Mini"
        case "iPad2,7":  return "iPad Mini (GSM+CDMA)"
        case "iPad3,1":  return "iPad 3 (WiFi)"
        case "iPad3,2":  return "iPad 3 (GSM+CDMA)"
        case "iPad3,3":  return "iPad 3"
        case "iPad3,4":  return "iPad 4 (WiFi)"
        case "iPad3,5":  return "iPad 4"
        case "iPad3,6":  return "iPad 4 (GSM+CDMA)"
        case "iPad4,1":  return "iPad Air (WiFi)"
        case "iPad4,2":  return "iPad Air (Cellular)"
        case "iPad4,4":  return "iPad Mini 2 (WiFi)"
        case "iPad4,5":  return "iPad Mini 2 (Cellular)"
        case "iPad4,6":  return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":  return "iPad Mini 3"
        case "iPad5,1":  return "iPad Mini 4 (WiFi)"
        case "iPad5,2":  return "iPad Mini 4 (LTE)"
        case "iPad5,3", "iPad5,4":  return "iPad Air 2"
        case "iPad6,3", "iPad6,4":  return "iPad Pro 9.7"
        case "iPad6,7", "iPad6,8":  return "iPad Pro 12.9"
        case "iPad6,11":  return "iPad 5 (WiFi)"
        case "iPad6,12":  return "iPad 5 (Cellular)"
        case "iPad7,1":  return "iPad Pro 12.9 inch 2nd gen (WiFi)"
        case "iPad7,2":  return "iPad Pro 12.9 inch 2nd gen (Cellular)"
        case "iPad7,3":  return "iPad Pro 10.5 inch (WiFi)"
        case "iPad7,4":  return "iPad Pro 10.5 inch (Cellular)"
        case "iPad7,5", "iPad7,6":  return "iPad 6"
        case "iPad7,11", "iPad7,12":  return "iPad 7"
        case "Pad8,1 ~ 8,4":  return "iPad Pro 11-inch"
        case "iPad8,5 ~ 8,8":  return "iPad Pro 12.9-inch 3rd gen"
        case "iPad8,9 ~ 8,10":  return "iPad Pro 11-inch 2nd gen"
        case "iPad8,11 ~ 8,12":  return "iPad Pro 12.9-inch 4th gen"
        case "iPad11,1":  return "iPad mini (5th generation)"
        case "iPad11,2":  return "iPad mini (5th generation)"
        case "iPad11,3":  return "iPad Air (3rd generation)"
        case "iPad11,4":  return "iPad Air (3rd generation)"
        case "iPad11,6", "iPad11,7":  return "iPad 8"
        case "iPad13,1", "iPad13,2":  return "iPad Air 4"
        case "iPad12,1", "iPad12,2":  return "iPad 9"
        case "iPad14,1", "iPad14,2":  return "iPad Mini 6"
        case "iPad13,4 ~ 13,7":  return "iPad Pro 11-inch 3nd gen"
        case "iPad13,8 ~ 13,11":  return "iPad Pro 12.9-inch 5th gen"
        case "iPad13,16", "iPad13,17":  return "iPad Air 5"
        case "iPad13,18", "iPad13,19":  return "iPad 10"
        case "iPad14,3 ~ 14,4":  return "iPad Pro 11-inch 4th gen"
        case "iPad14,5 ~ 14,6":  return "iPad Pro 12.9-inch 6th gen"
        default:
            return "Unknown iPad"
        }
    }
    
    //iPod设备
    private func iPodPlatform(platform: String) -> String {
        switch platform {
        case "iPod1,1":  return "iPod Touch 1G"
        case "iPod2,1":  return "iPod Touch 2G"
        case "iPod3,1":  return "iPod Touch 3G"
        case "iPod4,1":  return "iPod Touch 4G"
        case "iPod5,1":  return "iPod Touch (5 Gen)"
        case "iPod7,1":  return "iPod touch (6th generation)"
        case "iPod9,1":  return "iPod touch (7th generation)"
        default:
            return "Unknown iPod"
        }
    }
}
