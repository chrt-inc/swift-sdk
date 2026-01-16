import Foundation

extension Requests {
    public struct OpenInvoiceReq: Codable, Hashable, Sendable {
        /// Days until invoice is due
        public let daysUntilDue: Int?
        /// Description for the invoice
        public let description: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            daysUntilDue: Int? = nil,
            description: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.daysUntilDue = daysUntilDue
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.daysUntilDue = try container.decodeIfPresent(Int.self, forKey: .daysUntilDue)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.daysUntilDue, forKey: .daysUntilDue)
            try container.encodeIfPresent(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case daysUntilDue = "days_until_due"
            case description
        }
    }
}