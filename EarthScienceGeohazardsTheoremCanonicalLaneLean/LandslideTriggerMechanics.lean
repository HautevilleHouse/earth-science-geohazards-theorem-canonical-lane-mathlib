import EarthScienceGeohazardsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure LandslideTriggerMechanicsPackage where
  slopeGeometry : Type u
  materialProperties : Prop
  groundwaterPressure : Prop
  seismicTrigger : Prop
  failureCriterion : Prop

structure LandslideTriggerMechanicsEvidence (L : LandslideTriggerMechanicsPackage) where
  slopeGeometryClosed : L.slopeGeometry
  materialPropertiesClosed : L.materialProperties
  groundwaterPressureClosed : L.groundwaterPressure
  seismicTriggerClosed : L.seismicTrigger
  failureCriterionClosed : L.failureCriterion

def LandslideTriggerMechanicsClosed (L : LandslideTriggerMechanicsPackage) : Prop :=
  L.slopeGeometry ∧ L.materialProperties ∧ L.groundwaterPressure ∧
  L.seismicTrigger ∧ L.failureCriterion

theorem landslide_trigger_mechanics_closed_from_evidence
    (L : LandslideTriggerMechanicsPackage) (E : LandslideTriggerMechanicsEvidence L) :
    LandslideTriggerMechanicsClosed L := by
  exact And.intro E.slopeGeometryClosed
    (And.intro E.materialPropertiesClosed
      (And.intro E.groundwaterPressureClosed
        (And.intro E.seismicTriggerClosed E.failureCriterionClosed)))

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse