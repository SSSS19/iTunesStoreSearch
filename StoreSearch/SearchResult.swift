//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Shehab Saqib on 04/02/2016.
//  Copyright © 2016 Shehab Saqib. All rights reserved.
//

import Foundation

class SearchResult {
    var name = ""
    var artistName = ""
    var artworkURL60 = ""
    var artworkURL100 = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
}

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .OrderedAscending
}

func > (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return rhs.name.localizedStandardCompare(lhs.name) == .OrderedAscending
}