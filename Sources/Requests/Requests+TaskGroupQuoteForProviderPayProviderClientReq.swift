import Foundation

extension Requests {
    public struct TaskGroupQuoteForProviderPayProviderClientReq: Codable, Hashable, Sendable {
        public let rateSheetId: String?
        /// Must be a string starting with `org_`
        public let executorOrgId: String?
        public let offChrtExecutorOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            rateSheetId: String? = nil,
            executorOrgId: String? = nil,
            offChrtExecutorOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.rateSheetId = rateSheetId
            self.executorOrgId = executorOrgId
            self.offChrtExecutorOrgId = offChrtExecutorOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
            self.offChrtExecutorOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
            try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
            try container.encodeIfPresent(self.offChrtExecutorOrgId, forKey: .offChrtExecutorOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case rateSheetId = "rate_sheet_id"
            case executorOrgId = "executor_org_id"
            case offChrtExecutorOrgId = "off_chrt_executor_org_id"
        }
    }
}