import Foundation

extension Requests {
    public struct RateSheetPreviewReq: Codable, Hashable, Sendable {
        public let orderId: String
        public let rateSheet: RateSheetClientCreate1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderId: String,
            rateSheet: RateSheetClientCreate1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderId = orderId
            self.rateSheet = rateSheet
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.rateSheet = try container.decode(RateSheetClientCreate1.self, forKey: .rateSheet)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.rateSheet, forKey: .rateSheet)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderId = "order_id"
            case rateSheet = "rate_sheet"
        }
    }
}