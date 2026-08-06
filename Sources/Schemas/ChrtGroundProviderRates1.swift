import Foundation

public struct ChrtGroundProviderRates1: Codable, Hashable, Sendable {
    public let id: String
    public let additionalMileage: AdditionalMileageRate1?
    public let afterHours: AfterHoursRate1?
    public let archived: Bool?
    public let attempt: AttemptRate1?
    public let baseMileage: BaseMileageRate1?
    public let cargoTypes: [CargoTypeEnum1]?
    public let comments: String?
    public let counterpartyDriverId: String?
    public let counterpartyDriverIds: [String]?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    public let currencyCode: BillingCurrencyCodeEnum1
    public let dangerousGoods: DangerousGoodsRate1?
    public let extraStop: ExtraStopRate1?
    public let flatFee: FlatFeeRate1?
    public let fromPayables: FromPayables1?
    public let fuelSurcharge: FuelSurchargeRate1?
    public let holiday: HolidayRate1?
    public let invoiceType: InvoiceTypeEnum1
    public let longDistanceSurcharge: LongDistanceSurchargeRate1?
    public let name: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let pickAndHold: PickAndHoldRate1?
    public let schemaVersion: Int
    public let serviceLine: ServiceLineEnum?
    public let shipperAccountId: String?
    public let tax1: TaxRate1?
    public let tax2: TaxRate1?
    public let tax3: TaxRate1?
    public let updatedAtTimestamp: Date
    public let vehicleTypes: [VehicleTypeEnum]?
    public let waitTime: WaitTimeRate1?
    public let weekend: WeekendRate1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        additionalMileage: AdditionalMileageRate1? = nil,
        afterHours: AfterHoursRate1? = nil,
        archived: Bool? = nil,
        attempt: AttemptRate1? = nil,
        baseMileage: BaseMileageRate1? = nil,
        cargoTypes: [CargoTypeEnum1]? = nil,
        comments: String? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyDriverIds: [String]? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        currencyCode: BillingCurrencyCodeEnum1,
        dangerousGoods: DangerousGoodsRate1? = nil,
        extraStop: ExtraStopRate1? = nil,
        flatFee: FlatFeeRate1? = nil,
        fromPayables: FromPayables1? = nil,
        fuelSurcharge: FuelSurchargeRate1? = nil,
        holiday: HolidayRate1? = nil,
        invoiceType: InvoiceTypeEnum1,
        longDistanceSurcharge: LongDistanceSurchargeRate1? = nil,
        name: String? = nil,
        ownedByOrgId: String,
        pickAndHold: PickAndHoldRate1? = nil,
        schemaVersion: Int,
        serviceLine: ServiceLineEnum? = nil,
        shipperAccountId: String? = nil,
        tax1: TaxRate1? = nil,
        tax2: TaxRate1? = nil,
        tax3: TaxRate1? = nil,
        updatedAtTimestamp: Date,
        vehicleTypes: [VehicleTypeEnum]? = nil,
        waitTime: WaitTimeRate1? = nil,
        weekend: WeekendRate1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.additionalMileage = additionalMileage
        self.afterHours = afterHours
        self.archived = archived
        self.attempt = attempt
        self.baseMileage = baseMileage
        self.cargoTypes = cargoTypes
        self.comments = comments
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyDriverIds = counterpartyDriverIds
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.currencyCode = currencyCode
        self.dangerousGoods = dangerousGoods
        self.extraStop = extraStop
        self.flatFee = flatFee
        self.fromPayables = fromPayables
        self.fuelSurcharge = fuelSurcharge
        self.holiday = holiday
        self.invoiceType = invoiceType
        self.longDistanceSurcharge = longDistanceSurcharge
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.pickAndHold = pickAndHold
        self.schemaVersion = schemaVersion
        self.serviceLine = serviceLine
        self.shipperAccountId = shipperAccountId
        self.tax1 = tax1
        self.tax2 = tax2
        self.tax3 = tax3
        self.updatedAtTimestamp = updatedAtTimestamp
        self.vehicleTypes = vehicleTypes
        self.waitTime = waitTime
        self.weekend = weekend
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalMileage = try container.decodeIfPresent(AdditionalMileageRate1.self, forKey: .additionalMileage)
        self.afterHours = try container.decodeIfPresent(AfterHoursRate1.self, forKey: .afterHours)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.attempt = try container.decodeIfPresent(AttemptRate1.self, forKey: .attempt)
        self.baseMileage = try container.decodeIfPresent(BaseMileageRate1.self, forKey: .baseMileage)
        self.cargoTypes = try container.decodeIfPresent([CargoTypeEnum1].self, forKey: .cargoTypes)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyDriverIds = try container.decodeIfPresent([String].self, forKey: .counterpartyDriverIds)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.dangerousGoods = try container.decodeIfPresent(DangerousGoodsRate1.self, forKey: .dangerousGoods)
        self.extraStop = try container.decodeIfPresent(ExtraStopRate1.self, forKey: .extraStop)
        self.flatFee = try container.decodeIfPresent(FlatFeeRate1.self, forKey: .flatFee)
        self.fromPayables = try container.decodeIfPresent(FromPayables1.self, forKey: .fromPayables)
        self.fuelSurcharge = try container.decodeIfPresent(FuelSurchargeRate1.self, forKey: .fuelSurcharge)
        self.holiday = try container.decodeIfPresent(HolidayRate1.self, forKey: .holiday)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.longDistanceSurcharge = try container.decodeIfPresent(LongDistanceSurchargeRate1.self, forKey: .longDistanceSurcharge)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.pickAndHold = try container.decodeIfPresent(PickAndHoldRate1.self, forKey: .pickAndHold)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceLine = try container.decodeIfPresent(ServiceLineEnum.self, forKey: .serviceLine)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.tax1 = try container.decodeIfPresent(TaxRate1.self, forKey: .tax1)
        self.tax2 = try container.decodeIfPresent(TaxRate1.self, forKey: .tax2)
        self.tax3 = try container.decodeIfPresent(TaxRate1.self, forKey: .tax3)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.vehicleTypes = try container.decodeIfPresent([VehicleTypeEnum].self, forKey: .vehicleTypes)
        self.waitTime = try container.decodeIfPresent(WaitTimeRate1.self, forKey: .waitTime)
        self.weekend = try container.decodeIfPresent(WeekendRate1.self, forKey: .weekend)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.additionalMileage, forKey: .additionalMileage)
        try container.encodeIfPresent(self.afterHours, forKey: .afterHours)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.attempt, forKey: .attempt)
        try container.encodeIfPresent(self.baseMileage, forKey: .baseMileage)
        try container.encodeIfPresent(self.cargoTypes, forKey: .cargoTypes)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyDriverIds, forKey: .counterpartyDriverIds)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.dangerousGoods, forKey: .dangerousGoods)
        try container.encodeIfPresent(self.extraStop, forKey: .extraStop)
        try container.encodeIfPresent(self.flatFee, forKey: .flatFee)
        try container.encodeIfPresent(self.fromPayables, forKey: .fromPayables)
        try container.encodeIfPresent(self.fuelSurcharge, forKey: .fuelSurcharge)
        try container.encodeIfPresent(self.holiday, forKey: .holiday)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encodeIfPresent(self.longDistanceSurcharge, forKey: .longDistanceSurcharge)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.pickAndHold, forKey: .pickAndHold)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.serviceLine, forKey: .serviceLine)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encodeIfPresent(self.tax1, forKey: .tax1)
        try container.encodeIfPresent(self.tax2, forKey: .tax2)
        try container.encodeIfPresent(self.tax3, forKey: .tax3)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
        try container.encodeIfPresent(self.vehicleTypes, forKey: .vehicleTypes)
        try container.encodeIfPresent(self.waitTime, forKey: .waitTime)
        try container.encodeIfPresent(self.weekend, forKey: .weekend)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case additionalMileage = "additional_mileage"
        case afterHours = "after_hours"
        case archived
        case attempt
        case baseMileage = "base_mileage"
        case cargoTypes = "cargo_types"
        case comments
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyDriverIds = "counterparty_driver_ids"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case currencyCode = "currency_code"
        case dangerousGoods = "dangerous_goods"
        case extraStop = "extra_stop"
        case flatFee = "flat_fee"
        case fromPayables = "from_payables"
        case fuelSurcharge = "fuel_surcharge"
        case holiday
        case invoiceType = "invoice_type"
        case longDistanceSurcharge = "long_distance_surcharge"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case pickAndHold = "pick_and_hold"
        case schemaVersion = "schema_version"
        case serviceLine = "service_line"
        case shipperAccountId = "shipper_account_id"
        case tax1 = "tax_1"
        case tax2 = "tax_2"
        case tax3 = "tax_3"
        case updatedAtTimestamp = "updated_at_timestamp"
        case vehicleTypes = "vehicle_types"
        case waitTime = "wait_time"
        case weekend
    }
}