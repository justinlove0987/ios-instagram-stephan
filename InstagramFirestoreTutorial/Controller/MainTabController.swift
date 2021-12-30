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
        let feed = FeedController()
        
        let search = SearchController()
        
        let imageSelector = ImageSelectorController()
        
        let notification = NotificationController()
        
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notification, profile]
    }
    
}
