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
        
        bandPhoto.frame = CGRectMake(0, 0, 80, 80)
        bandPhoto.contentMode = .ScaleAspectFill
        bandPhoto.clipsToBounds = true
        bandPhoto.layer.cornerRadius = 40
        self.contentView.addSubview(bandPhoto)
        
        bandName.frame = CGRectMake(100, 50, 120, 40)
        bandName.textColor = UIColor.redColor()
        bandName.font = UIFont.boldSystemFontOfSize(20)
        self.contentView.addSubview(bandName)
        
    }

    required init?(coder aDecoder: NSCoder) {
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
