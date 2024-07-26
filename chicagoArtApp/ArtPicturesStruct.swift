//
//  ArtPicturesStruct.swift
//  chicagoArtApp
//
//  Created by Олег Кор on 24.07.2024.
//

import Foundation

struct ArtPicturesStruct: Codable {
    let errorMessage: String
    let pictureData: [ArtPicture]
}

struct ArtPicture: Codable {
    let id: String
    let title: String
    let imageURL: URL
    
    private enum CodingKeys : String, CodingKey {
        case id = "id"
        case title = "title"
        case imageURL = "image_id"
    }
}
