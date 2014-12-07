//
//  LoginViewController.swift
//  FabricTest
//
//  Created by Daichi Ichihara on 2014/12/07.
//  Copyright (c) 2014年 MokuMokuCloud. All rights reserved.
//

import UIKit
import TwitterKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = TWTRLogInButton(logInCompletion: {
            session, error in
            if session != nil {
                println(session.userName)
                // ログイン成功したらクソ遷移する
                let timelineVC = TimelineViewController()
                UIApplication.sharedApplication().keyWindow?.rootViewController = timelineVC
            } else {
                println(error.localizedDescription)
            }
        })
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
    }
}
