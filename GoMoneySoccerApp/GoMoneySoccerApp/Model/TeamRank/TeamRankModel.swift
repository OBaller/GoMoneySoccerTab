//
//  TeamRankModel.swift
//  GoMoneySoccerApp
//
//  Created by Naseem Oyebola on 11/05/2023.
//

import Foundation

struct TeamRankModel: Codable {
    let standings: [Standings]
}

struct Standings: Codable {
    var stage: String?
    var type: String?
    var group: String?
    var table: [TeamPosition]
}

struct TeamPosition: Codable {
    let position: Int
    let team: Team
    let playedGames: Int
    let points: Int
    let goalDifference: Int
}


struct Team: Codable {
    let id: Int
    let name: String
    let crestUrl: String
}
