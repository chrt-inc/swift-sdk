import Foundation

public enum OrgComplianceDocumentTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case securityThreatAssessment = "security_threat_assessment"
    case insurance
    case indirectAirCarrier = "indirect_air_carrier"
    case customsBroker = "customs_broker"
    case gdp
    case authorizedEconomicOperator = "authorized_economic_operator"
    case hipaa
    case chainOfCustody = "chain_of_custody"
    case autoLiabilityInsurance = "auto_liability_insurance"
    case cargoInsurance = "cargo_insurance"
    case generalLiabilityInsurance = "general_liability_insurance"
    case workersCompInsurance = "workers_comp_insurance"
}