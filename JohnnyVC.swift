//
//  JohnnyVC.swift
//  SwiftWhat1209
//
//  Created by 劉坤昶 on 2015/12/9.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class JohnnyVC: UIViewController {


    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
    allUi()
    
       
    }

    //有加這方法 staus bar 就會不見
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
    
    
    
    func allUi()
    {
    
        let ladyButton = UIButton()
        ladyButton.frame = CGRectMake(100, 270, 100, 50)//其實如果有auto layout 這frame就沒作用了
        ladyButton.backgroundColor = UIColor.redColor()
        ladyButton.setTitle("haha", forState: .Normal)
        ladyButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        ladyButton.translatesAutoresizingMaskIntoConstraints = (false) //這句一定要加
        self.view.addSubview(ladyButton)
        
        
        let gagaButton = UIButton()
        gagaButton.frame = CGRectMake(250, 270, 100, 50)//其實如果有auto layout 這frame就沒作用了
        gagaButton.backgroundColor = UIColor.redColor()
        gagaButton.setTitle("gaga", forState: .Normal)
        gagaButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        gagaButton.translatesAutoresizingMaskIntoConstraints = (false) //這句一定要加
        self.view.addSubview(gagaButton)
        
        
        
//        let leftConstraint = NSLayoutConstraint(item: hahaButton, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.LeadingMargin, multiplier: 1.0, constant: 0)
//        
//        let rightConstraint = NSLayoutConstraint(item: hahaButton, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.TrailingMargin, multiplier: 1.0, constant: -100)
//        
//        let topConstraint = NSLayoutConstraint(item: hahaButton, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.TopMargin, multiplier: 1.0, constant: 100)
//        
//        view.addConstraints([leftConstraint,rightConstraint,topConstraint])
        
        
        //先用字典把要做auto layout 的物件裝在一起
        let justDic = ["ladyButton":ladyButton , "gagaButton":gagaButton]
        
        
        
        
        let horizonConstraints =
        NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[ladyButton]-20-[gagaButton]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(horizonConstraints)
        
        let equalWidthConstraints01 = NSLayoutConstraint.constraintsWithVisualFormat("[ladyButton(==gagaButton)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(equalWidthConstraints01)
        
        let equalWidthConstraints02 = NSLayoutConstraint.constraintsWithVisualFormat("[gagaButton(==ladyButton)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(equalWidthConstraints02)

        
//        let verticalConstraints01 = NSLayoutConstraint.constraintsWithVisualFormat("V:[ladyButton]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
//        self.view.addConstraints(verticalConstraints01)
//
//    
//        let verticalConstraints02 = NSLayoutConstraint.constraintsWithVisualFormat("V:[gagaButton]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
//        self.view.addConstraints(verticalConstraints02)

        
        
        
        let ladyButtonHeight = NSLayoutConstraint.constraintsWithVisualFormat("V:[ladyButton(50)]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(ladyButtonHeight)
        
        let gagaButtonHeight = NSLayoutConstraint.constraintsWithVisualFormat("V:[gagaButton(50)]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(gagaButtonHeight)
        
        
    }
    
    
    
    
    
    
  
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
