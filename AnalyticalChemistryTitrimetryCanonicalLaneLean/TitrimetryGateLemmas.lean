import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

def gateClosed (A : TitrimetricAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : TitrimetricAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse