import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeohazardsTheoremCanonicalLaneLean

structure EarthScienceGeohazardsTheoremStatement where
  theoremName : String
  hazardType : String
  region : String
  constraintType : String
  carriedRemainder : String

def defaultTheoremStatement : EarthScienceGeohazardsTheoremStatement :=
  { theoremName := "Earth Science Geohazards Theorem",
    hazardType := "seismic",
    region := "global",
    constraintType := "bridgeClosed ∧ gateClosed",
    carriedRemainder := "unrestricted classical boundary carried outside admissible class"
  }

theorem theorem_statement_defined : defaultTheoremStatement.theoremName = "Earth Science Geohazards Theorem" := by
  rfl

end EarthScienceGeohazardsTheoremCanonicalLaneLean
end HautevilleHouse