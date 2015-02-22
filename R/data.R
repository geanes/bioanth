#' Howells Craniometric Data Set
#' 
#' The William W. Howells Craniometric Data Set consists of cranial metric 
#' measurements and sex estimates made by Dr. William Howells between 1965 and 
#' 1980. These represent a global sample of human groups considered by 
#' Dr. Howells to represent populations, all of which date to the later 
#' Holocene. Over 2500 individuals from 28 populations were measured by 
#' Dr. Howells. Craniometric dimensions in the data set are linear measurements 
#' taken with calipers, and include lengths, chords, subtenses, angles, 
#' and radii. 
#' 
#' @format A data frame with 2524 rows and 89 variables:
#' @section Variables:
#' \itemize{
#'   \item \code{ID}: Unique case ID
#'   \item \code{Sex}: M or F
#'   \item \code{PopNum}: Population number
#'   \item \code{Population}: Population name
#'   \item \code{GOL}: mm
#'   \item \code{NOL}: mm
#'   \item \code{BNL}: mm
#'   \item \code{BBH}: mm
#'   \item \code{XCB}: mm
#'   \item \code{XFB}: mm
#'   \item \code{ZYB}: mm
#'   \item \code{AUB}: mm
#'   \item \code{WCB}: mm
#'   \item \code{ASB}: mm
#'   \item \code{BPL}: mm
#'   \item \code{NPH}: mm
#'   \item \code{NLH}: mm
#'   \item \code{JUB}: mm
#'   \item \code{NLB}: mm
#'   \item \code{MAB}: mm
#'   \item \code{MDH}: mm
#'   \item \code{MDB}: mm
#'   \item \code{OBH}: mm
#'   \item \code{OBB}: mm
#'   \item \code{DKB}: mm
#'   \item \code{NDS}: mm
#'   \item \code{WNB}: mm
#'   \item \code{SIS}: mm
#'   \item \code{ZMB}: mm
#'   \item \code{SSS}: mm
#'   \item \code{FMB}: mm
#'   \item \code{NAS}: mm
#'   \item \code{EKB}: mm
#'   \item \code{DKS}: mm
#'   \item \code{IML}: mm
#'   \item \code{XML}: mm
#'   \item \code{MLS}: mm
#'   \item \code{WMH}: mm
#'   \item \code{SOS}: mm
#'   \item \code{GLS}: mm
#'   \item \code{STB}: mm
#'   \item \code{FRC}: mm
#'   \item \code{FRS}: mm
#'   \item \code{FRF}: mm
#'   \item \code{PAC}: mm
#'   \item \code{PAS}: mm
#'   \item \code{PAF}: mm
#'   \item \code{OCC}: mm
#'   \item \code{OCS}: mm
#'   \item \code{OCF}: mm
#'   \item \code{FOL}: mm
#'   \item \code{NAR}: mm
#'   \item \code{SSR}: mm
#'   \item \code{PRR}: mm
#'   \item \code{DKR}: mm
#'   \item \code{ZOR}: mm
#'   \item \code{FMR}: mm
#'   \item \code{EKR}: mm
#'   \item \code{ZMR}: mm
#'   \item \code{AVR}: mm
#'   \item \code{BRR}: mm
#'   \item \code{VRR}: mm
#'   \item \code{LAR}: mm
#'   \item \code{OSR}: mm
#'   \item \code{BAR}: mm
#'   \item \code{NAA}: mm
#'   \item \code{PRA}: mm
#'   \item \code{BAA}: mm
#'   \item \code{NBA}: mm
#'   \item \code{BBA}: mm
#'   \item \code{BRA}: mm
#'   \item \code{SSA}: mm
#'   \item \code{NFA}: mm
#'   \item \code{DKA}: mm
#'   \item \code{NDA}: mm
#'   \item \code{SIA}: mm
#'   \item \code{FRA}: mm
#'   \item \code{PAA}: mm
#'   \item \code{OCA}: mm
#'   \item \code{RFA}: mm
#'   \item \code{RPA}: mm
#'   \item \code{ROA}: mm
#'   \item \code{BSA}: mm
#'   \item \code{SBA}: mm
#'   \item \code{SLA}: mm
#'   \item \code{TBA}: mm
#' } 
#' @section Citation:
#' Howells WW. 1973. Cranial Variation in Man. A Study by Multivariate Analysis 
#' of Patterns of Differences Among Recent Human Populations. 
#' Papers of the Peabody Museum of Archeology and Ethnology, vol. 67, pp. 259. 
#' Cambridge, Mass.: Peabody Museum.
#' 
#' Howells WW. 1989. Skull Shapes and the Map. Craniometric Analyses in the 
#' Dispersion of Modern Homo. 
#' Papers of the Peabody Museum of Archaeology and Ethnology, vol. 79, pp. 189. 
#' Cambridge, Mass.: Peabody Museum.
#' 
#' Howells WW. 1995. Who’s Who in Skulls. Ethnic Identification of Crania from 
#' Measurements. 
#' Papers of the Peabody Museum of Archaeology and Ethnology, vol. 82, pp. 108. 
#' Cambridge, Mass.: Peabody Museum.
#' @family howells
#' @source \url{http://web.utk.edu/~auerbach/HOWL.htm}
"howell"


