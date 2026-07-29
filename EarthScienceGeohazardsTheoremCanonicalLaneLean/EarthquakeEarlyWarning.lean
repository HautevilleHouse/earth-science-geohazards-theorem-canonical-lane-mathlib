import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure EarthquakeEarlyWarningSystem where
  realTimeSeismicNetwork : Type u
  wavefieldEstimation : Type v
  magnitudeEstimation : Prop
  peakGroundAccelPrediction : Prop
  alertThreshold : Prop
  leadTimeCalculation : Prop

structure EarthquakeEarlyWarningEvidence (E : EarthquakeEarlyWarningSystem) where
  magnitudeEstimationClosed : E.magnitudeEstimation
  peakGroundAccelPredictionClosed : E.peakGroundAccelPrediction
  alertThresholdClosed : E.alertThreshold
  leadTimeCalculationClosed : E.leadTimeCalculation

def EarthquakeEarlyWarningClosed (E : EarthquakeEarlyWarningSystem) : Prop :=
  E.magnitudeEstimation ∧ E.peakGroundAccelPrediction ∧ E.alertThreshold ∧ E.leadTimeCalculation

theorem earthquake_early_warning_closed_from_evidence (E : EarthquakeEarlyWarningSystem)
    (Ev : EarthquakeEarlyWarningEvidence E) : EarthquakeEarlyWarningClosed E := by
  exact And.intro Ev.magnitudeEstimationClosed
    (And.intro Ev.peakGroundAccelPredictionClosed
      (And.intro Ev.alertThresholdClosed Ev.leadTimeCalculationClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse