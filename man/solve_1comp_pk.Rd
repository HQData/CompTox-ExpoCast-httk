\name{solve_1comp}
\alias{solve_1comp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
   Solve one compartment TK model
}
\description{
This function solves for the amount or concentration of a chemical in plasma for a one compartment model as a function of time based on the dose and dosing frequency.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
solve_1comp(chem.cas=NULL,chem.name=NULL,times=NULL,parameters=NULL,daily.dose=1,
            dose=NULL,doses.per.day=NULL, days=10,tsteps = 4, suppress.messages=F,
            species='Human',output.units='uM',plots=F,initial.values=NULL,
            iv.dose=F,method="lsoda",rtol=1e-8,atol=1e-12,
            default.to.human=F,dosing.matrix=NULL,recalc.elimination=F,
            adjusted.Funbound.plasma=T,regression=T,restrictive.clearance=T,
            well.stirred.correction=T,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{chem.name}{Either the chemical name, CAS number, or the parameters must be specified.}
  \item{chem.cas}{Either the chemical name, CAS number, or the parameters must be specified.}
  \item{times}{Optional time sequence for specified number of days.}
  \item{parameters}{Chemical parameters from parameterize_1comp function, overrides chem.name and chem.cas.}
  \item{days}{Length of the simulation.}
  \item{tsteps}{The number time steps per hour.}
  \item{daily.dose}{Total daily dose, mg/kg BW.}
  \item{dose}{Amount of a single dose, mg/kg BW.  Overwrites daily.dose.}
  \item{doses.per.day}{Number of doses per day.}
  \item{species}{Species desired (either "Rat", "Rabbit", "Dog", or default "Human"). }
  \item{iv.dose}{Simulates a single i.v. dose if true.}
  \item{output.units}{Desired units (either "mg/L", "mg", "umol", or default "uM").}
  \item{initial.values}{Vector containing the initial concentrations or amounts of the chemical in specified tissues with units corresponding to output.units.  Defaults are zero.}
   \item{suppress.messages}{Whether or not the output message is suppressed.}
  \item{plots}{Plots all outputs if true.}  
  \item{method}{Method used by integrator (deSolve).}
  \item{rtol}{Argument passed to integrator (deSolve).}
  \item{atol}{Argument passed to integrator (deSolve).}
  \item{default.to.human}{Substitutes missing rat values with human values if true. }
  \item{dosing.matrix}{Vector of dosing times or a matrix consisting of two columns or rows named "dose" and "time" containing the time and amount, in mg/kg BW, of each dose.}
  \item{recalc.elimination}{Whether or not to recalculate the elimination rate.}
 \item{adjusted.Funbound.plasma}{Uses adjusted Funbound.plasma when set to TRUE along with volume of distribution calculated with this value.}
  \item{regression}{Whether or not to use the regressions in calculating partition coefficients in volume of distribution calculation.}
 \item{restrictive.clearance}{In calculating elimination rate, protein binding is not taken into account (set to 1) in liver clearance if FALSE.}
  \item{well.stirred.correction}{Uses correction in calculation of hepatic clearance for well-stirred model if TRUE.  
                                  This assumes clearance relative to amount unbound in whole blood instead of plasma, but converted to use with plasma concentration.}
  \item{...}{Additional arguments passed to the integrator.}


}

\details{
Note that the model parameters have units of hours while the model output is in days.

Default value of NULL for doses.per.day solves for a single dose.


 %%When species is specified as rabbit, dog, or mouse, the function uses the appropriate physiological data(volumes and flows) but substitues human fraction unbound, partition coefficients, and intrinsic hepatic clearance.
 
 AUC is area under plasma concentration curve. 
   

%%  ~~ If necessary, more details than the description above ~~
}
\value{
A matrix with a column for time(in days) and a column for the compartment and the area under the curve (concentration only).
     
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\author{
Robert Pearce
}

\examples{
solve_1comp(chem.name='Bisphenol-A',days=1)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Solve}
