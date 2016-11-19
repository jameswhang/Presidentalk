//
//  ObamaTranslator.swift
//  Presidentalk
//
//  Created by jameswhang on 11/19/16.
//  Copyright © 2016 jameswhang. All rights reserved.
//

import Foundation

class ObamaTranslator {
    var staticWordDictionary : [String: String] = [
        "huge" : "yuge",
        "big" : "bigly",
        "dumb": "moron",
        ]
    
    var quotes : [String] = [
        "Don't boo. Vote.",
        "Cynicism is a sorry kind of wisdom.",
        "Change will not come if we wait for some other person or some other time. We are the ones we've been waiting for. We are the change that we seek.",
        "Each of us deserves the freedom to pursue our own version of happiness. No one deserves to be bullied.",
        "Focusing your life solely on making a buck shows a certain poverty of ambition.",
        "If you're walking down the right path and you're willing to keep walking, eventually you'll make progress.",
        "If we aren’t willing to pay a price for our values then we should ask ourselves whether we truly believe in them at all",
        "Keeping faith with those who serve must always be a core American value and a cornerstone of American patriotism",
        "Let us remember we are all part of one American family. We are united in common values, and that includes belief in equality under the law, basic respect for public order, and the right of peaceful protest.",
        "No one is pro-abortion.",
        "We did not come to fear the future, we came to shape it.",
        "While we breathe, we will hope",
        "We proved that we are still a people capable of doing big things and tackling our biggest challenges",
        ]
    
    func translate(humanString: String) -> String {
        var obamaString = humanString
        for (human, obama) in staticWordDictionary {
            obamaString = obamaString.replacingOccurrences(of: human, with: obama)
        }
        return obamaString
    }
    
    func suggestQuote(startsWith: String) -> [String] {
        var suggestions = [String]()
        
        for quote in quotes {
            if (quote.hasPrefix(startsWith)) {
                suggestions.append(quote)
            }
        }
        return suggestions
    }

}
