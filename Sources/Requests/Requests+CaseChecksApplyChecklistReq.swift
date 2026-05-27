import Foundation

extension Requests {
    public struct CaseChecksApplyChecklistReq: Codable, Hashable, Sendable {
        public let checklistId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            checklistId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.checklistId = checklistId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.checklistId = try container.decode(String.self, forKey: .checklistId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.checklistId, forKey: .checklistId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case checklistId = "checklist_id"
        }
    }
}