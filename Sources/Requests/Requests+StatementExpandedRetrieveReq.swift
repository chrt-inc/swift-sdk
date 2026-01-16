import Foundation

extension Requests {
    public struct StatementExpandedRetrieveReq: Codable, Hashable, Sendable {
        public let statementId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            statementId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.statementId = statementId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.statementId = try container.decode(String.self, forKey: .statementId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.statementId, forKey: .statementId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case statementId = "statement_id"
        }
    }
}