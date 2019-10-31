//
//  CDOrderType+CoreDataProperties.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//
//

import Foundation
import CoreData


extension CDOrderType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDOrderType> {
        return NSFetchRequest<CDOrderType>(entityName: "CDOrderType")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var priceValue: Double
    @NSManaged public var orders: NSSet?

}

// MARK: Generated accessors for orders
extension CDOrderType {

    @objc(addOrdersObject:)
    @NSManaged public func addToOrders(_ value: CDOrder)

    @objc(removeOrdersObject:)
    @NSManaged public func removeFromOrders(_ value: CDOrder)

    @objc(addOrders:)
    @NSManaged public func addToOrders(_ values: NSSet)

    @objc(removeOrders:)
    @NSManaged public func removeFromOrders(_ values: NSSet)

}
