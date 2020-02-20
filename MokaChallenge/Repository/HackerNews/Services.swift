//
//  Services.swift
//  MokaChallenge
//
//  Created by John Harries on 19/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import Foundation

class Services {
    private static var baseURL = {
        return "https://hacker-news.firebaseio.com"
    }
    
    enum API {
        case NewTopBestStories
        case StoryDetail
        
        func path() -> String {
            switch self {
            case .NewTopBestStories: return String(format: "%@/v0/topstories.json?print=pretty", baseURL())
            default: return ""
            }
        }
        
        func path(with itemId: String) -> String {
            switch self {
            case .StoryDetail: return String(format: "%@/v0/item/%@.json?print=pretty", baseURL(), itemId)
            default: return ""
            }
        }
    }
}
