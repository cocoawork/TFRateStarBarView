# 星星评分控件
![](https://github.com/cocoawork/TFReateStarBarView/raw/master/QQ20170706-092408.gif)  
* ### 如何使用
  添加 ``TFRateBarView`` 到你的工程
* ### example 
```
        let v = TFRateBarView(frame: CGRect(x: 10, y: 100, width: 200, height: 30))
        v.delegate = self
        v.maxRateValue = 5   //设置星星个数
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
```
* ### 点击设置评分功能
  * 实现 ``TFRateBarViewDelegate``
  * 在代理方法内设置评分
```
    func didSelectedRateBarView(_ rateBarView: TFRateBarView, atIndex index: Int) {
        rateBarView.rate = index
    }
```
