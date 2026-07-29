import EarthScienceGeohazardsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure TsunamiPropagationModelPackage where
  oceanBathymetry : Type u
  initialWaveGeneration : Prop
  shallowWaterEquations : Prop
  coastalRunup : Prop
  waveDispersion : Prop

structure TsunamiPropagationModelEvidence (T : TsunamiPropagationModelPackage) where
  initialWaveGenerationClosed : T.initialWaveGeneration
  shallowWaterEquationsClosed : T.shallowWaterEquations
  coastalRunupClosed : T.coastalRunup
  waveDispersionClosed : T.waveDispersion

def TsunamiPropagationModelClosed (T : TsunamiPropagationModelPackage) : Prop :=
  T.initialWaveGeneration ∧ T.shallowWaterEquations ∧ T.coastalRunup ∧ T.waveDispersion

theorem tsunami_propagation_model_closed_from_evidence
    (T : TsunamiPropagationModelPackage) (E : TsunamiPropagationModelEvidence T) :
    TsunamiPropagationModelClosed T := by
  exact And.intro E.initialWaveGenerationClosed
    (And.intro E.shallowWaterEquationsClosed
      (And.intro E.coastalRunupClosed E.waveDispersionClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse