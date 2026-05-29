import Foundation

extension Requests {
    public struct AddScanPayloadReq: Codable, Hashable, Sendable {
        public let kind: ScanPayloadKindEnum
        public let payload: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            kind: ScanPayloadKindEnum,
            payload: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.kind = kind
            self.payload = payload
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.kind = try container.decode(ScanPayloadKindEnum.self, forKey: .kind)
            self.payload = try container.decode(String.self, forKey: .payload)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.kind, forKey: .kind)
            try container.encode(self.payload, forKey: .payload)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case kind
            case payload
        }
    }
}