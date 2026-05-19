import Foundation

extension Requests {
    public struct AddExecutorOrgNoteReq: Codable, Hashable, Sendable {
        /// Executor-side note to add
        public let note: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            note: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.note = note
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.note = try container.decode(String.self, forKey: .note)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.note, forKey: .note)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case note
        }
    }
}