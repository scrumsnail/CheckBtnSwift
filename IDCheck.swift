//
//  IDCheck.swift
//  CheckBtnSwift
//
//  Created by Hello World on 16/8/7.
//  Copyright © 2016年 鲁友堆. All rights reserved.
//

import UIKit
typealias Click = ()->Void
class IDCheck: UIView {
    let checkBox = UIButton()
    let checkLabel = UILabel()
    var myBtnclik : Click?
    
    func setUpUI(title:String) -> Void {
        checkLabel.frame = CGRectZero
        checkLabel.font = UIFont.systemFontOfSize(15)
        checkLabel.text = title
        
        checkLabel.frame = CGRectMake(0, 10, 40, 20)
       
        
        self.addSubview(checkLabel)
        
        let bgImage = UIImage(named: "icon_checkbox_background")
        checkBox.setBackgroundImage(bgImage, forState: UIControlState.Normal)
        checkBox.setBackgroundImage(bgImage, forState: UIControlState.Highlighted)
        checkBox.setBackgroundImage(bgImage, forState: UIControlState.Selected)
        checkBox.setBackgroundImage(UIImage(named: "icon_checkbox_unselected"), forState: UIControlState.Normal)
        checkBox.setBackgroundImage(UIImage(named: "icon_checkbox_selected"), forState: UIControlState.Highlighted)
        checkBox.setBackgroundImage(UIImage(named: "icon_checkbox_selected"), forState: UIControlState.Selected)
        checkBox.addTarget(self, action: #selector(btnClick), forControlEvents: UIControlEvents.TouchUpInside)
         checkBox.frame = CGRectMake(45, 10, 20, 20)
        self.addSubview(checkBox)
        
    }
    
    func btnClick()  {
        if (myBtnclik != nil) {
            myBtnclik!()
        }
    }
    
    func block(closure:Click) -> Void {
        myBtnclik = closure
    }
    
    func refresh(selected:Bool) -> Void {
        if checkBox.selected {
            checkBox.selected = false
        }else{
            checkBox.selected = selected
        }
    }
    
    override func layoutSubviews() {
        
    }
    
    
    
}

