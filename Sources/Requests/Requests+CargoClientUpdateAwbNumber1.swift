import Foundation

extension Requests {
    public struct CargoClientUpdateAwbNumber1: Codable, Hashable, Sendable {
        /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
        public let awbNumber: String?
        public let awbNumberSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbNumber: String? = nil,
            awbNumberSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbNumber = awbNumber
            self.awbNumberSetToNone = awbNumberSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbNumber = try container.decodeIfPresent(String.self, forKey: .awbNumber)
            self.awbNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .awbNumberSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.awbNumber, forKey: .awbNumber)
            try container.encodeIfPresent(self.awbNumberSetToNone, forKey: .awbNumberSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbNumber = "awb_number"
            case awbNumberSetToNone = "awb_number__set_to_None"
        }
    }
}