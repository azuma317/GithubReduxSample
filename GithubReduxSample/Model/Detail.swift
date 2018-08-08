//
//  Detail.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/09.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation

struct Detail: Codable {
    let content: String
    
    private enum CodingKeys: String, CodingKey {
        case content
    }
}
