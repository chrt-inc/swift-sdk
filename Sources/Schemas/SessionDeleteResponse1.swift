import Foundation

public struct SessionDeleteResponse1: Codable, Hashable, Sendable {
    public let sessionDeleted: Bool
    public let trackingSessionByDeviceDataPointsDeleted: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sessionDeleted: Bool,
        trackingSessionByDeviceDataPointsDeleted: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sessionDeleted = sessionDeleted
        self.trackingSessionByDeviceDataPointsDeleted = trackingSessionByDeviceDataPointsDeleted
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sessionDeleted = try container.decode(Bool.self, forKey: .sessionDeleted)
        self.trackingSessionByDeviceDataPointsDeleted = try container.decode(Int.self, forKey: .trackingSessionByDeviceDataPointsDeleted)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sessionDeleted, forKey: .sessionDeleted)
        try container.encode(self.trackingSessionByDeviceDataPointsDeleted, forKey: .trackingSessionByDeviceDataPointsDeleted)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sessionDeleted = "session_deleted"
        case trackingSessionByDeviceDataPointsDeleted = "tracking_session_by_device_data_points_deleted"
    }
}