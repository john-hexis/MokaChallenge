//
//  HackerNewsRemoteDataSource.swift
//  MokaChallenge
//
//  Created by John Harries on 20/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import Foundation

class HackerNewsRemoteDataSource: HackerNewsRemoteDataSourceProtocol {
    func getTopNews(success: @escaping ([Double]) -> Void, failure: @escaping (NSError) -> Void) {

    }
    
    func getNewsDetail(id: Double, success: @escaping (ResponseNewsModel) -> Void, failure: @escaping (NSError) -> Void) {
        
    }
}
