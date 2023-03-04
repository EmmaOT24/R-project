# R-project
Visualizing anophele species in Africa
Most common species of malaria per country since 2005
My hope is to become a research scientist one day and to find cures to tropical diseases that affect mostly african countries. The biggest burden to productivity and health in most African countries is malaria. 
I got my hands on a dataset, available on the harvard website. It is the "single geo-coded continental inventory of anophelines from 1898 to 2016. It basically gives a lot of useful information regarding the type of species by location and country, which will be a huge resource for disease control and drug development in the future.

An interactive map is present on the CDC website, that shows the global distribution of the dominant or potentially important malaria vectors. It was taken from a journal published in 2004.

The hope of this project is to update that map, by specifically focusing on Africa using the Harvard Data. Secondly map out the dominant species since 2004 and compare. 

If there are changes, what fuels them ? the CDC mention a growing insecticide resistance. This calls for novel methods in solving the malaria problem. Some ideas are already out there:  Genetically modified anopheles that will lead to the extinction of wild type anopheles, New Generations of Antibiotics to which mosquitoes will not be resistant to and a third option which is creating vaccines. 


Let's get a look a this dataset

#Let's load this dataset
# Let's get a look of the first 6 values to see what we are working with
#Let's get rid of the Full name column, LAT, Long, LatLong SOurce,  Adults/ Larvae, Samlping Methods, SPecies Identification, Other Sib-species names, Other anopheline species and source title
#Focusing on the years, I want to look at the Years 2005-2016
# Next we will be looking at 5 species An gambiae_complex,An gambiae ss,  SS M Form (An colluzzi or Mopti forms), SS S Form (savanah or Bamako forms) and An arabiensis    

Look at the species with the most yes and collate that per country.
Make  a bar chart for each country
 Discussion
