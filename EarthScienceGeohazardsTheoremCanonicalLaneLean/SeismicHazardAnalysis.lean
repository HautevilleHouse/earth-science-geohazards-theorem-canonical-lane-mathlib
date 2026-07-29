import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure SeismicHazardAnalysis where
  seismicityCatalog : Type u
  groundMotionPrediction : Type v
  hazardCurve : Prop
  disaggregation : Prop
  probabilityOfExceedance : Prop

structure SeismicHazardEvidence (S : SeismicHazardAnalysis) where
  hazardCurveClosed : S.hazardCurve
  disaggregationClosed : S.disaggregation
  probabilityOfExceedanceClosed : S.probabilityOfExceedance

def SeismicHazardClosed (S : SeismicHazardAnalysis) : Prop :=
  S.hazardCurve ∧ S.disaggregation ∧ S.probabilityOfExceedance

theorem seismic_hazard_closed_from_evidence (S : SeismicHazardAnalysis)
    (E : SeismicHazardEvidence S) : SeismicHazardClosed S := by
  exact And.intro E.hazardCurveClosed
    (And.intro E.disaggregationClosed E.probabilityOfExceedanceClosed)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse