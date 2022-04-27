Problem:
Non-pharmaceutical interventions (NPIs) quarantines and travel restrictions. NPIs are applied on a wider scale that is countries and even districts. This project applies machine learning to implement NPIs (such as isolation) at the finest level of granularity: individuals. We will use ML to predict, for each individual, the risk of having been infected with Covid-19. These predictions, in turn, can help to implement personalized NPIs by requiring only certain people to stay at home, for instance, instead of imposing a country-wide school closure. In short, design more targeted NPI interventions instead of doing the prior.

Data:
Using data from an [application](https://covid-19-sounds.org/en/) & reference this [paper](https://www.nature.com/articles/s41598-021-95042-2) for more information.

The features are obtained from the Fourier transform of an audio recording of an individual. The predictor map outputs an estimate or guess for the Covid-19 infection status of individuals. The output is “+1” if the individual is likely to have a Covid-19 infection, otherwise the predictor map outputs "-1".


Solution:
Try automatically diagnose COVID-19 by analyzing audio recordings of coughs.