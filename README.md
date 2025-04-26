README.md




# Purpose: 

This analysis investigates the systemic injustices experienced by unaccompanied minors at the United States borders, with the aim of amplifying their experiences through data analysis. The findings are presented in two formats: a comprehensive analysis within this **README.md**, intended for readers with a background in data analysis, and a **Tableau dashboard** designed to engage a wider audience, including those less familiar with immigration issues or large-scale datasets. The majority of visualizations contained in the README.md are also reproduced in the dashboard to maintain consistency and support broader accessibility.

# Methodology

## Data Sources

This analysis utilizes a dataset provided by **The New York Times**, containing anonymized information on over **550,000 child migrants** spanning from **January 2015 to May 2023**. The dataset includes key variables such as:

- **Child’s gender**
- **Country of origin**
- **Date of entry** into the United States
- **Date of release** to a sponsor
- **Relationship to the sponsor**
- **ZIP code** of the child’s release destination

To enhance the depth of the analysis, data from the **U.S. Department of Health and Human Services (HHS)** was also incorporated. HHS regularly publishes immigration data related to unaccompanied minors, providing critical supplemental insights regarding trends in arrivals, custody durations, and sponsor releases.

## Data Preparation

Data cleaning procedures were conducted to ensure consistency and reliability across datasets. Incomplete records were removed, categorical variables were standardized, and duplicate entries were identified and excluded. All dates were converted to align with fiscal year conventions (October 1–September 30) used in federal reporting. Regional classifications were harmonized to support comparative analysis of geographic trends across sources.

## Analytical Approach

The analysis proceeded in two stages. First, descriptive statistics were calculated to summarize key demographic, geographic, and custodial characteristics, including gender distributions, country and regional origins, age cohorts, and average time in ORR custody. Temporal trends were examined across fiscal years to capture changes over time.

Second, data visualizations were developed to support interpretation of major findings. Stacked bar plots, tree maps, and line graphs were created to illustrate trends in arrivals, detention durations, and sponsor placements. Visualizations were generated using R and Tableau to ensure accessibility for both technical and non-technical audiences. Supplemental tables were also developed to highlight significant patterns by fiscal year and region.

## Limitations

Several limitations should be acknowledged. While the New York Times dataset provides extensive coverage, it is anonymized and may omit variables relevant for more detailed case-level analysis. Fiscal year 2023 data reflect only partial-year reporting, which may influence interpretation of year-over-year trends. Additionally, while this analysis identifies trends in detention and placement, it does not incorporate legal outcomes or longitudinal tracking post-release, which would be necessary for a full understanding of minors' longer-term experiences.


------------------
<!-- Reset alignment explicitly -->
<div align="left">

# Introduction

Unaccompanied minors arriving at the United States border represent a significant and complex aspect of contemporary migration patterns. This analysis examines demographic characteristics, custody durations, and sponsor placement outcomes for over **550,000** unaccompanied children recorded between **January 2015** and **May 2023**. Drawing on anonymized data provided by **The New York Times**, supplemented with publicly available data from the **U.S. Department of Health and Human Services (HHS)**, this study provides a structured overview of arrival trends, regional distributions, time spent in Office of Refugee Resettlement (ORR) custody, and subsequent release patterns. 

The analysis is organized into three sections: **Arrival**, which examines the demographics and regional origins of unaccompanied minors; **Detainment**, which explores custody durations within ORR facilities; and **Release to Sponsor**, which analyzes patterns of sponsor placement across the United States. Findings are presented through descriptive statistics and data visualizations to provide a clearer understanding of the evolving experiences of unaccompanied minors over the past decade.

## 1. Arrivals: Demographics Overview 

</div>

Between  January **FY2015** and May **FY2023**, approximately **550,000 unaccompanied children (UC)** were recorded arriving at the United States border.

<div align="center">

### Countries

</div>

<div align="center" style="border: 2px solid #ccc; padding: 10px; border-radius: 10px; display: inline-block;">
  <img width="325" alt="Arrivals" src="https://github.com/user-attachments/assets/7e645c30-3b2b-4144-a6a3-6f85ce634b92" />
 
<p align="center">
 
  Between January 2015 and May 2023, unaccompanied children arrived from a total of<br> **111 countries**
spanning across **8 regions** worldwide.
 </p>
 
</div>
<br><br>

<div align="center">

