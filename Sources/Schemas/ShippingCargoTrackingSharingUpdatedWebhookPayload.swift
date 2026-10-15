import Foundation

public struct ShippingCargoTrackingSharingUpdatedWebhookPayload: Codable, Hashable, Sendable {
    /// The cargo whose driver tracking sharing changed
    public let cargoId: String
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingCargoTrackingSharingUpdated?
    /// The order containing the cargo
    public let orderId: String
    /// Whether the driver's live tracking for the cargo is now publicly shared
    public let `public`: Bool
    /// The task group carrying the cargo
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoId: String,
        eventTimestamp: Date,
        eventType: ShippingCargoTrackingSharingUpdated? = nil,
        orderId: String,
        public: Bool,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoId = cargoId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.orderId = orderId
        self.public = `public`
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoId = try container.decode(String.self, forKey: .cargoId)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingCargoTrackingSharingUpdated.self, forKey: .eventType)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.public = try container.decode(Bool.self, forKey: .public)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoId, forKey: .cargoId)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.public, forKey: .public)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingCargoTrackingSharingUpdated: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingCargoTrackingSharingUpdated = "shipping.cargo.tracking_sharing_updated"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoId = "cargo_id"
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case orderId = "order_id"
        case `public`
        case taskGroupId = "task_group_id"
    }
}