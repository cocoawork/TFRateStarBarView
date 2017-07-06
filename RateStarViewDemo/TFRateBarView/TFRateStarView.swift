//
//  RateStarView.swift
//  RateStarViewDemo
//
//  Created by cocoawork on 2017/7/5.
//  Copyright © 2017年 cocoawwork. All rights reserved.
//

import UIKit

class TFRateStarView: UIView {

    var starColor: UIColor = UIColor.groupTableViewBackground {
        didSet{
            self.setNeedsDisplay()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        self.backgroundColor = UIColor.clear
        
        var points: [CGPoint] = []
        
        let context = UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.clear.cgColor)
        context?.setFillColor(starColor.cgColor)
        context?.setLineWidth(1)
        
        let radius = Float(self.bounds.width / 2)
        let angel = Double.pi * 2 / 5
        for i in 1...5 {
            let x = Float(self.bounds.width / 2) - sinf(Float(i) * Float(angel)) * radius
            let y = Float(self.bounds.height / 2) - cosf(Float(i) * Float(angel)) * radius
            points.append(CGPoint(x: CGFloat(x), y: CGFloat(y)))
        }
        context?.move(to: points.first!)
        for i in 1...5 {
            let index = (2 * i) % 5
            context?.addLine(to: points[index])
        }
        
        context?.closePath()
        context?.drawPath(using: CGPathDrawingMode.fillStroke)
        
        
        
        
    }
    
    
    

}
