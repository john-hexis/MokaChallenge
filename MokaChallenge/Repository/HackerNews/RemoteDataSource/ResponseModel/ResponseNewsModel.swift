//
//  ResponseNewsModel.swift
//  MokaChallenge
//
//  Created by John Harries on 20/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import Foundation

public struct ResponseNewsModel: ResponseModelProtocol {
    var id: Double?
    var deleted: Bool?
    var type: String?
    var by: String?
    var time: Double?
    var text: String?
    var dead: Bool?
    var parent: Double?
    var poll: Double?
    var kids: [Double]?
    var url: String?
    var score: Int?
    var title: String?
    var parts: [Double]?
    var descendents: Int?
}

extension ResponseNewsModel: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case deleted = "deleted"
        case type = "type"
        case by = "by"
        case time = "time"
        case text = "text"
        case dead = "dead"
        case parent = "parent"
        case poll = "poll"
        case kids = "kids"
        case url = "url"
        case score = "score"
        case title = "title"
        case parts = "parts"
        case descendents = "descendents"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Double.self, forKey: .id)
        deleted = try container.decode(Bool.self, forKey: .deleted)
        type = try container.decode(String.self, forKey: .type)
        by = try container.decode(String.self, forKey: .type)
        time = try container.decode(Double.self, forKey: .time)
        text = try container.decode(String.self, forKey: .text)
        dead = try container.decode(Bool.self, forKey: .dead)
        parent = try container.decode(Double.self, forKey: .parent)
        poll = try container.decode(Double.self, forKey: .poll)
        kids = try container.decode([Double].self, forKey: .kids)
        url = try container.decode(String.self, forKey: .url)
        score = try container.decode(Int.self, forKey: .score)
        title = try container.decode(String.self, forKey: .title)
        parts = try container.decode([Double].self, forKey: .parts)
        descendents = try container.decode(Int.self, forKey: .descendents)
    }
}
