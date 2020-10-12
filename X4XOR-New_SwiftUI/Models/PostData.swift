//
//  PostData.swift
//  X4XOR-New_SwiftUI
//
//  Created by Vladimir Gorbunov on 10/12/20.
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
    let title: String
    let url: String?
    let points: Int
}
