************************************ MOTHS & STREETLIGHTING DATA PACKAGE *********************************

								KATE E PLUMMER (KEP), VERSION V01 2016-06-29


This data package accompanies:
	Plummer, K.E., Hale, J.D., O'Callaghan, M.J., Sadler, J.P. & Siriwardena, G.M. 2016.
	Investigating the impact of street lighting changes on garden moth communities. 
	Journal of Urban Ecology. DOI 10.1093/jue/juw004

It contains a copy of the two derived datasets used to complete the analyses presented in the paper.

When using the data, please cite the original publication and the Zenodo data package.


************************************************ CONTENTS ************************************************

Details of the files included in the data package

	1. 	ReadMe.txt	
			This file. 
			Includes a description of the variables included in each dataset.
			
	2. 	Plummer_JUrbanEcol_2016_BACI_dataset.csv 
			Before-after-control-impact(BACI) survey data.
			This was used to investigate the impacts of street lamp replacement on macro-moths. 
			Includes macro-moth community data (abundance, richness, diversity) summarised per garden 
				in two years, together with data for proximity to street lamp replacement.
			Please refer to the paper for details about the neighbourhood street lamp replacement regimes.
			Please refer to the paper for an explanantion of how the data were derived.
			
	3. 	Plummer_JUrbanEcol_2016_light_composition_dataset.csv 
			Street lighting composition survey data.
			This was used to investigate the influence of street lighting composition on garden moths.
			Includes garden moth community data (abundance, richness, diversity; including macro- and 
				micro-moths) summarised per trapping event, together with associated street lighting 
				and habitat characteristics for each garden.
			Please refer to the paper for an explanantion of how the data were derived.
			

************************************ BACI DATASET VARIABLE DESCRIPTION ***********************************

Variable names and descriptions for Plummer_JUrbanEcol_2016_BACI_dataset.csv
  
	VARIABLE			DESCRIPTION
	garden				Garden identity
	site				Neighbourhood identity
	year				Year (2011 or 2013)
	lamp_change			Proximity to street lamp replacement (NEAR = <50m; FAR = >50m)
	ta					Macro-moth total abundance 
	sr					Macro-moth species richness
	fa					Macro-moth Fisher's alpha diversity index
	geometridae			Geometridae abundance
	noctuidae			Noctuidae abundance
	macro_other			Other macro-moth abundance
	
NOTE: Missing values are labelled "NA"

	
************************ STREET LIGHTING COMPOSITION DATASET VARIABLE DESCRIPTION ************************

Variable names and descriptions for Plummer_JUrbanEcol_2016_light_composition_dataset.csv 

	VARIABLE			DESCRIPTION
	garden				Garden identity
	site				Neighbourhood identity
	lamp_dist			Proximity to nearest street lamp (m)
	nlamps				Total lamp density within 50m radius
	highuv				High-UV emitting lamp density within 50m radius
	pcveg				Percentage cover of vegetation within 50m radius
	pcroad				Percentage cover of roads within 50m radius
	date				Moth trapping date (dd/mm/yyyy)
	ta					Moth total abundance (macro- and micro-moths)
	sr					Moth species richness (macro- and micro-moths)
	fa					Moth Fisher's alpha diversity index (macro- and micro-moths)
	gracillariidae		Gracillariidae abundance
	yponomeutidae		Yponomeutidae abundance
	oecophoridae		Oecophoridae abundance
	blastobasidae		Blastobasidae abundance
	tortricidae			Tortricidae abundance
	crambidae			Crambidae abundance
	micro_other			Other micro-moth abundance
	geometridae			Geometridae abundance
	noctuidae			Noctuidae abundance
	macro_other			Other macro-moth abundance

NOTE: Missing values are labelled "NA"
	

******************************************* CONTACT INFORMATION ******************************************

Please get in touch if you are considering using this data and would like further information.

Dr Kate E Plummer
British Trust for Ornithology 
The Nunnery 
Thetford
Norfolk 
IP24 2PU
UK

Phone: 	+44 (0)1842 750050    
E-mail: kate.plummer@bto.org


*************************************************** END **************************************************