//
//  MockRouter.swift
//  network-combine
//
//  Created by Derik Flanary on 10/15/19.
//  Copyright © 2019 Derik Flanary. All rights reserved.
//

import Foundation

extension Router {
    
    enum Post: URLRequestConvertible {

        case getPosts

        
        var method: HTTPMethod {
            switch self {
            case .getPosts:
                return .get
            }
        }
        
        var path: String {
            switch self {
            case .getPosts:
                return "/posts"
            }
        }
        
        func asURLRequest() throws -> URLRequest {
            let url = try path.asURL()
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = method.rawValue
            
            switch self {
            case .getPosts:
                break
            }
            return urlRequest
        }
        
    }
}
