import Foundation

extension Requests {
    public struct ReelablesAssetLabelLinkReq: Codable, Hashable, Sendable {
        public let nfcId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            nfcId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.nfcId = nfcId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.nfcId = try container.decode(String.self, forKey: .nfcId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.nfcId, forKey: .nfcId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case nfcId = "nfc_id"
        }
    }
}