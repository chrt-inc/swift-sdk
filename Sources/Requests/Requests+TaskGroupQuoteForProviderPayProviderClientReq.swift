import Foundation

extension Requests {
    public struct TaskGroupQuoteForProviderPayProviderClientReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let executorOrgId: String?
        public let offChrtExecutorOrgDataId: String?
        public let rateSheetId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            executorOrgId: String? = nil,
            offChrtExecutorOrgDataId: String? = nil,
            rateSheetId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.executorOrgId = executorOrgId
            self.offChrtExecutorOrgDataId = offChrtExecutorOrgDataId
            self.rateSheetId = rateSheetId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
            self.offChrtExecutorOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtExecutorOrgDataId)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
            try container.encodeIfPresent(self.offChrtExecutorOrgDataId, forKey: .offChrtExecutorOrgDataId)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case executorOrgId = "executor_org_id"
            case offChrtExecutorOrgDataId = "off_chrt_executor_org_data_id"
            case rateSheetId = "rate_sheet_id"
        }
    }
}