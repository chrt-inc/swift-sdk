import Foundation

extension Requests {
    public struct ChecklistChecksAdd1: Codable, Hashable, Sendable {
        public let checks: [ChecklistCheck1]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            checks: [ChecklistCheck1]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.checks = checks
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.checks = try container.decodeIfPresent([ChecklistCheck1].self, forKey: .checks)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.checks, forKey: .checks)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case checks
        }
    }
}