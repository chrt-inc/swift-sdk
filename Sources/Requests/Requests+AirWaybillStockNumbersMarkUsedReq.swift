import Foundation

extension Requests {
    public struct AirWaybillStockNumbersMarkUsedReq: Codable, Hashable, Sendable {
        public let awbNumbers: [String]
        public let statusNote: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            awbNumbers: [String],
            statusNote: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.awbNumbers = awbNumbers
            self.statusNote = statusNote
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.awbNumbers = try container.decode([String].self, forKey: .awbNumbers)
            self.statusNote = try container.decodeIfPresent(String.self, forKey: .statusNote)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.awbNumbers, forKey: .awbNumbers)
            try container.encodeIfPresent(self.statusNote, forKey: .statusNote)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case awbNumbers = "awb_numbers"
            case statusNote = "status_note"
        }
    }
}