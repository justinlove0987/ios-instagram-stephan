//
//  AuthService.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2022/1/7.
//

import UIKit
import Firebase


struct AuthCredentials {
    let email: String
    let password: String
    let fullname: String
    let username: String
    let profileImage: UIImage
}


struct AuthService {
    static func registerUser(withCredential credentials: AuthCredentials) {
        print("DEBUG: Credentials are \(credentials)")
        
    }
}
