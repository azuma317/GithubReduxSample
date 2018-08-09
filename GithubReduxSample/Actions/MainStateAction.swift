//
//  MainStateAction.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/10.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation
import ReSwift

enum MainStateAction: Action {
    case fetchNextRepositories(totalPages: Int, repositories: [Repository<Owner>])
    case showRepositoryDetail(Repository<Owner>)
    case willHideRepositoryDetail(Repository<Owner>)
    case hideRepositoryDetail
    case readySearch
    case search(String)
    case cancelSearch
}
