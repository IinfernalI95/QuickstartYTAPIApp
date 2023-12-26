//
//  Model.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 13.12.2023.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(videos: [Video])
}

class Model {
    
    var delegate: ModelDelegate?
    
    func getVideos() {
        
        guard let url = URL(string: Constants.API_URL) else { return }
        //guard let url = url else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            do {
                if let data = data {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    
                    let response = try decoder.decode(Response.self, from: data)
                    dump(response)
                    
                    guard let videos = response.items else { return } //обработать позже
                    DispatchQueue.main.async {
                        self.delegate?.videosFetched(videos: videos)
                    }
                }
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
        
    }
    
}
