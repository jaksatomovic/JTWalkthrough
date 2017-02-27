//
//  HomeController.swift
//  JTWalkthrough
//
//  Created by Jaksa Tomovic on 27/02/17.
//  Copyright © 2017 Jaksa Tomovic. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Feed"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
    
    func handleSignOut() {
        
        UserDefaults.standard.setIsLoggedIn(value: false)
        
        let welcomeController = WelcomeViewController()
        present(welcomeController, animated: true, completion: nil)
        
    }
    
}
