//
//  Document+CoreDataClass.swift
//  DocumentsCoreData
//
//  Created by Davin Heilich on 9/19/19.
//  Copyright © 2019 Davin Heilich. All rights reserved.
//
//

import Foundation
import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    
    convenience init?(name: String?, textArea: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        self.init(entity: Document.entity(), insertInto: managedContext)
        
        self.name = name
        self.textArea = textArea
    }
}
