import Foundation

public enum DriverComplianceDocumentTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case driversLicense = "drivers_license"
    case commercialDriversLicense = "commercial_drivers_license"
    case tsaSta = "tsa_sta"
    case iataDangerousGoods = "iata_dangerous_goods"
    case dotHazmat = "dot_hazmat"
    case cdlHazmatEndorsement = "cdl_hazmat_endorsement"
    case oshaBloodbornePathogens = "osha_bloodborne_pathogens"
    case medicalSpecimen = "medical_specimen"
    case clinicalLabSpecimen = "clinical_lab_specimen"
    case pathology
    case bloodProducts = "blood_products"
    case pharmaceutical
    case coldChain = "cold_chain"
    case vehicleRegistration = "vehicle_registration"
    case vehicleInspection = "vehicle_inspection"
    case backgroundCheck = "background_check"
    case mvrCheck = "mvr_check"
}