#' Howell Craniometric Test Data Set
#' 
#' The William W. Howells Craniometric Data Set consists of craniometric 
#' measurements taken from 2524 human crania from 28 populations. 
#' Up to 82 measurements were obtained from these crania. In addition, 
#' Dr. Howells obtained data from 524 "test" crania (crania not included in the 
#' main data set).
#' 
#' @format A data frame with 524 rows and 89 variables:
#' @section Variables:
#' \itemize{
#'   \item \code{ID}: Unique case ID
#'   \item \code{Sex}: M or F
#'   \item \code{Tribe}: Tribe name
#'   \item \code{Origin}: Origin location
#'   \item \code{Museum.location}: Museum location
#'   \item \code{Museum.number}: Museum number
#'   \item \code{Comments}: Notes
#'   \item \code{GOL}: mm
#'   \item \code{NOL}: mm
#'   \item \code{BNL}: mm
#'   \item \code{BBH}: mm
#'   \item \code{XCB}: mm
#'   \item \code{XFB}: mm
#'   \item \code{ZYB}: mm
#'   \item \code{AUB}: mm
#'   \item \code{WCB}: mm
#'   \item \code{ASB}: mm
#'   \item \code{BPL}: mm
#'   \item \code{NPH}: mm
#'   \item \code{NLH}: mm
#'   \item \code{JUB}: mm
#'   \item \code{NLB}: mm
#'   \item \code{MAB}: mm
#'   \item \code{MDH}: mm
#'   \item \code{MDB}: mm
#'   \item \code{OBH}: mm
#'   \item \code{OBB}: mm
#'   \item \code{DKB}: mm
#'   \item \code{NDS}: mm
#'   \item \code{WNB}: mm
#'   \item \code{SIS}: mm
#'   \item \code{ZMB}: mm
#'   \item \code{SSS}: mm
#'   \item \code{FMB}: mm
#'   \item \code{NAS}: mm
#'   \item \code{EKB}: mm
#'   \item \code{DKS}: mm
#'   \item \code{IML}: mm
#'   \item \code{XML}: mm
#'   \item \code{MLS}: mm
#'   \item \code{WMH}: mm
#'   \item \code{SOS}: mm
#'   \item \code{GLS}: mm
#'   \item \code{STB}: mm
#'   \item \code{FRC}: mm
#'   \item \code{FRS}: mm
#'   \item \code{FRF}: mm
#'   \item \code{PAC}: mm
#'   \item \code{PAS}: mm
#'   \item \code{PAF}: mm
#'   \item \code{OCC}: mm
#'   \item \code{OCS}: mm
#'   \item \code{OCF}: mm
#'   \item \code{FOL}: mm
#'   \item \code{NAR}: mm
#'   \item \code{SSR}: mm
#'   \item \code{PRR}: mm
#'   \item \code{DKR}: mm
#'   \item \code{ZOR}: mm
#'   \item \code{FMR}: mm
#'   \item \code{EKR}: mm
#'   \item \code{ZMR}: mm
#'   \item \code{AVR}: mm
#'   \item \code{BRR}: mm
#'   \item \code{VRR}: mm
#'   \item \code{LAR}: mm
#'   \item \code{OSR}: mm
#'   \item \code{BAR}: mm
#'   \item \code{NAA}: mm
#'   \item \code{PRA}: mm
#'   \item \code{BAA}: mm
#'   \item \code{NBA}: mm
#'   \item \code{BBA}: mm
#'   \item \code{BRA}: mm
#'   \item \code{SSA}: mm
#'   \item \code{NFA}: mm
#'   \item \code{DKA}: mm
#'   \item \code{NDA}: mm
#'   \item \code{SIA}: mm
#'   \item \code{FRA}: mm
#'   \item \code{PAA}: mm
#'   \item \code{OCA}: mm
#'   \item \code{RFA}: mm
#'   \item \code{RPA}: mm
#'   \item \code{ROA}: mm
#'   \item \code{BSA}: mm
#'   \item \code{SBA}: mm
#'   \item \code{SLA}: mm
#'   \item \code{TBA}: mm
#' }
#' @section Citation:
#' Howells WW. 1973. Cranial Variation in Man. A Study by Multivariate Analysis 
#' of Patterns of Differences Among Recent Human Populations. 
#' Papers of the Peabody Museum of Archeology and Ethnology, vol. 67, pp. 259. 
#' Cambridge, Mass.: Peabody Museum.
#' 
#' Howells WW. 1989. Skull Shapes and the Map. Craniometric Analyses in the 
#' Dispersion of Modern Homo. 
#' Papers of the Peabody Museum of Archaeology and Ethnology, vol. 79, pp. 189. 
#' Cambridge, Mass.: Peabody Museum.
#' 
#' Howells WW. 1995. Who’s Who in Skulls. Ethnic Identification of Crania from 
#' Measurements. 
#' Papers of the Peabody Museum of Archaeology and Ethnology, vol. 82, pp. 108. 
#' Cambridge, Mass.: Peabody Museum.
#' @family howells
#' @source \url{http://web.utk.edu/~auerbach/HOWL.htm}
"howelltest"


