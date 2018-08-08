//
//  Items.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/08.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation

struct Items<T: Codable>: Codable {
    let totalCount: Int
    let items: [T]
    
    private enum CodingKeys: String, CodingKey {
        case totalCount = ""
        case items
    }
}
