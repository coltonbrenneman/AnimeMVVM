//
//  CharacterListService.swift
//  AnimeMVVM
//
//  Created by Colton Brenneman on 6/29/23.
//

import Foundation

struct CharacterListService: APIDataProvidable {
    
    // We're only looking for the characters from Spirited Away. TODO: - Update the fetch characters for anime
    func fetchCharacters(callback: @escaping(Result<TopLevelDictionary, NetworkError>) -> Void) {
        // Compose the URL
        guard let finalURL = URL(string: "https://kitsu.io/api/edge/anime/176/characters") else { callback(.failure(.invalidURL)) ; return }
        var urlRequest = URLRequest(url: finalURL)
        print(urlRequest)
        // Do the dataTask
        perform(urlRequest) { result in
            switch result {
            case .success(let allCharactersData):
                // Decode the data
                do {
                    let decodedTLD = try JSONDecoder().decode(TopLevelDictionary.self, from: allCharactersData)
                    callback(.success(decodedTLD))
                } catch {
                    callback(.failure(.thrownError(error)))
                }
            case .failure(_):
                callback(.failure(.unableToDecode))
            }
        }
    } // End of fetchCharacters
} // End of struct
