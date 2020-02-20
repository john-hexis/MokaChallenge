//
//  HackerNewsModel.swift
//  MokaChallenge
//
//  Created by John Harries on 20/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import Foundation
import CoreData

public struct HackerNewsModel {
    var id: Double
    var deleted: Bool
    var type: HackerNewsType
    var by: String
    var time: Double
    var text: String
    var dead: Bool
    var parent: Double
    var poll: Double
    var kids: [Double]
    var url: String
    var score: Int
    var title: String
    var parts: [Double]
    var descendents: Int
    
    private enum Keys {
        case id
        case deleted
        case type
        case by
        case time
        case text
        case dead
        case parent
        case poll
        case kids
        case url
        case score
        case title
        case parts
        case descendents
        
        func getKey() -> String {
            switch self {
                case .id: return "id"
                case .deleted: return "deleted"
                case .type: return "type"
                case .by: return "by"
                case .time: return "time"
                case .text: return "text"
                case .dead: return "dead"
                case .parent: return "parent"
                case .poll: return "poll"
                case .kids: return "kids"
                case .url: return "url"
                case .score: return "score"
                case .title: return "title"
                case .parts: return "parts"
                case .descendents: return "descendents"
            }
        }
    }
    
    static func mapper(response entity: ResponseNewsModel) -> HackerNewsModel {
        return HackerNewsModel(
            id: entity.id ?? 0,
            deleted: entity.deleted ?? false,
            type: HackerNewsType.getType(typeStr: entity.type ?? ""),
            by: entity.by ?? "",
            time: entity.time ?? 0,
            text: entity.text ?? "",
            dead: entity.dead ?? false,
            parent: entity.parent ?? 0,
            poll: entity.poll ?? 0,
            kids: entity.kids ?? [],
            url: entity.url ?? "",
            score: entity.score ?? 0,
            title: entity.title ?? "",
            parts: entity.parts ?? [],
            descendents: entity.descendents ?? 0)
    }
}

extension HackerNewsModel: ModelProtocol {
    public var entityName: String {
        return "HackerNews"
    }
    
    public init(managedObject: NSManagedObject) {
        self.id = (managedObject.value(forKey: Keys.id.getKey()) as? Double) ?? 0
        self.deleted = (managedObject.value(forKey: Keys.deleted.getKey()) as? Bool) ?? false
        self.type = (managedObject.value(forKey: Keys.type.getKey()) as? HackerNewsType) ?? HackerNewsType.Unknown
        self.by = (managedObject.value(forKey: Keys.by.getKey()) as? String) ?? ""
        self.time = (managedObject.value(forKey: Keys.time.getKey()) as? Double) ?? 0
        self.text = (managedObject.value(forKey: Keys.text.getKey()) as? String) ?? ""
        self.dead = (managedObject.value(forKey: Keys.dead.getKey()) as? Bool) ?? false
        self.parent = (managedObject.value(forKey: Keys.parent.getKey()) as? Double) ?? 0
        self.poll = (managedObject.value(forKey: Keys.poll.getKey()) as? Double) ?? 0
        self.kids = (managedObject.value(forKey: Keys.kids.getKey()) as? [Double]) ?? []
        self.url = (managedObject.value(forKey: Keys.url.getKey()) as? String) ?? ""
        self.score = (managedObject.value(forKey: Keys.score.getKey()) as? Int) ?? 0
        self.title = (managedObject.value(forKey: Keys.title.getKey()) as? String) ?? ""
        self.parts = (managedObject.value(forKey: Keys.parts.getKey()) as? [Double]) ?? []
        self.descendents = (managedObject.value(forKey: Keys.descendents.getKey()) as? Int) ?? 0
    }
    
    public func setValue(to managedObject: NSManagedObject) {
        
    }
}

enum HackerNewsType {
    case Job
    case Story
    case Comment
    case Poll
    case PollOpt
    case Unknown
    
    func getValue() -> String {
        switch self {
            case .Comment: return "comment"
            case .Job: return "job"
            case .Poll: return "poll"
            case .PollOpt: return "pollopt"
            case .Story: return "story"
            default: return ""
        }
    }
    
    static func getType(typeStr: String) -> HackerNewsType {
        switch typeStr {
            case "comment": return .Comment
            case "job": return .Job
            case "poll": return .Poll
            case "pollopt": return .PollOpt
            case "story": return .Story
            default: return .Unknown
        }
    }
}
