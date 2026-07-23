import Foundation

extension Requests {
    public struct InvoiceVoidReq: Codable, Hashable, Sendable {
        public let voidReason: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            voidReason: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.voidReason = voidReason
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.voidReason = try container.decodeIfPresent(String.self, forKey: .voidReason)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.voidReason, forKey: .voidReason)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case voidReason = "void_reason"
        }
    }
}