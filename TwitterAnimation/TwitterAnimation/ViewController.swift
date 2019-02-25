//
//  ViewController.swift
//  TwitterLikeApp
//
//  Created by Joker Hook on 2019/2/10.
//  Copyright © 2019 com.icloud@h76joker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchAnimation()
        view.backgroundColor = .green
        
    }
    
    
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
    
    
    
}

