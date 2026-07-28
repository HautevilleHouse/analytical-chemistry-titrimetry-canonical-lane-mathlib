import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryTitrimetryCanonicalLaneLean

structure TitrimetricTheoremObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure TitrimetricSubstrate where
  titrationType : String
  endpointDetection : String
  indicatorUsed : String
  concentrationRange : Float
  stoichiometricRatio : Nat

structure TitrimetricAdmittedObject where
  object : TitrimetricTheoremObject
  substrate : TitrimetricSubstrate
  localWitness : String
  bridgeEvidence : String
  endpointSatisfiedChecked : Prop
  endpointSatisfiedWitness : endpointSatisfiedChecked
  remainderRecordedChecked : Prop
  remainderRecordedWitness : remainderRecordedChecked
  classicalRemainderCarried : Bool
  sourceKeyChecked : object.sourceKey = "titrimetry-source"
  theoremObjectChecked : object.theoremObject = "Analytical Chemistry Titrimetry"

structure TitrimetricAdmissibleClass where
  object : TitrimetricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : TitrimetricAdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnalyticalChemistryTitrimetryCanonicalLaneLean
end HautevilleHouse