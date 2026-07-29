import EarthScienceGeohazardsTheoremCanonicalLaneLean.EarthScienceGeohazardsCanonicalLaneLean

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure SeismicHazardModel where
  faultSystem : Type u
  recurrenceInterval : Type v
  magnitudeFrequencyRelation : Prop
  groundMotionPrediction : Prop
  probabilisticSeismicHazard : Prop
  hazardCurve : Prop

structure SeismicHazardModelEvidence (M : SeismicHazardModel) where
  magnitudeFrequencyRelationClosed : M.magnitudeFrequencyRelation
  groundMotionPredictionClosed : M.groundMotionPrediction
  probabilisticSeismicHazardClosed : M.probabilisticSeismicHazard
  hazardCurveClosed : M.hazardCurve

def SeismicHazardModelClosed (M : SeismicHazardModel) : Prop :=
  M.magnitudeFrequencyRelation ∧ M.groundMotionPrediction ∧
  M.probabilisticSeismicHazard ∧ M.hazardCurve

theorem seismic_hazard_model_closed_from_evidence (M : SeismicHazardModel)
    (E : SeismicHazardModelEvidence M) : SeismicHazardModelClosed M := by
  exact And.intro E.magnitudeFrequencyRelationClosed
    (And.intro E.groundMotionPredictionClosed
      (And.intro E.probabilisticSeismicHazardClosed E.hazardCurveClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
