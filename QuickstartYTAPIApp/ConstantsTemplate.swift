//
//  ConstantsTemplate.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 22.12.2023.
//

import Foundation

/*
 
 ADD YOUR OWN KEYS BELOW AND UNCOMMENT THE CODE
 
 */


struct Constants {
    
    static var API_KEY = "" //[YOUR_API_KEY]
    static var PLAYLIST_ID = ""
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"

}
