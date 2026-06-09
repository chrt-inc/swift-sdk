import Foundation

public struct ShippingTaskGroupFlightInfoUpdatedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingTaskGroupFlightInfoUpdated?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order containing the task group
    public let orderId: String
    /// The task group whose flight info was updated
    public let taskGroupId: String
    /// The task group's ordered flight legs
    public let flightLegs: [FlightLegWebhookInfo]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingTaskGroupFlightInfoUpdated? = nil,
        eventTimestamp: Date,
        orderId: String,
        taskGroupId: String,
        flightLegs: [FlightLegWebhookInfo],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.flightLegs = flightLegs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupFlightInfoUpdated.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.flightLegs = try container.decode([FlightLegWebhookInfo].self, forKey: .flightLegs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.flightLegs, forKey: .flightLegs)
    }

    public enum ShippingTaskGroupFlightInfoUpdated: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupFlightInfoUpdated = "shipping.task_group.flight_info_updated"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
        case flightLegs = "flight_legs"
    }
}