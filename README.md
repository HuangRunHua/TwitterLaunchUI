# TwitterLaunchUI
这是一个模仿Twitter启动界面的demo，只有几行代码，可以在任何app里面使用到。

## 系统要求
- Xcode9.0 及以上
- iOS12.0 及以上
- swift4.0 及以上

## 示例动画
![demo](https://cdn-images-1.medium.com/max/1600/1*_P-I1fBTPcAkGnJC0AeI5Q.gif)

## 核心动画代码
```swift
//播放启动画面动画
    private func launchAnimation() {
        //获取启动视图
        let vc = UIStoryboard(name: "LaunchScreen", bundle: nil).instantiateViewController(withIdentifier: "launch")
        let launchview = vc.view
        self.view.addSubview(launchview!)
        
        //播放动画效果，完毕后将其移除
        UIView.animate(withDuration: 2, delay: 0.5, options: .beginFromCurrentState, animations: {
            let scaleTransform = CGAffineTransform(scaleX: 20, y: 20)
            launchview!.transform = scaleTransform
        }){ (finished) in
            launchview!.removeFromSuperview()
        }
    }
```

## 更多
想了解更多，请参考[构建一个类似Twitter的启动界面](https://medium.com/@h76joker/构建一个类似twitter的启动界面-4ddfac9a15fd)
