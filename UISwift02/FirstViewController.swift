//
//  FirstViewController.swift
//  UISwift02
//
//  Created by kong on 16/1/19.
//  Copyright © 2016年 kong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initUI()





    }

    /**
     初始化UI

     - returns: void
     */
    func initUI(){

        self.title                = "首页"
        self.view.backgroundColor = UIColor.brownColor()

        //TODO: UILabel
        let label                 = UILabel()
        label.backgroundColor     = UIColor.whiteColor()
        label.frame               = CGRectMake((KScreenWidth - 200) / 2, 200, 200, 100)
        label.font                = UIFont.systemFontOfSize(30)
        label.textAlignment       = NSTextAlignment.Center
        label.textColor           = UIColor.lightGrayColor()
        label.text                = "第一个控制器"
        label.tag                 = 100;
        self.view .addSubview(label)

        //TODO: UIButton
        let button                = UIButton()
        button.backgroundColor    = UIColor.grayColor()
        button.frame              = CGRectMake((KScreenWidth - 200) / 2, 500, 200, 50)
        button .setTitle("", forState: UIControlState.Normal)
        button .addTarget(self, action: "btnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view .addSubview(button)



    }

    //TODO: BUTTONCLICK
    func btnClick( button : UIButton! ){

        let sView                 = button.superview
        let label1                = sView?.viewWithTag(100) as? UILabel
        button.setTitle(label1?.text, forState: UIControlState.Normal)
        let str                   = self.changeButtonColor(button)
        
        print(str)


    }

    //TODO: FUNCWithParams
    func changeButtonColor(button : UIButton!) ->(NSString!){

        let str                   = button.titleLabel?.text
        
        return str;
    }


    
}
