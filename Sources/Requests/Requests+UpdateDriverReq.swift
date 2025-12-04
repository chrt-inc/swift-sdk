import Foundation

extension Requests {
    public struct UpdateDriverReq: Codable, Hashable, Sendable {
        /// ID of the driver to assign to the task group
        public let driverId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            driverId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.driverId = driverId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.driverId, forKey: .driverId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case driverId = "driver_id"
        }
    }
}