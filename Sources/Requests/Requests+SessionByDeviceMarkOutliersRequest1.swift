import Foundation

extension Requests {
    public struct SessionByDeviceMarkOutliersRequest1: Codable, Hashable, Sendable {
        public let trackingSessionByDeviceDataPointIds: [String]
        public let outlier: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            trackingSessionByDeviceDataPointIds: [String],
            outlier: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.trackingSessionByDeviceDataPointIds = trackingSessionByDeviceDataPointIds
            self.outlier = outlier
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.trackingSessionByDeviceDataPointIds = try container.decode([String].self, forKey: .trackingSessionByDeviceDataPointIds)
            self.outlier = try container.decode(Bool.self, forKey: .outlier)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.trackingSessionByDeviceDataPointIds, forKey: .trackingSessionByDeviceDataPointIds)
            try container.encode(self.outlier, forKey: .outlier)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case trackingSessionByDeviceDataPointIds = "tracking_session_by_device_data_point_ids"
            case outlier
        }
    }
}