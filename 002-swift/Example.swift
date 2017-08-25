//
//  ViewController.swift
//  002-swift
//
//  Created by cy on 2017/8/20.
//  Copyright © 2017 Aisino. All rights reserved.
//

import UIKit


class Example: UIViewController {
    
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: 后续要添加一些属性
        let v = UIView(frame: CGRect(x:0, y:0, width:100, height:100))
        v.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        view.addSubview(v)
        
        // MARK: 创建图片视图
        let imgv = UIImageView(image: #imageLiteral(resourceName: "girl"))
        imgv.frame = CGRect(x: 0, y: view.bounds.height/2, width: 200, height: 200)
        view.addSubview(imgv)
        
        // FIXME: 此处有bug
        test()
        print(getValue(key: "young"))
        cy_print(str: "你好啊")
    }
    
    // MARK: - 变量和常量的声明
    func test() {
        var x = 10
        x = 111
        
        let y = 10.1
        
        print(x,y)
    }
    
    // MARK: - 获取值，返回值为String
    func getValue(key: String) -> String {
        return key;
    }
    
    // MARK: - 获取值，没有返回值
    func cy_print(str: String) -> Void {
        print(str)
    }
    
    // FIXME: - 需要处理内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

