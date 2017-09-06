//
//  Interest.swift
//  Driver
//
//  Created by Александр Сабри on 28/12/2016.
//  Copyright © 2016 Александр Сабри. All rights reserved.
//

import UIKit

class Interest
{
    // MARK: - Public API
    var title = ""
    
    init(title: String)
    {
        self.title = title

    }
    
    // MARK: - Private
    // dummy data
    static func createInterests() -> [Interest]
    {
        return [
            Interest(title: "Bot 1"),
            Interest(title: "Bot 2"),
            Interest(title: "Bot 3"),
            
        ]
    }
}
