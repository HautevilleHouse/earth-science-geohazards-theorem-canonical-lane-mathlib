import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure OceanBasin where
  depthMap : ℝ → ℝ → ℝ
  coastlineGeometry : String
  bathymetryData : List (ℝ × ℝ × ℝ)

structure EarthquakeSource where
  ruptureLength : ℝ
  ruptureWidth : ℝ
  slipAmount : ℝ
  depth : ℝ
  dipAngle : ℝ
  strikeAngle : ℝ
  rakeAngle : ℝ

structure TsunamiPropagationPackage where
  basin : OceanBasin
  source : EarthquakeSource
  shallowWaterEquations : Prop
  initialWaveform : Prop
  propagationModel : Prop
  inundationModel : Prop
  waveAmplitude : ℝ
  arrivalTimes : List (ℝ × ℝ)

structure TsunamiPropagationEvidence (T : TsunamiPropagationPackage) where
  shallowWaterEquationsClosed : T.shallowWaterEquations
  initialWaveformClosed : T.initialWaveform
  propagationModelClosed : T.propagationModel
  inundationModelClosed : T.inundationModel

def TsunamiPropagationClosed (T : TsunamiPropagationPackage) : Prop :=
  T.shallowWaterEquations ∧ T.initialWaveform ∧ T.propagationModel ∧ T.inundationModel

theorem tsunami_propagation_closed_from_evidence
    (T : TsunamiPropagationPackage) (E : TsunamiPropagationEvidence T) :
    TsunamiPropagationClosed T := by
  exact And.intro E.shallowWaterEquationsClosed
    (And.intro E.initialWaveformClosed
      (And.intro E.propagationModelClosed E.inundationModelClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse