import EarthScienceGeohazardsTheoremCanonicalLaneLean.FloodRiskModel

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def GeohazardsConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem geohazards_constrained_endgame (A : AdmissibleClass) :
    GeohazardsConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
