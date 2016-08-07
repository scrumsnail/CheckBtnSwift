//
//  ViewController.swift
//  CheckBtnSwift
//
//  Created by Hello World on 16/8/7.
//  Copyright © 2016年 鲁友堆. All rights reserved.
//

import UIKit
enum IDType {
    case teacher
    case student
    case parent
}
class ViewController: UIViewController {

    let check1 = IDCheck()
    
    let check2 = IDCheck()
    
    let check3 = IDCheck()
    
    //随意初始值swift会自动判断类型
    var ID = IDType.teacher
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    
    func setUpUI()  {
        check1.setUpUI("老师" )
        check2.setUpUI("学生" )
        check3.setUpUI("家长")
        check1.frame = CGRectMake(50, 200, 80, 40)
        check2.frame = CGRectMake(50, 250, 80, 40)
        check3.frame = CGRectMake(50, 300, 80, 40)
        check1.block {
            self.ID = IDType.teacher
            self.check1.refresh(true)
            self.check2.refresh(false)
            self.check3.refresh(false)
            print(self.ID);
        }
        check2.block { 
            self.ID = IDType.student
            self.check1.refresh(false)
            self.check2.refresh(true)
            self.check3.refresh(false)
            print(self.ID);
        }
        check3.block { 
            self.ID = IDType.parent
            self.check1.refresh(false)
            self.check2.refresh(false)
            self.check3.refresh(true)
            print(self.ID);
        }
        self.view.addSubview(check1)
        self.view.addSubview(check2)
        self.view.addSubview(check3)
    }
   
    
    


}

