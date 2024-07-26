//
//  picturesLoader.swift
//  chicagoArtApp
//
//  Created by Олег Кор on 24.07.2024.
//

import Foundation

struct PicturesLoader {
    // MARK: - NetworkClient
    private let networkClient = NetworkClient()
    
    // MARK: - URL
    private var chicagoPicturesUrl: URL {
        guard let url = URL(string: "https://api.artic.edu/api/v1/artworks") else {
            preconditionFailure("Unable to construct mostPopularMoviesUrl")
        }
        return url
    }
    
    func loadMovies(handler: @escaping (Result<ArtPicturesStruct, Error>) -> Void) {
           networkClient.fetch(url: chicagoPicturesUrl) { result in
                switch result {
                case .success(let data):
                    do {
                        let artPictures = try JSONDecoder().decode(ArtPicturesStruct.self, from: data)
                        handler(.success(artPictures))
                    } catch {
                        handler(.failure(error))
                    }
                case .failure(let error):
                    handler(.failure(error))
                }
            }
        }
}


