# Tusome Data for Decision-Making Study

This repository contains the data and analysis scripts for a study on the use of data for decision-making by members of the government education system in Kenya.

The study focuses specifically on the generation and consumption of data within the context of the _Tangerine_ ecosystem: the _Tangerine:Tutor_ Android application for tablets, and the [_Tangerine Dashboard_](http://tools.tusome.tangerinecentral.org/_csv/report/group-national_tablet_program/00b0a09a-2a9f-baca-2acb-c6264d4247cb,c835fc38-de99-d064-59d3-e772ccefcf7d/2018/9/ep8yqMKT.html#tutor) visualization and reporting platform online.  Interviewees include County- and Subcounty-level directors of the Ministry of Education (MOE) and Teachers Service Commission (TSC), Quality Assurance and Standards Officers (QASOs), Curriculum Support Officers (CSOs), and grade 1-3 teachers.

## Sample Design

The sample for the study was designed as follows:

1. **Subcounties** were selected at random from within each of Tusome's nine **regions**.
1. **Zones** were selected at random from within each subcounty.
1. **Schools** were selected at random from within each zone.

### Sampling Process

**Subcounty Level**
1. First, a list of all subcounties in Tusome was assembled.
1. Subcounties were grouped by _Tusome Region_ (e.g. Nairobi, Eldoret, Machakos, etc.)
1. The number of staff available in each region were tallied. As each staff member could be deployed to a separate subcounty for data collection, the number of staff in a region drove the number of subcounties sampled _per day_ from each region. The number of staff ranged from 3 (Isiolo region) to 6 (Kisumu region). We will call the number of staff available per region _n_.
1. Each subcounty was assigned a random number  using the `=RAND()` function within Microsoft Excel.
1. The random number was 'frozen' (copy+paste value) and then each subcounty was assigned a rank based on the value of the frozen number (`=RANK()`).
1. The top _n_ subcounties in a region were sampled for each day available for data collection (_d_), giving a total sample size of `d * n` subcounties for each Tusome region.
1. With two weeks of class remaining in the school term, and the first day of the first week dedicated to training staff on the study tools, `d = 4` in the first week and `d = 5` in the second week.

**Zone Level**
1. A list of all zones in Tusome was assembled.
1. Zones were checked for eligibility: had the subcounty within which the zone resides been sampled? If so, the zone was eligible for inclusion.
1. As with subcounties, eligible zones were assigned a random number. The number was frozen, and zones were issued a rank based on the value of the frozen number.
1. The top-ranked zone in each subcounty was selected.

**School Level**
1. A list of all schools in Tusome was assembled.
1. Schools were checked for eligibility: had the zone within which the school resides been sampled? If so, the school was eligible for inclusion.
1. It is generally reasonable for staff to visit two schools in one day. Therefore for each zone, two random numbers were generated.
1. The random numbers were frozen and multiplied by the number of schools in that zone. The resultant numbers were rounded upward to the nearest integer. (_x_, _y_)
1. The schools were sorted alphabetically within each zone. The _x_th and _y_th schools were selected.

### Replacements

As is generally the case, some schools needed to be replaced. Replacements occurred in the following circumstances:

1. **Case**: The schools indicated by the randomly-generated numbers _x_ and _y_ were the same. **Solution**: The random number _y_ was repeatedly regenerated until it was not the same as _x_. **Number of Schools Affected**: 4
1. **Case**: While the zone is generally safe, the specific school indicated was inaccessible due to security reasons. **Solution**: The random number _y_ was regenerated and a replacement school selected. **Number of Schools Affected**: 15
1. **Case**: The entire zone was declared unsafe to visit due to security reasons. **Solution**: The next-ranked zone was selected. The random numbers _x_ and _y_ from the previous zone's school sample were retained, but now mapped to different schools. Those schools were selected. **Number of Zones Affected**: 9 
1. **Case**: The sampled zone had been included in the piloting process, so data had already been collected while the instruments were being refined. **Solution**: The next-ranked zone was selected. The random numbers _x_ and _y_ from the previous zone's school sample were retained, but now mapped to different schools. Those schools were selected. **Number of Zones Affected**: 4
1. **Case**: The entire subcounty was declared unsafe to visit due to security reasons. **Solution**: The next-ranked subcounty (`(d * n) + 1`) was selected, a zone was sampled as above, and schools were sampled as above. If no other subcounties remained within the region because all had been sampled, the subcounty was struck and not replaced. **Number of Zones Affected**: 4
1. **Case**: In certain areas, multiple ethnic groups with difficult relationships to one another exist within the same zone. In those instances, it is dangerous to be seen as "favoring" one ethnic group over the other. Sampling a school to be included in data collection was considered an example of "favoring" a school. **Solution**: A list of schools belonging to each ethnic group was created. The random numbers _x_ and _y_ were repeatedly regenerated until one school from each ethnic group was sampled. **Number of Schools Affected**: 1
1. **Case**: In a small handful of zones, the TSC had not appointed any CSOs. As a result, no tablets had been provided to the TSC personnel in charge of those zones ("SNE CSOs" - in charge of special needs education) so no Tangerine-facilitated instructional coaching had been conducted under Tusome. **Solution**: The next-ranked zone was selected. The random numbers _x_ and _y_ from the previous zone's sample were retained, but now mapped to different schools. Those schools were selected. **Number of Zones Affected**: 2






