import Foundation

public enum CallerCredentialTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case sessionJwt = "session_jwt"
    case apiKey = "api_key"
    case internalDelegationJwt = "internal_delegation_jwt"
}