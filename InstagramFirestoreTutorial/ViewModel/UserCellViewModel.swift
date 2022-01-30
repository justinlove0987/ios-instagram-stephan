//
//  UserCellViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2022/1/29.
//

import Foundation


struct UserCellViewModel {
    
    private let user: User
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    var username: String {
        return user.username
    }
    
    var fullname: String {
        return user.fullname
    }
    
    
    init(user: User) {
        self.user = user
    }
}
