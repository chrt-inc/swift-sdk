import Foundation

extension Requests {
    public struct AirWaybillStockNumbersAddReq: Codable, Hashable, Sendable {
        public let awbNumbers: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbNumbers: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbNumbers = awbNumbers
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbNumbers = try container.decode([String].self, forKey: .awbNumbers)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.awbNumbers, forKey: .awbNumbers)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbNumbers = "awb_numbers"
        }
    }
}