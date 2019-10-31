//
//  UsersFetcher.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//

import Foundation

protocol UsersFetcher {
    func users() -> [User]
}

class DummyUsersFetcher: UsersFetcher {
    func users() -> [User] {
        return [
            MockUser(name: "Hussein AlRyalat", orders: []),
            MockUser(name: "Hamzah Abu Ghoush", orders: []),
            MockUser(name: "Lovely Cat", orders: [])
        ]
    }
}
