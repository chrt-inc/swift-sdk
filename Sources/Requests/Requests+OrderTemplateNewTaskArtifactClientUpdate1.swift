import Foundation

extension Requests {
    public struct OrderTemplateNewTaskArtifactClientUpdate1: Codable, Hashable, Sendable {
        public let expectedScanPayloads: [String]?
        public let type: TaskArtifactTypeEnum1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            expectedScanPayloads: [String]? = nil,
            type: TaskArtifactTypeEnum1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.expectedScanPayloads = expectedScanPayloads
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.expectedScanPayloads = try container.decodeIfPresent([String].self, forKey: .expectedScanPayloads)
            self.type = try container.decodeIfPresent(TaskArtifactTypeEnum1.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.expectedScanPayloads, forKey: .expectedScanPayloads)
            try container.encodeIfPresent(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case expectedScanPayloads = "expected_scan_payloads"
            case type
        }
    }
}