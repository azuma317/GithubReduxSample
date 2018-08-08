//
//  Owner.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/08.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation

struct Owner: Codable {
    let id: Int
    let login: String
    let avatarURL: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case login
        case avatarURL
    }
}
