import Foundation

extension Requests {
    public struct OrderRateSheetSelectionUpdateReq: Codable, Hashable, Sendable {
        public let counterpartyDriverId: String?
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let rateSheetId: String?
        public let relationshipType: BillingRelationshipTypeEnum1
        public let taskGroupId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyDriverId: String? = nil,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            rateSheetId: String? = nil,
            relationshipType: BillingRelationshipTypeEnum1,
            taskGroupId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyDriverId = counterpartyDriverId
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.rateSheetId = rateSheetId
            self.relationshipType = relationshipType
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.relationshipType = try container.decode(BillingRelationshipTypeEnum1.self, forKey: .relationshipType)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
            try container.encode(self.relationshipType, forKey: .relationshipType)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyDriverId = "counterparty_driver_id"
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case rateSheetId = "rate_sheet_id"
            case relationshipType = "relationship_type"
            case taskGroupId = "task_group_id"
        }
    }
}