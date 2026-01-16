import Foundation

extension Requests {
    public struct BodyStatementsPatchUpdateOffChrtSettlementStateV1BillingUpdateOffChrtSettlementStateV1StatementIdPatch: Codable, Hashable, Sendable {
        public let newStatus: StatementStatusEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            newStatus: StatementStatusEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.newStatus = newStatus
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.newStatus = try container.decode(StatementStatusEnum1.self, forKey: .newStatus)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.newStatus, forKey: .newStatus)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case newStatus = "new_status"
        }
    }
}