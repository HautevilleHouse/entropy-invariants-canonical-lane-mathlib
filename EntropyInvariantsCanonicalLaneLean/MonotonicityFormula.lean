import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyFunctional

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure MonotonicityFormulaPackage {E : EntropyFunctionalPackage} where
  monotonicityInequality : Prop
  timeDerivative : Prop
  criticalPoints : Prop
  convexityAlongFlow : Prop
  entropyDissipation : Prop

structure MonotonicityFormulaEvidence {E : EntropyFunctionalPackage}
    (M : MonotonicityFormulaPackage E) where
  monotonicityInequalityClosed : M.monotonicityInequality
  timeDerivativeClosed : M.timeDerivative
  criticalPointsClosed : M.criticalPoints
  convexityAlongFlowClosed : M.convexityAlongFlow
  entropyDissipationClosed : M.entropyDissipation

def MonotonicityFormulaClosed {E : EntropyFunctionalPackage}
    (M : MonotonicityFormulaPackage E) : Prop :=
  M.monotonicityInequality ∧ M.timeDerivative ∧ M.criticalPoints ∧
  M.convexityAlongFlow ∧ M.entropyDissipation

theorem monotonicity_formula_closed_from_evidence {E : EntropyFunctionalPackage}
    (M : MonotonicityFormulaPackage E) (Ev : MonotonicityFormulaEvidence M) :
    MonotonicityFormulaClosed M := by
  exact And.intro Ev.monotonicityInequalityClosed
    (And.intro Ev.timeDerivativeClosed
      (And.intro Ev.criticalPointsClosed
        (And.intro Ev.convexityAlongFlowClosed Ev.entropyDissipationClosed)))

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse