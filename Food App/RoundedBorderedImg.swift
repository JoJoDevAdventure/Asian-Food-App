//
//  RoundedBorderedImg.swift
//  Food App
//
//  Created by Youssef Bhl on 12/01/2022.
//

import UIKit

class RoundedBorderedImg: UIImageView {
    
    func labelColor() -> CGColor? {
        if UIColor.systemBackground == UIColor.white {
            return UIColor.black.cgColor
        } else if UIColor.systemBackground == UIColor.black {
            return UIColor.white.cgColor
        }
        return UIColor.label.cgColor
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        roundedImage()
        borderedImage()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        roundedImage()
        borderedImage()
    }
    
    func roundedImage() {
        let height = frame.height
        let width = frame.width
        let min = height<=width ?  height : width
        clipsToBounds = true
        layer.cornerRadius = min/2
    }
    
    func borderedImage() {
        layer.borderWidth = 3
        let color = labelColor()
        layer.borderColor = color
    }
    
}
