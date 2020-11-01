//
//  PostData.swift
//  Hacker News
//
//  Created by Tonoy Rahman on 2020-10-28.
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



























































