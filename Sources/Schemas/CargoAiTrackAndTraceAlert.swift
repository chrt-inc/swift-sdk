import Foundation

/// The `alerts` object — early warning signals on shipment execution.
public struct CargoAiTrackAndTraceAlert: Codable, Hashable, Sendable {
    public let level: CargoAiTrackAndTraceAlertLevelEnum?
    public let message: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        level: CargoAiTrackAndTraceAlertLevelEnum? = nil,
        message: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.level = level
        self.message = message
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.level = try container.decodeIfPresent(CargoAiTrackAndTraceAlertLevelEnum.self, forKey: .level)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.level, forKey: .level)
        try container.encodeIfPresent(self.message, forKey: .message)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case level
        case message
    }
}