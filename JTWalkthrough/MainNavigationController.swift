//
//  MainNavigationController.swift
//  JTWalkthrough
//
//  Created by Jaksa Tomovic on 27/02/17.
//  Copyright © 2017 Jaksa Tomovic. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
        }else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
        
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    func showLoginController() {
        let welcomeScreen = WelcomeViewController()
        present(welcomeScreen, animated: true, completion: {
            //perhaps later
        })
    }
    
}


