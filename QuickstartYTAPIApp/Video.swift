//
//  Video.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 13.12.2023.
//

import Foundation

struct Video: Decodable {
    
    var videoId: String? = ""
    var title: String? = ""
    var description: String? = ""
    var thumbnail: String? = ""
    var published: Date? = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        //let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        guard let snippetContainer = try? container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet) else {
            // Handle the absence of "snippet" key in the JSON data
            return
        }
        
        //Parse title
        self.title = try? snippetContainer.decode(String.self, forKey: .title)
        
        //Parse description
        self.description = try? snippetContainer.decode(String.self, forKey: .description)
        
        //Parse published date
        self.published = try? snippetContainer.decode(Date.self, forKey: .published)
        
        //Parse thumbnails
        //let thumbnailContainer = try? snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        guard let thumbnailContainer = try? snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails),
              let highContainer = try? thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high) else {
            // Handle the absence of "thumbnails" or "high" key in the JSON data
            return
        }
        
        //let highContainer = try? thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail = try? highContainer.decode(String.self, forKey: .thumbnail)
        
        //Parse video ID
        //let resourceIdContainer = try? snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        guard let resourceIdContainer = try? snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId) else {
            // Handle the absence of "resourceId" key in the JSON data
            return
        }
        
        self.videoId = try? resourceIdContainer.decode(String.self, forKey: .videoId)
    }
}
