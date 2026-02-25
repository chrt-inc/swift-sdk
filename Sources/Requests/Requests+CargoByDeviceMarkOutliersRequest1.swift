import Foundation

extension Requests {
    public struct CargoByDeviceMarkOutliersRequest1: Codable, Hashable, Sendable {
        public let outlier: Bool
        public let trackingCargoByDeviceDataPointIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            outlier: Bool,
            trackingCargoByDeviceDataPointIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.outlier = outlier
            self.trackingCargoByDeviceDataPointIds = trackingCargoByDeviceDataPointIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.outlier = try container.decode(Bool.self, forKey: .outlier)
            self.trackingCargoByDeviceDataPointIds = try container.decode([String].self, forKey: .trackingCargoByDeviceDataPointIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.outlier, forKey: .outlier)
            try container.encode(self.trackingCargoByDeviceDataPointIds, forKey: .trackingCargoByDeviceDataPointIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case outlier
            case trackingCargoByDeviceDataPointIds = "tracking_cargo_by_device_data_point_ids"
        }
    }
}