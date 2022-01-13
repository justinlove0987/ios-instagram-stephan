//
//  ProfileHeaderViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2022/1/13.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    init(user: User) {
        self.user = user
    }
}
