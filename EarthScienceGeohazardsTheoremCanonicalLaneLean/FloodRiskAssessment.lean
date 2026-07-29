import EarthScienceGeohazardsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure FloodRiskAssessmentPackage where
  hydrologicalModel : Type u
  precipitationForecast : Prop
  riverDischarge : Prop
  floodplainTopography : Prop
  defenseInfrastructure : Prop

structure FloodRiskAssessmentEvidence (F : FloodRiskAssessmentPackage) where
  precipitationForecastClosed : F.precipitationForecast
  riverDischargeClosed : F.riverDischarge
  floodplainTopographyClosed : F.floodplainTopography
  defenseInfrastructureClosed : F.defenseInfrastructure

def FloodRiskAssessmentClosed (F : FloodRiskAssessmentPackage) : Prop :=
  F.precipitationForecast ∧ F.riverDischarge ∧ F.floodplainTopography ∧ F.defenseInfrastructure

theorem flood_risk_assessment_closed_from_evidence
    (F : FloodRiskAssessmentPackage) (E : FloodRiskAssessmentEvidence F) :
    FloodRiskAssessmentClosed F := by
  exact And.intro E.precipitationForecastClosed
    (And.intro E.riverDischargeClosed
      (And.intro E.floodplainTopographyClosed E.defenseInfrastructureClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse