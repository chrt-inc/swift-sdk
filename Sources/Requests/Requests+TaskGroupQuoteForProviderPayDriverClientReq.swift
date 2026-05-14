import Foundation

extension Requests {
    public struct TaskGroupQuoteForProviderPayDriverClientReq: Codable, Hashable, Sendable {
        public let rateSheetId: String?
        public let driverId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            rateSheetId: String? = nil,
            driverId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.rateSheetId = rateSheetId
            self.driverId = driverId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.driverId = try container.decode(String.self, forKey: .driverId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
            try container.encode(self.driverId, forKey: .driverId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case rateSheetId = "rate_sheet_id"
            case driverId = "driver_id"
        }
    }
}