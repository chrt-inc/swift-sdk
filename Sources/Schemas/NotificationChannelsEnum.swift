import Foundation

/// Notification delivery channels.
public enum NotificationChannelsEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case email
    case sms
    case push
}