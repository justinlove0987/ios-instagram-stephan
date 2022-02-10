//
//  PostService.swift
//  InstagramFirestoreTutorial
//
//  Created by 曾柏瑒 on 2022/2/9.
//

import UIKit
import Firebase

struct PostService {
    
    // anything that sort of UI based. we are going to add an input parameter
    static func uploadPost(caption: String, image: UIImage, completion: @escaping(FirestoreCompletion)) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            let data = ["caption": caption,
                        "timestamp": Timestamp(date: Date()),
                        "likes": 0,
                        "imageUrl": imageUrl,
                        "ownerUid": uid] as [String: Any]
            
            COLLECTION_POSTS.addDocument(data: data, completion: completion)
        }
    }
    
}
