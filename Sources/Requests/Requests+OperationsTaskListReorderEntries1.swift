import Foundation

extension Requests {
    public struct OperationsTaskListReorderEntries1: Codable, Hashable, Sendable {
        public let entryUuids: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entryUuids: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entryUuids = entryUuids
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entryUuids = try container.decodeIfPresent([String].self, forKey: .entryUuids)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.entryUuids, forKey: .entryUuids)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case entryUuids = "entry_uuids"
        }
    }
}