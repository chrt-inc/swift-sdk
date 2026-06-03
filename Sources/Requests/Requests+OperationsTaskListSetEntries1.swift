import Foundation

extension Requests {
    public struct OperationsTaskListSetEntries1: Codable, Hashable, Sendable {
        public let entries: [OperationsTaskListEntry1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entries: [OperationsTaskListEntry1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entries = entries
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entries = try container.decodeIfPresent([OperationsTaskListEntry1].self, forKey: .entries)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.entries, forKey: .entries)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case entries
        }
    }
}