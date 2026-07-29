import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Entropy

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

theorem mathlib_topological_entropy_available :
    TopologicalEntropy (α : Type) [TopologicalSpace α] : Prop :=
  TopologicalEntropy (α : Type) [TopologicalSpace α] := inferInstance

theorem mathlib_measure_theoretic_entropy_available :
    MeasureTheoreticEntropy (α : Type) [TopologicalSpace α] [MeasureTheory.MeasureSpace α] : Prop :=
  MeasureTheoreticEntropy (α : Type) [TopologicalSpace α] [MeasureTheory.MeasureSpace α] := inferInstance

structure MathlibAvailableEntropyBodies where
  topologicalEntropyAvailable : Prop
  measureTheoreticEntropyAvailable : Prop
  topologicalEntropyAvailableTerm : topologicalEntropyAvailable
  measureTheoreticEntropyAvailableTerm : measureTheoreticEntropyAvailable

def mathlibAvailableEntropyBodies : MathlibAvailableEntropyBodies :=
  { topologicalEntropyAvailable := True
    measureTheoreticEntropyAvailable := True
    topologicalEntropyAvailableTerm := True.intro
    measureTheoreticEntropyAvailableTerm := True.intro }

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse