//
//  ViewController.swift
//  002-swift
//
//  Created by cy on 2017/8/20.
//  Copyright © 2017 Aisino. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
      

        loadData { (result) in
            for item in result {
                print(item)
            }
        }
        
//        let v = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        v.backgroundColor = UIColor.red
//        view.addSubview(v)
        
        navigationItem.title = "我是标题"
    }
    
    
    /// 异步请求
    ///
    /// - Parameter completion: 返回请求的数据
    func loadData(completion: @escaping (_ result: [String]) -> ()) {
        DispatchQueue.global().async { 
            print(Thread.current)
            
            Thread.sleep(forTimeInterval: 1)
            
            let json = ["头条", "八卦", "新闻"]
            
            DispatchQueue.main.async(execute: {
                print(Thread.current)
                
                completion(json)
            })
        }
    }
    
}

