//
//  WelcomeScreenViewController.swift
//  Ascend
//
//  Created by Swope, Thomas on 12/14/18.
//  Copyright © 2018 Swope, Thomas. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    
    var inputContainerConstraint : NSLayoutConstraint?
    let logo = UIImageView()
    let mountain = UIImageView()
    //let emailTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackGroundColor()
        view.addSubview(inputsContainerView)
        view.addSubview(loginRegisterButton)
        view.addSubview(signinRegisterButton)
        
        setupInputsContainerView()
        setupSigninRegisterButton()
        setupLoginRegisterButton()
        
        setUpMoutain()
       
        setUpLogo()
        animateLogo(){}//{animateInputView(){}}
    }
    
    func animateLogo(_ completion: () -> ()){
        UIView.animate(withDuration: 1, animations: {
            self.logo.alpha = 0
        },completion:{ complete in self.animateInputView()})
        completion()
    }
    
    func animateInputView(){
        inputContainerConstraint?.constant = 100
        UIView.animate(withDuration: 1, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func setUpLogo(){
        logo.image = #imageLiteral(resourceName: "green")
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        logo.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.layoutIfNeeded()
    }
    
    func setUpMoutain(){
        mountain.image = #imageLiteral(resourceName: "mountains")
        view.addSubview(mountain)
        mountain.alpha = 0.6
        
        mountain.translatesAutoresizingMaskIntoConstraints = false
        
        mountain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 200).isActive = true
        mountain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -200).isActive = true
        mountain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 200).isActive = true
        
        let ratio = #imageLiteral(resourceName: "mountains").size.width / #imageLiteral(resourceName: "mountains").size.height
        mountain.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: ratio, constant: 400)
        
        view.layoutIfNeeded()
    }
    
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        print("container view")
        
        return view
    }()
    
    let signinRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setUpButton()
        button.setTitle("Sign In", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system)
        button.setUpButton()
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let emailSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.grey.value
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    
    func setupInputsContainerView() {
        //need x, y, width, height constraints

        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerConstraint = inputsContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: -400 )
        inputContainerConstraint?.isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        inputsContainerView.addSubview(emailTextField)
        inputsContainerView.addSubview(emailSeparatorView)
        inputsContainerView.addSubview(passwordTextField)
        
        
        //need x, y, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/2).isActive = true
        //need x, y, width, height constraints
        emailSeparatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        //need x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, multiplier: 1/2).isActive = true
    }
    
    func setupSigninRegisterButton() {
        //need x, y, width, height constraints
        signinRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signinRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        signinRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        signinRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupLoginRegisterButton() {
        //need x, y, width, height constraints
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: signinRegisterButton.bottomAnchor, constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
}
