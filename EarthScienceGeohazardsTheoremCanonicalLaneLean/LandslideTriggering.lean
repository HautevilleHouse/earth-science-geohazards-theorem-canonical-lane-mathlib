import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure SlopeGeometry where
  slopeAngle : ℝ
  slopeHeight : ℝ
  soilDepth : ℝ
  waterTableDepth : ℝ
  failurePlaneDepth : ℝ

structure MaterialProperties where
  cohesion : ℝ
  frictionAngle : ℝ
  unitWeight : ℝ
  hydraulicConductivity : ℝ
  porePressureRatio : ℝ

structure TriggeringFactors where
  rainfallIntensity : ℝ
  earthquakeAcceleration : ℝ × ℝ × ℝ
  vegetationRemovalFactor : ℝ
  anthropogenicLoad : ℝ

structure LandslideTriggeringPackage where
  slope : SlopeGeometry
  material : MaterialProperties
  triggers : TriggeringFactors
  infiniteSlopeModel : Prop
  failureCriterion : Prop
  factorOfSafetyComputed : Prop
  triggeringMechanismIdentified : Prop

structure LandslideTriggeringEvidence (L : LandslideTriggeringPackage) where
  infiniteSlopeModelClosed : L.infiniteSlopeModel
  failureCriterionClosed : L.failureCriterion
  factorOfSafetyComputedClosed : L.factorOfSafetyComputed
  triggeringMechanismIdentifiedClosed : L.triggeringMechanismIdentified

def LandslideTriggeringClosed (L : LandslideTriggeringPackage) : Prop :=
  L.infiniteSlopeModel ∧ L.failureCriterion ∧ L.factorOfSafetyComputed ∧ L.triggeringMechanismIdentified

theorem landslide_triggering_closed_from_evidence
    (L : LandslideTriggeringPackage) (E : LandslideTriggeringEvidence L) :
    LandslideTriggeringClosed L := by
  exact And.intro E.infiniteSlopeModelClosed
    (And.intro E.failureCriterionClosed
      (And.intro E.factorOfSafetyComputedClosed E.triggeringMechanismIdentifiedClosed))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse