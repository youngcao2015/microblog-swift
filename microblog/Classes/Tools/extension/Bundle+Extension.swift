//
//  Bundel+Extension.swift
//  microblog
//
//  Created by cy on 2017/8/26.
//  Copyright © 2017年 Aisino. All rights reserved.
//

import Foundation


extension Bundle {
    //    func namespace() -> String {
    //        return infoDictionary?["CFBundleName"] as? String ?? ""
    //    }
    
    
    // 计算型属性
    var namespace: String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
