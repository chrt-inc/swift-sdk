import Foundation

extension Requests {
    public struct CaseChecksRecordImageAnalysisResultsReq: Codable, Hashable, Sendable {
        public let results: [String: CheckStatusEnum]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            results: [String: CheckStatusEnum],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.results = results
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.results = try container.decode([String: CheckStatusEnum].self, forKey: .results)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.results, forKey: .results)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case results
        }
    }
}