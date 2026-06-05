import Foundation

extension Requests {
    public struct CargoAiTrackAndTraceSubscribeReq: Codable, Hashable, Sendable {
        /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
        public let awb: String
        public let emails: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awb: String,
            emails: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awb = awb
            self.emails = emails
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awb = try container.decode(String.self, forKey: .awb)
            self.emails = try container.decodeIfPresent([String].self, forKey: .emails)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.awb, forKey: .awb)
            try container.encodeIfPresent(self.emails, forKey: .emails)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awb
            case emails
        }
    }
}