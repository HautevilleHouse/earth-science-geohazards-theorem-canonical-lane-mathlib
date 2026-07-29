import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure TsunamiWavePropagationModel where
  seafloorDeformation : Type u
  bathymetry : Type v
  waveInitialCondition : Prop
  shallowWaterEquations : Prop
  runupInundation : Prop

structure TsunamiWavePropagationEvidence (T : TsunamiWavePropagationModel) where
  waveInitialConditionClosed : T.waveInitialCondition
  shallowWaterEquationsClosed : T.shallowWaterEquations
  runupInundationClosed : T.runupInundation

def TsunamiWavePropagationClosed (T : TsunamiWavePropagationModel) : Prop :=
  T.waveInitialCondition ∧ T.shallowWaterEquations ∧ T.runupInundation

theorem tsunami_wave_propagation_closed_from_evidence (T : TsunamiWavePropagationModel)
    (E : TsunamiWavePropagationEvidence T) : TsunamiWavePropagationClosed T := by
  exact And.intro E.waveInitialConditionClosed
    (And.intro E.shallowWaterEquationsClosed E.runupInundationClosed)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse