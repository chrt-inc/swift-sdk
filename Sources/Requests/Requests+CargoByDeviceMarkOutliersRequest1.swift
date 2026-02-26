import Foundation

extension Requests {
    public struct CargoByDeviceMarkOutliersRequest1: Codable, Hashable, Sendable {
        public let trackingCargoByDeviceDataPointIds: [String]
        public let outlier: Bool
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            trackingCargoByDeviceDataPointIds: [String],
            outlier: Bool,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.trackingCargoByDeviceDataPointIds = trackingCargoByDeviceDataPointIds
            self.outlier = outlier
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.trackingCargoByDeviceDataPointIds = try container.decode([String].self, forKey: .trackingCargoByDeviceDataPointIds)
            self.outlier = try container.decode(Bool.self, forKey: .outlier)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.trackingCargoByDeviceDataPointIds, forKey: .trackingCargoByDeviceDataPointIds)
            try container.encode(self.outlier, forKey: .outlier)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case trackingCargoByDeviceDataPointIds = "tracking_cargo_by_device_data_point_ids"
            case outlier
        }
    }
}