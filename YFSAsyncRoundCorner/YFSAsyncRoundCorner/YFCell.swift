//
//  YFCell.swift
//  YFSAsyncRoundCorner
//
//  Created by FYWCQ on 2017/8/7.
//  Copyright © 2017年 YFWCQ. All rights reserved.
//

import UIKit

class YFCell: UITableViewCell {

    var headImageView:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        headImageView = UIImageView(frame: CGRect(x: 19, y: 14, width: 48, height: 48))
        
        self.contentView.addSubview(headImageView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
