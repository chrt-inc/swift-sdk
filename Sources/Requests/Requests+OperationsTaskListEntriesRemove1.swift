import Foundation

extension Requests {
    public struct OperationsTaskListEntriesRemove1: Codable, Hashable, Sendable {
        public let entryIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entryIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entryIds = entryIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entryIds = try container.decodeIfPresent([String].self, forKey: .entryIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.entryIds, forKey: .entryIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case entryIds = "entry_ids"
        }
    }
}