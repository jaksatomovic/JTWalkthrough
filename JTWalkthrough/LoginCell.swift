
//
//  LoginCell.swift
//  JTWalkthrough
//
//  Created by Jaksa Tomovic on 27/02/17.
//  Copyright © 2017 Jaksa Tomovic. All rights reserved.
//

import UIKit

class LoginCell: UICollectionViewCell {
    
    let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo")
        return iv
    }()
    
    let emailTextField: CustomTextField = {
        let tv = CustomTextField()
        tv.placeholder = "Enter e-mail"
        tv.layer.borderColor = UIColor.lightGray.cgColor
        tv.layer.borderWidth = 1
        tv.keyboardType = .emailAddress
        return tv
    }()
    
    let passwordTextField: CustomTextField = {
        let tv = CustomTextField()
        tv.placeholder = "Enter password"
        tv.layer.borderColor = UIColor.lightGray.cgColor
        tv.layer.borderWidth = 1
        tv.isSecureTextEntry = true
        return tv
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 247/255, green: 154/255, blue: 27/255, alpha: 1)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    
    weak var delegate: WelcomeViewController?
    
    func handleLogin() {
        delegate?.finishLoggingIn()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(logoImageView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        _ = logoImageView.anchor(centerYAnchor, left: nil, bottom: nil, right: nil, topConstant: -220, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 160, heightConstant: 160)
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        _ = emailTextField.anchor(logoImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 8, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 0, heightConstant: 50)
        
         _ = passwordTextField.anchor(emailTextField.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 16, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 0, heightConstant: 50)
        
        _ = loginButton.anchor(passwordTextField.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 16, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 0, heightConstant: 50)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CustomTextField: UITextField {
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
}




















