import Foundation

extension Requests {
    public struct CharlieStartReq: Codable, Hashable, Sendable {
        /// The browser's IANA time zone, which Charlie tells the date and time in unless the caller saved one on their user private data.
        public let timeZone: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            timeZone: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.timeZone = timeZone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.timeZone, forKey: .timeZone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case timeZone = "time_zone"
        }
    }
}