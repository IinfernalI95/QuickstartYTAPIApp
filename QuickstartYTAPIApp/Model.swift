//
//  Model.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 13.12.2023.
//

import Foundation

class Model {
    
    func getVideos() {
        
        guard let url = URL(string: Constants.API_URL) else { return }
        //guard let url = url else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let data = data {
                print(data)
            }
            
        }.resume()
        
    }
    
}
