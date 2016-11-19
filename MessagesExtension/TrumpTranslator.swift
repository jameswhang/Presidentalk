//
//  TrumpTranslator.swift
//  Presidentalk
//
//  Created by jameswhang on 11/18/16.
//  Copyright © 2016 jameswhang. All rights reserved.
//

import Foundation

class TrumpTranslator {
    var staticWordDictionary : [String: String] = [
        "huge" : "yuge",
        "big" : "bigly",
        "dumb": "moron",
    ]
    
    func translate(humanString: String) -> String {
        var trumpString = humanString
        for (human, trump) in staticWordDictionary {
            trumpString = trumpString.replacingOccurrences(of: human, with: trump)
        }
        return trumpString
    }
}
