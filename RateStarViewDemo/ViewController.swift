//
//  ViewController.swift
//  RateStarViewDemo
//
//  Created by cocoawork on 2017/7/5.
//  Copyright © 2017年 cocoawwork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let v = TFRateBarView(frame: CGRect(x: 10, y: 100, width: 200, height: 30))
        v.delegate = self
        v.maxRateValue = 5
        v.starBackgroundColor = UIColor.lightGray
        v.starTintColor = UIColor.red
        self.view.addSubview(v)
    
        
        let v1 = TFRateBarView(frame: CGRect(x: 10, y: 150, width: 200, height: 30))
        v1.delegate = self
        v1.maxRateValue = 5
        v1.starTintColor = UIColor.green
        self.view.addSubview(v1)
        
        
        
        let v2 = TFRateBarView(frame: CGRect(x: 10, y: 200, width: 200, height: 30))
        v2.delegate = self
        v2.maxRateValue = 5
        v2.starTintColor = UIColor.purple
        self.view.addSubview(v2)
        
        
        
        let v3 = TFRateBarView(frame: CGRect(x: 10, y: 250, width: 200, height: 30))
        v3.delegate = self
        v3.maxRateValue = 5
        v3.starTintColor = UIColor.blue
        self.view.addSubview(v3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: TFRateBarViewDelegate {
    func didSelectedRateBarView(_ rateBarView: TFRateBarView, atIndex index: Int) {
        rateBarView.rate = index
    }
}
