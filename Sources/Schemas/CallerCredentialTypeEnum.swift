import Foundation

public enum CallerCredentialTypeEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case sessionJwt = "session_jwt"
    case m2MJwt = "m2m_jwt"
    case apiKey = "api_key"
}