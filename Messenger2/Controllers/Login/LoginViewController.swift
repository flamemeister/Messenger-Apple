//
//  LoginViewController.swift
//  Messenger2
//
//  Created by Aldiyar Saken on 02.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        view.backgroundColor = .gray

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: .done, target: self, action: #selector(didTapRegister))
        //addition of subvviews
        view.addSubview(imageView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size = view.frame.size.width/3
        imageView.frame = CGRect(x: (view.frame.size.width)/2,
                                 y: 20,
                                 width: size,
                                 height: size)
    }

    @objc private func didTapRegister(){
        let vc = RegisterViewController()
        vc.title = "Create an Account"
        navigationController?.pushViewController(vc, animated: true)
    }
 

}
