import Foundation

extension Requests {
    public struct RateSheetUpdateReq: Codable, Hashable, Sendable {
        public let expectedRevision: Int
        public let rateSheet: RateSheetClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            expectedRevision: Int,
            rateSheet: RateSheetClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.expectedRevision = expectedRevision
            self.rateSheet = rateSheet
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.expectedRevision = try container.decode(Int.self, forKey: .expectedRevision)
            self.rateSheet = try container.decode(RateSheetClientCreate1.self, forKey: .rateSheet)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.expectedRevision, forKey: .expectedRevision)
            try container.encode(self.rateSheet, forKey: .rateSheet)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case expectedRevision = "expected_revision"
            case rateSheet = "rate_sheet"
        }
    }
}