import Foundation

public struct ShippingTaskGroupFlightInfoUpdatedWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: ShippingTaskGroupFlightInfoUpdated?
    /// FlightAware flight UUIDs associated with this task group
    public let faFlightIds: [String]
    /// The flight number (if set)
    public let flightNumber: String?
    /// The order containing the task group
    public let orderId: String
    /// The task group whose flight info was updated
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: ShippingTaskGroupFlightInfoUpdated? = nil,
        faFlightIds: [String],
        flightNumber: String? = nil,
        orderId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.faFlightIds = faFlightIds
        self.flightNumber = flightNumber
        self.orderId = orderId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(ShippingTaskGroupFlightInfoUpdated.self, forKey: .eventType)
        self.faFlightIds = try container.decode([String].self, forKey: .faFlightIds)
        self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.faFlightIds, forKey: .faFlightIds)
        try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    public enum ShippingTaskGroupFlightInfoUpdated: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingTaskGroupFlightInfoUpdated = "shipping.task_group.flight_info_updated"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case faFlightIds = "fa_flight_ids"
        case flightNumber = "flight_number"
        case orderId = "order_id"
        case taskGroupId = "task_group_id"
    }
}