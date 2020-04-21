//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Mark Poggi on 4/20/20.
//  Copyright © 2020 Mark Poggi. All rights reserved.
//

import Foundation
import CoreData

enum MoodPriority: String, CaseIterable {
    case sad
    case neutral
    case happy
}

extension Entry {
    @discardableResult convenience init(identifier: String = String(),
                     title: String,
                     bodyText: String,
                     timestamp: Date = Date(),
                     mood: MoodPriority = .neutral,
                     context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
        self.init(context: context)
        self.identifier = identifier
        self.title = title
        self.bodyText = bodyText
        self.timestamp = timestamp
        self.mood = mood.rawValue
        
    }
    
}