//
//  FloatingButton.swift
//  FloatingHeads
//
//  Created by Jeff Huang on 2015-08-05.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

import UIKit

extension UIColor{
    class func flatWhiteColor() -> UIColor{
        return UIColor(red: 0.9274, green: 0.9436, blue: 0.95, alpha: 1.0)
    }
    class func flatBlackColor() -> UIColor{
        return UIColor(red: 0.1674, green: 0.1674, blue: 0.1674, alpha: 1.0)
    }
    class func flatBlueColor() -> UIColor{
        return UIColor(red: 0.3132, green: 0.3974, blue: 0.6365, alpha: 1.0)
    }
    class func flatRedColor() -> UIColor{
        return UIColor(red: 0.9115, green: 0.2994, blue: 0.2335, alpha: 1.0)
    }
}

class FloatingButton: UIButton {
    
    var name:String = ""
    
    init(frame: CGRect, image: UIImage, bgColor: UIColor) {
        super.init(frame: frame)
        setImage(image, forState: .Normal)
        self.backgroundColor = bgColor
        self.tintColor = UIColor.whiteColor()
        self.layer.cornerRadius = 20
    }
    
    convenience init(frame: CGRect, image: UIImage, bgColor: UIColor, name: String) {
        self.init(frame: frame, image: image, bgColor: bgColor)
        self.name = name
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
