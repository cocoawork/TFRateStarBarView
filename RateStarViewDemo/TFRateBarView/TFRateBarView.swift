//
//  RateBarView.swift
//  RateStarViewDemo
//
//  Created by cocoawork on 2017/7/5.
//  Copyright © 2017年 cocoawwork. All rights reserved.
//

import UIKit


@objc protocol TFRateBarViewDelegate {
    @objc optional func didSelectedRateBarView(_ rateBarView: TFRateBarView, atIndex index: Int)
}



class TFRateBarView: UIView {

    fileprivate var baseView: UIView!
    var stars: [TFRateStarView] = []
    var rate: Int = 0{
        didSet{
            self.setNeedsLayout()
        }
    }
    var maxRateValue: Int = 5 {
        didSet{
            for _ in 1...maxRateValue {
                let star = TFRateStarView()
                stars.append(star)
                let tap = UITapGestureRecognizer(target: self, action: #selector(starViewDidTap(sender:)))
                star.addGestureRecognizer(tap)
            }
        }
    }

    var delegate: TFRateBarViewDelegate?
    var starTintColor: UIColor! = UIColor.orange
    var starBackgroundColor: UIColor! = UIColor.groupTableViewBackground
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.baseView = UIView()
        self.addSubview(baseView)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func starViewDidTap(sender: UITapGestureRecognizer) {
        let starView = sender.view
        let index = stars.index(of: starView as! TFRateStarView)
        if self.delegate != nil {
            delegate?.didSelectedRateBarView?(self, atIndex: index! + 1)
        }
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        baseView.center = self.center
        baseView.frame = CGRect(x: 5, y: 3, width: frame.width - 10, height: frame.height - 6)
        let margin: CGFloat = 3
        let width = baseView.frame.size.height
        let height = width
        for i in 0...maxRateValue - 1 {
            let star = stars[i]
            star.frame = CGRect(x: (width + margin) * CGFloat(i) + margin , y: 0, width: width, height: height)
            if i <= rate - 1 {
                star.starColor = starTintColor
            }else {
                star.starColor = starBackgroundColor
            }
            baseView.addSubview(star)
        }
        
        
    }
    
}
