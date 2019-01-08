//
//  SignOutViewController.swift
//  Ascend
//
//  Created by Swope, Thomas on 1/8/19.
//  Copyright © 2019 Swope, Thomas. All rights reserved.
//

import UIKit
import FirebaseAuth


class SignOutViewController: UIViewController {
    
    let signOutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(signOutButton)
        setupSignOutRegisterButton()
        view.setBackGroundColor()
    }
    
    @objc func signOut(){
        try! Auth.auth().signOut()
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupSignOutRegisterButton() {
        //need x, y, width, height constraints
        signOutButton.setUpButton()
        signOutButton.setTitle("Sign Out", for: .normal)
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        signOutButton.addTarget(self, action: #selector(signOut), for: .touchUpInside)
        signOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signOutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        signOutButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
        signOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
