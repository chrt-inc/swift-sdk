import Foundation

/// Shared notification channel types used across the application
public enum NotificationChannelEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case email
    case sms
    case push
    case phoneCall = "phone_call"
}