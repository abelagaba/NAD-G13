# Vaccine Administration tracker
###### Academic purposes only
The Government of Uganda seeks to track administration of COVID-19 vaccines among the citizens. This follows a target of having at least 90% of the population vaccinated for most of the activities to
return to normal. The number of dozes which are received in the country are registered in the system.
After which, they are distributed amongst the 5 approved health centres based on the need. The needs
of the health centres is assessed from the total number of patients who visited the health centre in the
past one month if the health centre did not vaccinate. For example, if we are in November, the number
of people who visited the health centre in October is considered for that health centre. If there were
vaccinations in the past month, the needs assessment is based on the vaccination data. Health centres
that received many people get more doses sent to them and vice versa. Hence, equity in the vaccine
distribution. If more vaccines arrive when others are available, distribution takes consideration of
those that are already available in order to achieve equity.

After receiving the vaccines, the health centres administer the vaccines to people in need and enter
the details of each person in the system. These details include the NIN, name, and health centre, date
of administration, batch number and vaccine administered. The system in turn presents a printable
vaccination certificate for each individual, highlighting the next date of vaccination in case the vaccine
requires to be administered twice and based on the recommended period between the two shots in
case they are two. A copy of the certificate is saved for future access and for verification purposes.

At a given point in time, if one needs to go for vaccination, they can check in the system to see which
health facilities have vaccines and if one prefers a specific type, see which health centre has it. If
interested in a given centre, the person books a date, time and place of preference. Note that not all
people book in order to be eligible for vaccination. Based on the available vaccines at a given time and bookings,
the system can advise on the following
* Which centre will have the least queues
* Which centre will have or has the specific vaccine of interest

You are required to the do the following in order to actualize the above functions using JSP and java
servlets. The work should be delivered under the following modules
1) Health centre administration module, (package org.health.health) ( Performing registration
of health centres, Performing monthly needs assessment for the vaccines per health centre,
updating of health centre information and providing the necessary reports)
2) Vaccine inventory module – (Package org.health.vaccine) (Performing registration of
vaccines received, showing the vaccine inventory status, distributing them to health centres
and providing the necessary reports)
3) Vaccine administration module – (org.health.administration) (Performing the registration
of those that take the vaccines, how far to hit the vaccination target?, certificate access and
viewing and other necessary reports)
4) Vaccination Booking and advisory module (org.health.booking) – ( Performing booking of
vaccination time and place preference and advisories and the necessary reports)
5) Systems administration: (org.health.administration) – (performing registration and
authentication of users (two categories- administrators and patients), send email reminders topatients a day before their doze, send email when a new batch of vaccines arrive to the health
facilities asking them to pick the vaccines from the headquarters (email addresses of the health
centre administrators are stored in the web descriptor file)
