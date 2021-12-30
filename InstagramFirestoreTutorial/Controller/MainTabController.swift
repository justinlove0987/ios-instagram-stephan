//
//  MainTabController.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2021/12/30.
//

import UIKit

class MainTabController: UITabBarController {
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    // MARK: - Helpers
    
    func configureViewController() {
        view.backgroundColor = .white
        let feed = templateNavigationController(unselectedImage: UIImage(named: "home_unselected")!,
                                                selectedImage: UIImage(named: "home_selected")!,
                                                rootViewController: FeedController())
        
        let search = templateNavigationController(unselectedImage: UIImage(named: "search_unselected")!,
                                                  selectedImage: UIImage(named: "search_selected")!,
                                                  rootViewController: FeedController())
        
        let imageSelector = templateNavigationController(unselectedImage: UIImage(named: "plus_unselected")!,
                                                         selectedImage: UIImage(named: "plus_unselected")!,
                                                         rootViewController: ImageSelectorController())
        
        let notification = templateNavigationController(unselectedImage: UIImage(named: "like_unselected")!,
                                                        selectedImage: UIImage(named: "like_selected")!,
                                                        rootViewController: NotificationController())
        
        let profile = templateNavigationController(unselectedImage: UIImage(named: "profile_unselected")!,
                                                   selectedImage: UIImage(named: "profile_selected")!,
                                                   rootViewController: NotificationController())
        
        viewControllers = [feed, search, imageSelector, notification, profile]
        tabBar.tintColor = .black
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
    
}
