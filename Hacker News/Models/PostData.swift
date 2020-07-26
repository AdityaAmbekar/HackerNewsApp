//
//  PostData.swift
//  Hacker News
//
//  Created by Aditya Ambekar on 26/07/20.
//  Copyright © 2020 Aditya Ambekar. All rights reserved.
//

import Foundation


struct Results: Decodable {
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String? 
}
