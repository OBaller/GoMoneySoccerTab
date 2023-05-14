//
//  LeagueData.swift
//  GoMoneySoccerApp
//
//  Created by Naseem Oyebola on 11/05/2023.
//

import Foundation

struct LeagueData: Codable{
    let competitions: [Competition]
}


struct Competition: Codable {
    let id: Int
    let area: Area
    var name: String?
    var code: String?
    var plan: String?
    var numberOfAvailableSeasons: Int?
    var lastUpdated: String?
}

struct Area: Codable {
    let id: Int
    var name: String?
}

struct CurrentSeason: Codable {
    let id: Int
    var startDate, endDate: String?
    var currentMatchday: Int?
}
