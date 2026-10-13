import Foundation

public enum Method: String, Codable, Hashable, CaseIterable, Sendable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}