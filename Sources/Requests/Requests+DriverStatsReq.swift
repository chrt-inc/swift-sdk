import Foundation

extension Requests {
    public struct DriverStatsReq: Codable, Hashable, Sendable {
        public let endTimestamp: Date
        public let startTimestamp: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            endTimestamp: Date,
            startTimestamp: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.endTimestamp = endTimestamp
            self.startTimestamp = startTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.endTimestamp = try container.decode(Date.self, forKey: .endTimestamp)
            self.startTimestamp = try container.decode(Date.self, forKey: .startTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.endTimestamp, forKey: .endTimestamp)
            try container.encode(self.startTimestamp, forKey: .startTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case endTimestamp = "end_timestamp"
            case startTimestamp = "start_timestamp"
        }
    }
}