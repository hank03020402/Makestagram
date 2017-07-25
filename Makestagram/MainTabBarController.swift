//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Hank on 2017/7/24.
//  Copyright © 2017年 Hank. All rights reserved.
//

import Foundation
import UIKit
class MainTabBarController: UITabBarController{
    let PhotoHelper = MGPhotoHelper()
    override func viewDidLoad() {
            super.viewDidLoad()
        PhotoHelper.completionHandler = { image in
            PostService.create(for: image)
        }
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }
}
    
extension MainTabBarController: UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            PhotoHelper.presentActionSheet(from: self)
            
            return false
        } else {
            return true
        }
    }
}
