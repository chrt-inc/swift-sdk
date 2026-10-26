import Foundation

public enum NotificationPreviewAudienceEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case wholeOrder = "whole_order"
    case executor
    case driver
}