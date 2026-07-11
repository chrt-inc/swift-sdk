import Foundation

extension Requests {
    public struct OrdersUnassignReq: Codable, Hashable, Sendable {
        public let operatorUserIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            operatorUserIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.operatorUserIds = operatorUserIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.operatorUserIds = try container.decode([String].self, forKey: .operatorUserIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.operatorUserIds, forKey: .operatorUserIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case operatorUserIds = "operator_user_ids"
        }
    }
}