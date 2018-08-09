//
//  MainState.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/10.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation
import ReSwift

enum SearchState {
    case canceled
    case ready
    case searching(String)
}

enum RepositoryDetailState {
    case willHide(Repository<Owner>)
    case hide
    case show(Repository<Owner>)
}

struct MainState: StateType {
    
}
