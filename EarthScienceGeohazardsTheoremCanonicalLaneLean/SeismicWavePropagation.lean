import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure ElasticMedium where
  density : ℝ
  lameLambda : ℝ
  shearModulus : ℝ
  pWaveVelocity : ℝ
  sWaveVelocity : ℝ

structure SourceMechanism where
  momentTensor : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ
  hypocenter : ℝ × ℝ × ℝ
  originTime : ℝ
  magnitude : ℝ
  ruptureDuration : ℝ

structure SeismicWavePropagationPackage where
  medium : ElasticMedium
  source : SourceMechanism
  waveEquation : Prop
  boundaryConditions : Prop
  attenuationModel : Prop
  wavefieldSolution : Prop

structure SeismicWavePropagationEvidence (S : SeismicWavePropagationPackage) where
  waveEquationClosed : S.waveEquation
  boundaryConditionsClosed : S.boundaryConditions
  attenuationModelClosed : S.attenuationModel
  wavefieldSolutionClosed : S.wavefieldSolution

def SeismicWavePropagationClosed (S : SeismicWavePropagationPackage) : Prop :=
  S.waveEquation ∧ S.boundaryConditions ∧ S.attenuationModel ∧ S.wavefieldSolution

theorem seismic_wave_propagation_closed_from_evidence
    (S : SeismicWavePropagationPackage) (E : SeismicWavePropagationEvidence S) :
    SeismicWavePropagationClosed S := by
  exact And.intro E.waveEquationClosed
    (And.intro E.boundaryConditionsClosed
      (And.intro E.attenuationModelClosed E.wavefieldSolutionClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse