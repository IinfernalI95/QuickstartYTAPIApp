//
//  Constants.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 13.12.2023.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAB8CLu3MsWJ3dnjlB9DvlS4odtjFCNosg" //[YOUR_API_KEY]
    static var PLAYLIST_ID = "PLNCLfcJjYKc4ECQVi0FGKiD29x91dn4Ml"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"
       
    
}
