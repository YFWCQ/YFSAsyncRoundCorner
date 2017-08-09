
//
//  UIImage+YFSRoundCorner.swift
//  YFSAsyncRoundCorner
//
//  Created by FYWCQ on 2017/8/8.
//  Copyright © 2017年 YFWCQ. All rights reserved.
//

import UIKit

extension UIImage {
    
    func yf_roundConner() -> UIImage {
        return self.imageByRoundCornerRadius(radius: self.size.width / 2.0, fillColor: nil, borderWidth: 0, borderColor: nil)
    }
    
    func imageByRoundCornerRadius(radius:CGFloat , fillColor:UIColor? , borderWidth:CGFloat ,borderColor:UIColor? ) -> UIImage {
        
        
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        let context:CGContext = UIGraphicsGetCurrentContext()!

        let rect:CGRect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        
        context.scaleBy(x: 1, y: -1);

        context.translateBy(x: 0, y: -rect.size.height);

        if fillColor != nil {
            fillColor?.setFill()
            UIRectFill(rect)
        }
        
        let minSize:CGFloat = min(self.size.width, self.size.height)
        
        if borderWidth < minSize / 2.0 {
            
            let path:UIBezierPath = UIBezierPath(roundedRect: rect.insetBy(dx: borderWidth, dy: borderWidth), byRoundingCorners: UIRectCorner.allCorners, cornerRadii: CGSize(width: radius, height: borderWidth))
            path.close()
            context.saveGState();
            path.addClip()

            context.draw(self.cgImage!, in: rect)
            context.restoreGState();
        }

        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();

        return image!
    }
    
}