| ![Arrivals Per Year Plot](https://github.com/user-attachments/assets/9c801603-cc5a-42bc-8532-696e203b48cc) |
|-----------------------------------------------------------------------------------------------------------|
| **Figure 1**: Arrivals Per Year                                                                     |
The line graph above depicts the total number of entries of unaccompanied children (UC) by year in the United States.
<br>

**Number of arrivals and countries of origin by year**
<div align="center">
  <img width="830" alt="Screenshot 2025-01-20 at 9 09 25 PM" src="https://github.com/user-attachments/assets/6bd974d7-3451-4f75-8c3c-54a71e788900" />
</div>

Between **FY2015** and **FY2023**, the number of unaccompanied children (UC) arriving in the United States fluctuated significantly. Arrivals increased from **25,885** in **FY2015** to a peak of **125,041** in **FY2022**. It is important to note that **FY2023** data covers only part of the year, with arrivals recorded at **67,506** from **76 countries** by mid-year. The lowest number of arrivals occurred in **FY2020** (**14,440**), likely impacted by external factors such as the COVID-19 pandemic.




<br>

**Country of origin percentages**

<div align="center">
  <img width="800" alt="Screenshot 2025-01-20 at 8 11 43 PM" src="https://github.com/user-attachments/assets/9e951320-e295-41dd-acff-5aa3e2adec7d" />
</div>

<div align="center">
  <br>


Between **FY2012** and **FY2024**, Guatemala consistently accounted for the largest share of arrivals, peaking at **54% in FY2018** and remaining dominant with **42% in FY2023**. Honduras followed as the second-largest source, fluctuating between **17% and 32%** over the years. In contrast, El Salvador and Mexico experienced significant declines, with El Salvador dropping from **34% in FY2016** to **8% in FY2024** and Mexico falling from **34% in FY2014** to **8% in FY2023**. Meanwhile, arrivals from "all other countries" grew steadily, increasing from **3-5% in earlier years** to **19% in FY2024**, reflecting a growing diversity in the origins of unaccompanied minors.

**Key Takeaway**

Between **FY2015** and **FY2023**, the number of unaccompanied children (UC) arriving in the United States fluctuated significantly, rising from **25,885 in FY2015** to a peak of **125,041 in FY2022**. By mid-**FY2023**, **67,506 arrivals** from **76 countries** were recorded, though this data reflects only part of the year. The lowest arrivals occurred in **FY2020 (14,440)**, likely impacted by the COVID-19 pandemic.

Guatemala and Honduras dominate as primary sources of UC arrivals, with Guatemala consistently leading. Meanwhile, arrivals from **El Salvador** and **Mexico** have steadily declined, and the share of arrivals from "all other countries" has grown to **19% in FY2024**, reflecting increasing diversity and evolving migration patterns.

### Regions



</div>


<div align="center">

| ![arrivals_tree_map](https://github.com/user-attachments/assets/47725075-1a7c-48c4-8fdf-18fabe78947c) |
|-------------------------------------------------------------------------------------------------------|
| **Figure 2**: Arrivals Tree Map                                                                      |
This tree map displays the relative proportions of unaccompanied minor arrivals by region. Each rectangle represents a region, with the size of the rectangle corresponding to the number of arrivals. Larger rectangles indicate higher numbers, while smaller rectangles represent regions with fewer arrivals.


</div>
<br>

**Regional Distribution of Arrivals**

<div align="center">
  <img width="800" alt="region" src="https://github.com/user-attachments/assets/8ffec00c-480f-44d4-b664-107423a67e17" />
</div>



The data indicates that the vast majority of unaccompanied minors arriving in the United States originate from **Central America**, accounting for **511,404 arrivals**, significantly outnumbering all other regions. **North America** (primarily Mexico) follows with **15,874 arrivals**, and **South America** is next with **15,137 arrivals**. Other regions such as **Asia** (**5,814 arrivals**), the **Caribbean** (**3,507 arrivals**), **Europe** (**707 arrivals**), **Africa** (**470 arrivals**), and the **Middle East** (**321 arrivals**) contribute comparatively smaller numbers. This highlights the predominance of migration from **Central America** and, to a lesser extent, neighboring regions like **North and South America**.

**Key takeaway:**

The majority of unaccompanied minors originate from **Central America**, emphasizing the region's migration pressures and the need for targeted interventions. Contributions from **North America** and **South America** highlight the influence of geographic proximity on migration trends, while smaller numbers from regions like **Asia**, **Africa**, and the **Middle East** reflect broader global migration challenges. These trends underline the importance of regional cooperation and policies addressing both local and global drivers of migration.

<div align="center">

### Age

<div align="center">

| <img src="https://github.com/user-attachments/assets/7fb9f910-264f-4b51-acc4-0fff4f4c6ac2" alt="Age Range Stacked Bar" width="600"> |
|:---------------------------------------------------------------------------------------------------------:|
| **Figure 3**: Age Range Stacked Bar                                                                      |
This stacked bar chart displays the percentage distribution of unaccompanied minors by age group (**0-12**, **13-14**, **15-16**, and **17+**) for each fiscal year from **FY2015** to **mid FY2023**, with each bar representing the total 100% for that year divided into the respective age groups.
<br>

**Yearly age range by percentage**
<div align="center">
  <img width="831" alt="Age" src="https://github.com/user-attachments/assets/07f0194f-97ab-46af-8d22-ee6fe11ab53f" />
</div>


The age distribution of unaccompanied minors arriving in the United States has remained relatively consistent over the years. Minors aged **15-16** continue to represent the largest group, accounting for **31-40%** of arrivals, with a peak of **40% in FY2013**. The **17+** age group follows closely, comprising **30-38%** of arrivals across most years. Younger age groups, **0-12** and **13-14**, have historically made up smaller shares, with the **0-12** group gradually increasing from **11% in FY2012** to **24% in FY2024**, while the **13-14** group remains steady at **11-16%**. Recent data from **FY2024** suggests a small shift toward younger children, with the **15-16** and **17+** age groups seeing slight declines.

**Key Takeaway:**

While the overall age distribution of unaccompanied minors has been stable, there is a subtle shift toward younger children, particularly those aged **0-12**, whose share has steadily grown over the years. The continued dominance of the **15-16** and **17+** age groups highlights their importance in the overall demographic trends, but the increasing presence of younger children indicates evolving migration dynamics that may reflect changing circumstances influencing who undertakes these journeys.



### Gender 

<div align="center">

| <img src="https://github.com/user-attachments/assets/651549ce-07d2-4203-b227-bf1ce7f3be84" alt="Gender Bar Plot" width="600"> |
|:---------------------------------------------------------------------------------------------------------:|
| **Figure 4**: Gender Distribution Stacked Bar Plot                                                                             |
This stacked bar plot illustrates the annual percentage distribution of unaccompanied minors by gender from 2015 through mid-2023. Each bar represents 100 percent of arrivals for a given year, segmented into two categories: male and female. This format enables direct comparison of gender proportions across the observation period.
<br>

**Gender Distribution of Unaccompanied Minors by Fiscal Year (FY2012–FY2024)**

<div align="center">
  <img width="813" alt="Gender" src="https://github.com/user-attachments/assets/e44e0940-11ee-4378-ab1c-e3a17c6da3b8" />
</div>


The table presents the proportion of unaccompanied minors by gender for each fiscal year from 2012 through 2024. Males consistently represented the majority of arrivals across all years, although their proportion declined over time. In FY2012, males accounted for **77%** of arrivals, compared to **23%** for females. By FY2024, the proportion of male arrivals had decreased to **61%**, while the proportion of female arrivals increased to **38%**.

The most substantial shifts occurred between FY2012 and FY2014, when the proportion of males declined from **77%** to **66%**, and the proportion of females correspondingly rose from **23%** to **34%**. From FY2015 onward, the gender distribution remained relatively stable, with only gradual changes. Notably, between FY2022 and FY2024, the percentage of females increased from **36%** to **38%**, suggesting a slight upward trend in the share of female minors among recent arrivals.

**Key Takeaway:**

Between FY2012 and FY2024, the proportion of male unaccompanied minors declined from **77%** to **61%**, while the proportion of females rose from **23%** to **38%**, indicating a gradual shift toward greater gender balance.



---------------------------

<br><br>
<!-- Reset alignment explicitly -->
<div align="left">

## 2. Detained: Time in ORR Custody Prior to Release

</div>

| <img width="600" alt="Average Days in ORR Custody" src="https://github.com/user-attachments/assets/d8475dcf-22e5-4583-a9c6-225ae85c9f6b" /> |
|:------------------------------------------------------------------------------------------------------------------:|
| **Figure 5**: Average Days in ORR Custody                                                                          |
This bar chart displays the **average number of days unaccompanied minors spent in ORR (Office of Refugee Resettlement) custody** for each fiscal year. Each bar represents the yearly average duration of detention, allowing for easy comparison of custody times across fiscal years. The chart helps identify trends and changes in the average length of custody over time.
<br>
</div>

**Average number of days detained in ORR custody by year**
<div align="center">
<img width="721" alt="Days in ORR Custody" src="https://github.com/user-attachments/assets/3442db3e-abbf-49fa-9e44-92462d438d00" />
</div>

Between **2015** and **2020**, the average number of days detained increased from **38 days** to **69 days**, reflecting an **81.6% rise**. Notably, **2020** recorded the longest average detention time. Since then, the average number of days detained has declined steadily each year. By mid-**2023**, detention times have dropped to less than half of the **2020 average**, despite a significant increase in the number of arrivals.

**Average number of days detained in ORR custody by region 2015 through mid 2023**
<div align="center">
  <img width="868" alt="Days detained region" src="https://github.com/user-attachments/assets/c8750efd-b3e3-49ab-971e-a9fc381e0067" />
</div>

Regional differences also reveal important patterns. Minors from **Africa** experienced the longest average detention time at **74.8 days**, followed by **Asia** at **53.3 days**, while those from the **Caribbean** and **South America** had the shortest stays, at **22.6 days** and **24.5 days**, respectively. **Central America**, the primary region of origin, averaged **37.0 days**, while other regions such as **North America**, **Europe**, and the **Middle East** had averages closer to the median. These disparities may reflect differences in case complexity or regional policies, but it is important to consider the large differences in arrival numbers when interpreting these trends.

**Key takeaways**

The average time minors spent in ORR custody peaked at **69 days in 2020** but has steadily declined to less than half that figure by mid-2023, even as arrivals increased. Regional disparities show minors from **Africa** had the longest stays (**74.8 days**), while those from the **Caribbean** and **South America** had the shortest (**22.6 days** and **24.5 days**, respectively). **Central America**, the largest source of arrivals, averaged **37.0 days**, with other regions like **Asia**, **Europe**, and **North America** closer to the median. These trends highlight improvements in processing efficiency, though differences in detention times likely reflect case complexities, regional policies, and disparities in arrival numbers.


</div> <!-- Close the centered section -->

-----------------------
<!-- Reset alignment explicitly -->
<div align="left">

## 3. Release to Sponsor

<div align="center">

| <img width="900" alt="Released to Sponsor Each Year" src="https://github.com/user-attachments/assets/3225773d-865c-4743-8823-6197f482f535" /> |
|---------------------------------------------------------------------------------------------------------------|
| **Figure**: Number of Children Released to Sponsors by Year                                                  |

</div>
<br><br>

<div align="center">
  <strong>Children Released to Sponsors by Year</strong>
</div>


</div>
<div align="center">
  <img width="813" alt="Screenshot 2025-01-21 at 2 45 49 PM" src="https://github.com/user-attachments/assets/ecc1ceb9-80bf-4363-b48c-b6a1486059b2" />
</div>

The data on the number of unaccompanied children (UC) released to sponsors each year from 2015 to mid-2023 highlights notable trends and fluctuations. Releases peaked in 2021 with **144,937** children, coinciding with an increase in overall arrivals during that period. In contrast, 2020 recorded the lowest number of releases (**14,273**), likely impacted by the COVID-19 pandemic, which disrupted immigration processes and reduced border crossings. The decline in 2020 was followed by a sharp recovery in 2021 and slightly lower but still elevated releases in 2022 (**123,836**).

<br><br>

**Top 10 States by Number of Unaccompanied Minors Released to Sponsors**
<div align="center">
  <img width="813" alt="Top Ten Released to States" src="https://github.com/user-attachments/assets/9d4e9c16-41c3-4973-9325-a35420ec9e50" />
</div>

The data displays the number of unaccompanied children (UC) released to sponsors in the ten states with the highest release numbers. **Texas (TX)** recorded the largest number of releases (**71,816**), followed by **California (CA)** with **61,143** and **Florida (FL)** with **53,810**. Other states, such as **New York (NY)** (**42,339**) and **Maryland (MD)** (**29,029**), also saw significant release numbers. States like **Georgia (GA)** (**19,679**) and **Tennessee (TN)** (**17,828**) had comparatively fewer releases but still ranked among the top ten. These figures highlight the states most impacted by sponsor placements, with Texas and California alone accounting for a substantial portion of the total.


