//
//  UIImageView+YFSRoundCorner.swift
//  YFSAsyncRoundCorner
//
//  Created by FYWCQ on 2017/8/8.
//  Copyright © 2017年 YFWCQ. All rights reserved.
//

import Kingfisher

extension UIImageView {
    
    /// 异步获取图片，并且设置为圆角
    ///
    /// - Parameters:
    ///   - resource: URL
    ///   - placeholder: UIImage
    public func yf_setAsyncRoundCornnerImage(with resource: URL?,
                         placeholder: UIImage? = nil)
    {
        self.image = placeholder
        
        self.kf.setImage(with: resource, placeholder: placeholder, options: KingfisherManager.shared.defaultOptions, progressBlock: nil) { (image, error, cacheType, url) in
         
            /// image 为 nil 也会调用，可以根据需求调整
            if let realImage = image {
            self.image = realImage.yf_roundConner();
            }
            
        }
    }
}
