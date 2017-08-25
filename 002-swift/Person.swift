//
//  Person.swift
//  002-swift
//
//  Created by cy on 2017/8/25.
//  Copyright © 2017年 Aisino. All rights reserved.
//

import Foundation

class Person: NSObject {
    var name: String?
    var age: Int = 0
    var title: String?
    
    class func propertyList() -> [String] {
        
        var outCount: UInt32 = 0
        let list = class_copyPropertyList(self, &outCount)
        
        for i in 0..<Int(outCount) {
            guard let pty = list?[i],
                  let cName = property_getName(pty),
                  let name = String(utf8String: cName)
            else {
                    continue
            }
            
            print(name)
        }
        
        free(list)
        
        return []
    }
    
    
}
