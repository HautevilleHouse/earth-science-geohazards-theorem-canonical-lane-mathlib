import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure MultiHazardRiskAssessmentModel where
  hazardCurves : Type u
  exposureData : Type v
  vulnerabilityFunctions : Prop
  riskMetrics : Prop
  uncertaintyPropagation : Prop

structure MultiHazardRiskAssessmentEvidence (M : MultiHazardRiskAssessmentModel) where
  vulnerabilityFunctionsClosed : M.vulnerabilityFunctions
  riskMetricsClosed : M.riskMetrics
  uncertaintyPropagationClosed : M.uncertaintyPropagation

def MultiHazardRiskAssessmentClosed (M : MultiHazardRiskAssessmentModel) : Prop :=
  M.vulnerabilityFunctions ∧ M.riskMetrics ∧ M.uncertaintyPropagation

theorem multi_hazard_risk_assessment_closed_from_evidence (M : MultiHazardRiskAssessmentModel)
    (E : MultiHazardRiskAssessmentEvidence M) : MultiHazardRiskAssessmentClosed M := by
  exact And.intro E.vulnerabilityFunctionsClosed
    (And.intro E.riskMetricsClosed E.uncertaintyPropagationClosed)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse