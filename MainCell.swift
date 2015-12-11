//
//  MainCell.swift
//  SwiftWhat1209
//
//  Created by 劉坤昶 on 2015/12/9.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {

    
    var bandPhoto = UIImageView()
    var bandName = UILabel()
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        bandPhoto.contentMode = .ScaleAspectFill
        bandPhoto.clipsToBounds = true
        bandPhoto.layer.cornerRadius = 40
        bandPhoto.translatesAutoresizingMaskIntoConstraints = (false)
        self.contentView.addSubview(bandPhoto)
        
        bandName.textColor = UIColor.redColor()
        bandName.backgroundColor = UIColor.grayColor()
        bandName.font = UIFont.boldSystemFontOfSize(20)
        bandName.translatesAutoresizingMaskIntoConstraints = (false)
        self.contentView.addSubview(bandName)
        
        
        cellAutoLayout()
        
    }

    
    
    
    
    func cellAutoLayout()
    {
        
        let justDic = ["bandPhoto":bandPhoto , "bandName":bandName]
        
        let left = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[bandPhoto(80)]-20-[bandName(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        contentView.addConstraints(left)
        
        
        let top  = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[bandPhoto(80)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        contentView.addConstraints(top)
        
        
        let labelTop = NSLayoutConstraint.constraintsWithVisualFormat("V:|-10-[bandName(80)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: justDic)
        contentView.addConstraints(labelTop)

        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
