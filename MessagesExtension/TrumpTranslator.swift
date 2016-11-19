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
    
    var quotes : [String] = [
    "Actually, I was only kidding. You can get that baby out of here. Don’t worry, I think she really believed me that I love having a baby crying while I’m speaking.",
    "Ariana Huffington is unattractive, both inside and out. I fully understand why her former husband left her for a man – he made a good decision.",
    "All of the women on The Apprentice flirted with me – consciously or unconsciously. That’s to be expected",
    "Believe me, she would not be my first choice, that I can tell you.",
    "Donald J. Trump is calling for a total and complete shutdown of Muslims entering the United States until our country's representatives can figure out what is going on",
    "Even if the world goes to hell in a handbasket, I won't lose a penny",
    "Give them the old Trump bullshit",
    "I am very rich",
    "Happy Cinco de Mayo! The best taco bowls are made in Trump Tower Grill. I love Hispanics!",
    "I have a great relationship with the blacks",
    "I will be the greatest jobs president that God ever created.",
    "I don't think I'm going to lose, but if I do, I don't think you're ever going to see me again, folks. I think I'll go to Turnberry and play golf or something.",
    "I will be so good at the military your head will spin.",
    "I put my name on buildings because it sells better. I don’t do it because, gee, I need that.",
    "I will build a great wall.",
    "I have never seen a thin person drinking Diet Coke.",
    "It’s freezing and snowing in New York – we need global warming!",
    "I like kids. I mean, I won’t do anything to take care of them. I’ll supply funds, and she’ll take care of the kids.",
    "I know more about ISIS than the generals do, believe me... I would bomb the shit out of them.",
    "Look at my African American over here.",
    "Listen, you motherfuckers, we’re going to tax you 25 percent",
    "Let's build a wall.",
    "My IQ is one of the highest — and you all know it! Please don’t feel so stupid or insecure; it’s not your fault.",
    "Such a nasty woman",
    "Our great African-American President hasn’t exactly had a positive impact on the thugs who are so happily and openly destroying Baltimore",
    "Part of the beauty of me is that I am very rich",
    "The point is, you can never be too greedy",
    "These people – I'd like to use really foul language. I won't do it. I was going to say they're really full of shit, but I won't say that",
    "Why can’t we use nuclear weapons?",
    "You may get AIDS by kissing.",
    "You’re disgusting.",
    ]
    
    func translate(humanString: String) -> String {
        var trumpString = humanString
        for (human, trump) in staticWordDictionary {
            trumpString = trumpString.replacingOccurrences(of: human, with: trump)
        }
        return trumpString
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
