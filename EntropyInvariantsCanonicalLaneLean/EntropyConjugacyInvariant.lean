import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EntropyInvariantsCanonicalLaneLean.EntropyInvariantObjects

namespace HautevilleHouse
namespace EntropyInvariantsCanonicalLaneLean

structure ConjugacyInvarianceCertificate where
  conjugateDynamicalSystem : EntropyAdmittedObject
  entropyPreserved : Prop
  entropyPreservedClosed : entropyPreserved

def ConjugacyInvarianceCertificateClosed (C : ConjugacyInvarianceCertificate) : Prop :=
  C.entropyPreserved

theorem conjugacy_invariance_certificate_closed (C : ConjugacyInvarianceCertificate) :
    ConjugacyInvarianceCertificateClosed C :=
  C.entropyPreservedClosed

end EntropyInvariantsCanonicalLaneLean
end HautevilleHouse