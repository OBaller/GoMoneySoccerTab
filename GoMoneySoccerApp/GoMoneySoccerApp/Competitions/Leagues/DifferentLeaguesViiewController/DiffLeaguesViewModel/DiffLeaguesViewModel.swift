


import Foundation

class DiffLeaguesViewModel {
    
    private let service = Service()
    var competition = [Competition]()
    var closure: (() -> ())?
        
        let urlString = "https://api.football-data.org/v2/competitions"
        let token = " cc63bac0567b4b2ea211821801cdc961"
       let header = "X-Auth-Token"
    func fetchDifferentLeagueu() {
        service.fetchLeagueCompetitions(head: .header, token: token, header: header, urlString: urlString) { leagueData, error in
            if let err = error {
                print("Error::::: \(err)")
            } else {
                self.competition = leagueData?.competitions ?? []
                self.closure?()
            }
        }
    }
  
}
