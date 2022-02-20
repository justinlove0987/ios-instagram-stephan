//
//  Comment.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2022/2/20.
//

import Firebase

struct Comment {
    let uid: String
    let username: String
    let profileImageUrl: String
    let timestamp: Timestamp
    let commentText: String
    
    init(dictionary: [String: Any]) {
        self.uid = dictionary["uid"] as? String ?? ""
        self.username = dictionary["username"] as? String  ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String  ?? ""
        self.timestamp = dictionary["comment"] as? Timestamp  ?? Timestamp(date: Date())
        self.commentText = dictionary["comment"] as? String  ?? ""
    }
    
}
