//
//  NetworkError.swift
//  AnimeMVVM
//
//  Created by Colton Brenneman on 6/29/23.
//

import Foundation

/// A custom Error type used to craft custom error messages
///

/// enum NetworkingError: LocalizedError
///
///
///  - invalidURL: "Invalid URL. Check your endpoint."
///  - thrownError: Used when we can capture an error. "Thrown error. Error was \(error.localizedDescription)"
///  - noData: Used when unable to unwrap a `Data?`. "No data received from successful network fetch."
///  - unableToDecode: Used when we are unable to `.decode()` our Data Type
///  - invalidStatusCode: Used when the `URLResponse` is a code that does not match `200`
///

enum NetworkError: LocalizedError {
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    case emptyArray
    case invalidStatusCode
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL. Check your endpoint."
        case .thrownError(let error):
            return "Thrown error. Error was \(error.localizedDescription)"
        case .noData:
            return "No data received from successful network fetch."
        case .unableToDecode:
            return "Unable to decode model object from data."
        case .emptyArray:
            return "The fetch returned an empty array."
        case .invalidStatusCode:
            return "Fetch returned an unsuccessful status code. Code was not 200."
        }
    }
}

