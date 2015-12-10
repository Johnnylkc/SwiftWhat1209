//
//  JohnnyVC.swift
//  SwiftWhat1209
//
//  Created by 劉坤昶 on 2015/12/9.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class JohnnyVC: UIViewController {

    var ladyButton = UIButton()
    var gagaButton = UIButton()
    var fxxkButton = UIButton()

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        allUi()
        giveMeAutoLayout()
    }

 
    
    
    func allUi()
    {
    
        
        ladyButton.frame = CGRectMake(100, 270, 100, 50)//其實如果有auto layout 這frame就沒作用了
        ladyButton.backgroundColor = UIColor.redColor()
        ladyButton.setTitle("haha", forState: .Normal)
        ladyButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        ladyButton.translatesAutoresizingMaskIntoConstraints = (false) //這句一定要加
        self.view.addSubview(ladyButton)
        
        
        gagaButton.frame = CGRectMake(250, 270, 100, 50)//其實如果有auto layout 這frame就沒作用了
        gagaButton.backgroundColor = UIColor.redColor()
        gagaButton.setTitle("gaga", forState: .Normal)
        gagaButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        gagaButton.translatesAutoresizingMaskIntoConstraints = (false) //這句一定要加
        self.view.addSubview(gagaButton)
        
        fxxkButton.backgroundColor = UIColor.cyanColor()
        fxxkButton.setTitle("fxxk", forState: .Normal)
        fxxkButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        fxxkButton.translatesAutoresizingMaskIntoConstraints = (false)
        fxxkButton.addTarget(self, action: "toNetPage:", forControlEvents: .TouchUpInside)
        self.view.addSubview(fxxkButton)
        

        
    }
    
    
    func toNetPage(sender:UIButton)
    {
        let controller = MainTVC()
        self.navigationController!.pushViewController(controller, animated: true)
        
        
    }
    
    
    func giveMeAutoLayout()
    {
        //先用字典把要做auto layout 的物件裝在一起
        let justDic = ["ladyButton":ladyButton , "gagaButton":gagaButton , "fxxkButton":fxxkButton]
        
        //ladyButton 和 gagaButton
        let horizonConstraints =
        NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[ladyButton]-20-[gagaButton]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(horizonConstraints)
        
        let equalWidthConstraints01 = NSLayoutConstraint.constraintsWithVisualFormat("[ladyButton(==gagaButton)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(equalWidthConstraints01)
        
        let equalWidthConstraints02 = NSLayoutConstraint.constraintsWithVisualFormat("[gagaButton(==ladyButton)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(equalWidthConstraints02)
        
        let ladyButtonHeight = NSLayoutConstraint.constraintsWithVisualFormat("V:[ladyButton(50)]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(ladyButtonHeight)
        
        let gagaButtonHeight = NSLayoutConstraint.constraintsWithVisualFormat("V:[gagaButton(50)]-30-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(gagaButtonHeight)
        
        
        //fxxkutton
        let fxxkButtonLeftAndRight = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[fxxkButton]-20-|", options: NSLayoutFormatOptions.AlignAllRight, metrics: nil, views: justDic)
        self.view.addConstraints(fxxkButtonLeftAndRight)
        
        
        let fxxkButtonBottom = NSLayoutConstraint.constraintsWithVisualFormat("V:[fxxkButton(50)]-90-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        self.view.addConstraints(fxxkButtonBottom)
        
        
        
        
        
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
