import Foundation

public struct NotificationPreviewRes: Codable, Hashable, Sendable {
    public let email: NotificationPreviewEmailRes?
    public let previewable: Bool
    public let push: NotificationPreviewPushRes?
    public let sms: NotificationPreviewSmsRes?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        email: NotificationPreviewEmailRes? = nil,
        previewable: Bool,
        push: NotificationPreviewPushRes? = nil,
        sms: NotificationPreviewSmsRes? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.email = email
        self.previewable = previewable
        self.push = push
        self.sms = sms
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.email = try container.decodeIfPresent(NotificationPreviewEmailRes.self, forKey: .email)
        self.previewable = try container.decode(Bool.self, forKey: .previewable)
        self.push = try container.decodeIfPresent(NotificationPreviewPushRes.self, forKey: .push)
        self.sms = try container.decodeIfPresent(NotificationPreviewSmsRes.self, forKey: .sms)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.email, forKey: .email)
        try container.encode(self.previewable, forKey: .previewable)
        try container.encodeIfPresent(self.push, forKey: .push)
        try container.encodeIfPresent(self.sms, forKey: .sms)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case previewable
        case push
        case sms
    }
}