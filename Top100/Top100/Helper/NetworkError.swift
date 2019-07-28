//
//  NetworkingError.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case authentication
    case badRequest
    case dataNotDecodable
    case encodingFailure(Error)
    case forwarded(Error)
    case forwardedString(errorString: String)
    case jsonConversionFailure
    case imageDataFailure
    case internalServerError
    case incorrectParameters
    case invalidUrl
    case noConnection
    case noDataReturned
    case outdated
    case unauthorized
    case unknown
}
