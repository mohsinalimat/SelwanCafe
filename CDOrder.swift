//
//  CDOrder+CoreDataClass.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//
//

import Foundation
import CoreData


public class CDOrder: NSManagedObject {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDOrder> {
        return NSFetchRequest<CDOrder>(entityName: "CDOrder")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var type: CDOrderType?
    @NSManaged public var user: CDUser?
}
