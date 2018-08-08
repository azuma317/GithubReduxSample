//
//  APIClient.swift
//  GithubReduxSample
//
//  Created by Azuma on 2018/08/09.
//  Copyright © 2018 Azuma. All rights reserved.
//

import Foundation

protocol APIProtocal {
    func searchRepository(query: String, page: Int, completion: @escaping (Items<Repository<Owner>?>?) -> Void)
}

class APIClient: APIProtocal {
    let baseURL = "https://api.github.com"
    
    func searchRepository(query: String, page: Int, completion: @escaping (Items<Repository<Owner>?>?) -> Void) {
        fetch(url: "\(baseURL)/search/repositories?q=\(query)&page=\(page)", completion: completion)
    }
    
    private func fetch<T: Codable>(url: String, completion: @escaping (T?) -> Void) {
        guard let url = URL(string: url) else { return completion(nil) }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard
                let data = data,
                let json = try? JSONDecoder().decode(T.self, from: data)
                else {
                    return completion(nil)
            }
            completion(json)
        }
        .resume()
    }
    
}
