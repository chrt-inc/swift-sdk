import Foundation

extension Requests {
    public struct BillingLedgerClientCreate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let name: String?
        public let paymentDestinationDriverId: String?
        public let paymentDestinationOffChrtProviderOrgDataId: String?
        /// Must be a string starting with `org_`
        public let paymentDestinationOrgId: String?
        public let paymentOriginOffChrtShipperOrgDataId: String?
        /// Must be a string starting with `org_`
        public let paymentOriginOrgId: String?
        public let schemaVersion: Int
        public let taskGroupType: TaskGroupTypeEnum1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            name: String? = nil,
            paymentDestinationDriverId: String? = nil,
            paymentDestinationOffChrtProviderOrgDataId: String? = nil,
            paymentDestinationOrgId: String? = nil,
            paymentOriginOffChrtShipperOrgDataId: String? = nil,
            paymentOriginOrgId: String? = nil,
            schemaVersion: Int,
            taskGroupType: TaskGroupTypeEnum1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.name = name
            self.paymentDestinationDriverId = paymentDestinationDriverId
            self.paymentDestinationOffChrtProviderOrgDataId = paymentDestinationOffChrtProviderOrgDataId
            self.paymentDestinationOrgId = paymentDestinationOrgId
            self.paymentOriginOffChrtShipperOrgDataId = paymentOriginOffChrtShipperOrgDataId
            self.paymentOriginOrgId = paymentOriginOrgId
            self.schemaVersion = schemaVersion
            self.taskGroupType = taskGroupType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
            self.paymentDestinationOffChrtProviderOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgDataId)
            self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
            self.paymentOriginOffChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgDataId)
            self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.taskGroupType = try container.decodeIfPresent(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
            try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgDataId, forKey: .paymentDestinationOffChrtProviderOrgDataId)
            try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
            try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgDataId, forKey: .paymentOriginOffChrtShipperOrgDataId)
            try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.taskGroupType, forKey: .taskGroupType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case name
            case paymentDestinationDriverId = "payment_destination_driver_id"
            case paymentDestinationOffChrtProviderOrgDataId = "payment_destination_off_chrt_provider_org_data_id"
            case paymentDestinationOrgId = "payment_destination_org_id"
            case paymentOriginOffChrtShipperOrgDataId = "payment_origin_off_chrt_shipper_org_data_id"
            case paymentOriginOrgId = "payment_origin_org_id"
            case schemaVersion = "schema_version"
            case taskGroupType = "task_group_type"
        }
    }
}