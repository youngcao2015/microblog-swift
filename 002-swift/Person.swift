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
    // 基本数据类型在OCh中没有可选，如果定义成可选，运行时获取不到，使用KVC就会崩溃
    var age: Int = 0
    // private 的属性，使用运行时同样获取不到属性（可获取ivar），使用kvc会崩溃
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
