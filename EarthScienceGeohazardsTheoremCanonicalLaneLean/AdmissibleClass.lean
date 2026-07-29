import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure EarthScienceAdmittedObject where
  faultSystem : Type u
  seismicCycle : Type v
  landslideModel : Type w
  geohazardEvidence : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : EarthScienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.geohazardEvidence ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse
