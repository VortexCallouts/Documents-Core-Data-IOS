//
//  Document+CoreDataProperties.swift
//  DocumentsCoreData
//
//  Created by Davin Heilich on 9/19/19.
//  Copyright © 2019 Davin Heilich. All rights reserved.
//
//

import UIKit
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var name: String?
    @NSManaged public var textArea: String?

}
