//
//  TodayFixtureViewModel.swift
//  GoMoneySoccerApp
//
//  Created by Naseem Oyebola on 11/05/2023.
//

import Foundation


class TodayFixtureViewModel {
    private let service = Service()
    var match = [Matches]()
    var closure: (()->())?
    
        let urlString = "https://api.football-data.org/v2/matches"
        let token = "cc63bac0567b4b2ea211821801cdc961"
        let header = "X-Auth-Token"
        
        func fetchFixturest () {
            service.fetchMatches(head: .header, token: token, header: header, urlString: urlString) { match, error in
                if let err = error {
                    print("Fetch Match Error:: \(err)")
                } else {
                    self.match = match?.matches ?? []
                    self.closure?()
                }
            }
            
        }
    
}
