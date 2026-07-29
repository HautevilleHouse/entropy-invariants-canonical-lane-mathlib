import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyFunctional

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure WFunctionalPackage {E : EntropyFunctionalPackage} where
  wFunctional : Type u
  muFunctional : Type v
  monotonicity : Prop
  lyapunovFunction : Prop
  gradientFlow : Prop

structure WFunctionalEvidence {E : EntropyFunctionalPackage}
    (W : WFunctionalPackage E) where
  monotonicityClosed : W.monotonicity
  lyapunovFunctionClosed : W.lyapunovFunction
  gradientFlowClosed : W.gradientFlow

def WFunctionalClosed {E : EntropyFunctionalPackage}
    (W : WFunctionalPackage E) : Prop :=
  W.monotonicity ∧ W.lyapunovFunction ∧ W.gradientFlow

theorem wfunctional_closed_from_evidence {E : EntropyFunctionalPackage}
    (W : WFunctionalPackage E) (Ev : WFunctionalEvidence W) :
    WFunctionalClosed W := by
  exact And.intro Ev.monotonicityClosed (And.intro Ev.lyapunovFunctionClosed Ev.gradientFlowClosed)

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse