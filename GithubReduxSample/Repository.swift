//
//  Repository.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/08.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation

struct Repository<T: Codable>: Codable {
    let name: String
    let id: Int
    let html: String
    let description: String
    let starCount: Int
    let language: String
    let owner: T
    
    private enum CodingKeys: String, CodingKey {
        case name
        case id
        case html = "html_url"
        case description
        case star = "stargazers_count"
        case language
        case owner
    }
}
