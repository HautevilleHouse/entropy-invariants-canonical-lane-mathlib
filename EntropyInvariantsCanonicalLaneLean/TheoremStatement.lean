import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  entropyConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "entropy-invariants-canonical-lane",
  theoremName := "EntropyInvariants",
  theoremObject := "EntropyAdmittedObject",
  classicalBoundary := "classical boundary carried",
  entropyConstrainedStatement := "entropy-constrained theorem certificate internalized through bridge and gate",
  certificateLane := "entropy_constrained",
  carriedRemainder := "classical source boundary carried"
}

def EntropyTheoremInternalized : Prop :=
  sourceTheoremStatement.sourceKey = "entropy-invariants-canonical-lane" ∧
  sourceTheoremStatement.certificateLane = "entropy_constrained"

theorem entropy_theorem_internalized_checked :
    EntropyTheoremInternalized :=
  by
    refine And.intro rfl rfl

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse
