(*
also need to consider different types of equivalence:

PL equivalence: given same inputs, same outputs & effects
  - Good: lets us replace bad max with good max
  - Bad: ignore performance in the extreme

Asymptotic equivalence: ignore constant factors
  - good: focus on the algorithm and efficiency for large inputs
  - bad: ignores "four times faster"

Systems equivalnce: account for constant overheads, performance tuning
  - good: faste rmeans different and better
  - bad: beware overtuning on "wrong" (eg, small) inputs; definitino does not let you "swap in a different algorithm"
*)
