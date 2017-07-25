//
//  StorageService.swift
//  Makestagram
//
//  Created by Hank on 2017/7/24.
//  Copyright © 2017年 Hank. All rights reserved.
//

import Foundation
import FirebaseStorage
import UIKit
class StorageService{
    static func uploadImage(_ image: UIImage, at reference: StorageReference, completion: @escaping (URL?) -> Void) {
        // 1
        guard let imageData = UIImageJPEGRepresentation(image, 0.1) else {
            return completion(nil)
        }
        
        // 2
        reference.putData(imageData, metadata: nil, completion: { (metadata, error) in
            // 3
            if let error = error {
                assertionFailure(error.localizedDescription)
                return completion(nil)
            }
            
            // 4
            completion(metadata?.downloadURL())
        })
}
}
