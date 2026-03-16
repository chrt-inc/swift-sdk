import Foundation

public enum CredentialInfoResponseCredentialType: String, Codable, Hashable, CaseIterable, Sendable {
    case session
    case m2M = "m2m"
    case apiKey = "api_key"
}