#' Goldman Osteometric Data Set
#' 
#' The Goldman Osteometric Data Set consists of postcranial skeletal metric 
#' measurements, sex estimates, and broad age estimates made by 
#' Dr. Benjamin Auerbach between 2001 and 2003. These represent a global sample
#' of humans dating throughout the Holocene, though most samples are from 
#' preindustrial groups. A total of over 1500 individuals from 59 locations are 
#' included in the data set. Only measurements from the upper limb (humerus & 
#' radius), lower limb (femur & tibia), and pelvis were taken. 
#' 
#' @format A data frame with 1538 rows and 66 variables:
#' \itemize{
#'   \item \code{Inst}: Collection housing remains
#'   \item \code{ID}: Unique case ID
#'   \item \code{Sex}: Male or female, determined from os coxae
#'   \item \code{Age}: Age range based on pubic symphysis and auricular surface
#'   \item \code{NOTE}: For most skeletons, site of origin location
#'   \item \code{Location}: Modern country of origin or 
#'     state (when United States)
#'   \item \code{LHUM}: Left humerus: 0 = present, 1 = absent
#'   \item \code{RHUM}: Right humerus: 0 = present, 1 = absent
#'   \item \code{LRAD}: Left radius: 0 = present, 1 = absent
#'   \item \code{RRAD}: Right radius: 0 = present, 1 = absent
#'   \item \code{LFEM}: Left femur: 0 = present, 1 = absent
#'   \item \code{RFEM}: Right femur: 0 = present, 1 = absent
#'   \item \code{LTIB}: Left tibia: 0 = present, 1 = absent
#'   \item \code{RTIB}: Right tibia: 0 = present, 1 = absent
#'   \item \code{OSCX}: Os coxae: 0 = present, 1 = absent
#'   \item \code{LHML}: Left humerus maximum length, mm
#'   \item \code{LHEB}: Left humerus epicondylar breadth, mm
#'   \item \code{LHHD}: Left humerus head diameter, mm
#'   \item \code{LHMLD}: Left humerus 50\% diaphyseal mediolateral 
#'     diameter, mm
#'   \item \code{LHAPD}: Left humerus 50\% Diaphyseal anteroposterior 
#'     diameter, mm
#'   \item \code{RHML}: Right humerus maximum length, mm
#'   \item \code{RHEB}: Right humerus epicondylar breadth, mm
#'   \item \code{RHHD}: Right humerus head diameter, mm
#'   \item \code{RHMLD}: Right humerus 50\% diaphyseal mediolateral 
#'     diameter, mm
#'   \item \code{RHAPD}: Right humerus 50\% Diaphyseal anteroposterior 
#'     diameter, mm
#'   \item \code{LRML}: Left radius maximum length, mm
#'   \item \code{LRMLD}: Left radius 50\% diaphyseal mediolateral diameter, mm
#'   \item \code{LRAPD}: Left radius 50\% diaphyseal anteroposterior 
#'     diameter, mm
#'   \item \code{RRML}: Right radius maximum length, mm
#'   \item \code{RRMLD}: Right radius 50\% diaphyseal mediolateral diameter, mm
#'   \item \code{RRAPD}: Right radius 50\% diaphyseal anteroposterior 
#'     diameter, mm
#'   \item \code{LFML}: Left femur maximum length, mm
#'   \item \code{LFBL}: Left femur femur bicondylar length, mm
#'   \item \code{LFEB}: Left femur epicondylar mediolateral breadth, mm
#'   \item \code{LFAB}: Left femur distal articular mediolateral breadth, mm
#'   \item \code{LFHD}: Left femur head anteroposterior diameter, mm
#'   \item \code{LFMLD}: Left femur 50\% Diaphyseal Mediolateral Diameter, mm
#'   \item \code{LFAPD}: Left femur 50\% diaphyseal anteroposterior diameter, mm
#'   \item \code{RFML}: Right femur maximum length, mm
#'   \item \code{RFBL}: Right femur bicondylar length, mm
#'   \item \code{RFEB}: Right femur epicondylar mediolateral breadth, mm
#'   \item \code{RFAB}: Right femur distal articular mediolateral breadth, mm
#'   \item \code{RFHD}: Right femur head anteroposterior diameter, mm
#'   \item \code{RFMLD}: Right femur 50\% Diaphyseal Mediolateral Diameter, mm
#'   \item \code{RFAPD}: Right femur 50\% diaphyseal anteroposterior 
#'     diameter, mm
#'   \item \code{LTML}: Left tibia maximum length, mm
#'   \item \code{LTPB}: left tibia plateau mediolateral (bicondylar) breadth, mm
#'   \item \code{LTMLD}: Left tibia 50\% diaphyseal mediolateral diameter, mm
#'   \item \code{LTAPD}: Left tibia 50\% diaphyseal anteroposterior diameter, mm
#'   \item \code{RTML}: Right tibia maximum length, mm
#'   \item \code{RTPB}: Right tibia plateau mediolateral 
#'     (bicondylar) breadth, mm
#'   \item \code{RTMLD}: Right tibia 50\% diaphyseal mediolateral diameter, mm
#'   \item \code{RTAPD}: Right tibia 50\% diaphyseal anteroposterior 
#'     diameter, mm
#'   \item \code{BIB}: Bi‐iliac breadth, mm
#'   \item \code{LIBL}: Left Maximum iliac blade length, mm
#'   \item \code{RIBL}: Right Maximum iliac blade length, mm
#'   \item \code{LAcH}: Left maximum acetabular height, mm
#'   \item \code{RAcH}: Right maximum acetabular height, mm
#'   \item \code{Brachial}
#'   \item \code{Crural}
#'   \item \code{IL.UL.LL}
#'   \item \code{IL.LL.UL}
#'   \item \code{CBR.FHD}
#'   \item \code{McH.FHD}
#'   \item \code{GRINE.FHD}
#'   \item \code{AVG.FHD}
#' }
#' @section Citation:
#' Auerbach BM, & Ruff CB. 2004. Human body mass estimation: a comparison 
#' of “morphometric” and “mechanical” methods. 
#' American Journal of Physical Anthropology 125:331-342.
#' 
#' Auerbach BM, & Ruff CB. 2006. Limb bone bilateral asymmetry: variability and 
#' commonality among modern humans. 
#' Journal of Human Evolution 50:203-218.
#' @source \url{http://web.utk.edu/~auerbach/GOLD.htm}
"goldman"