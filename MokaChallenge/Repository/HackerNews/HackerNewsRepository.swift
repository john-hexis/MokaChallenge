//
//  HackerNewsRepository.swift
//  MokaChallenge
//
//  Created by John Harries on 19/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import Foundation

class HackerNewsRepository: BaseOneDSRepository<HackerNewsRemoteDataSource> {
    
    static var _instance: HackerNewsRepository?
    static var shared: HackerNewsRepository {
        get {
            guard let instance = _instance else {
                return HackerNewsRepository(remoteDataSource: HackerNewsRemoteDataSource())
            }
            
            return instance
        }
    }
    
    func getTopNews(onSuccess: @escaping ([HackerNewsModel]) -> Void, onFailure: @escaping (NSError) -> Void) {
        
    }
}
