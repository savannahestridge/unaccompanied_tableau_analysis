
# Purpose: 

This analysis examines the journeys of unaccompanied minors arriving at the United States border, aiming to shed light on the scale, complexity, and consequences of contemporary migration patterns. Through documenting trends in arrivals, detention durations, and sponsor placements, the analysis provides critical insights for understanding a population navigating the immigration system without guaranteed legal representation. The findings are presented in two formats: a comprehensive analysis within this README.md, intended for readers with a background in data analysis, and a Tableau dashboard designed to engage a broader audience, including those less familiar with immigration issues or large-scale datasets.


#### Data Sources

This analysis draws on two datasets. First is data published by The New York Times[^1], containing anonymized information on over 550,000 unnacompanied minor migrants arriving in the United States between January FY2015 and May FY2023. This dataset includes the following:

- **Child’s gender**
- **Country of origin**
- **Date of entry** into the United States
- **Date of release** to a sponsor
- **Relationship to the sponsor**
- **ZIP code** of the child’s release destination

The second data set was mad available through Office of Refugee Resettlement (ORR)[^2], an agency within the Department of Health and Human Services. HHS regularly publishes immigration data pertaining to unaccompanied minors[^2], providing data on unaccompanied minors arrivals, custody durations, and sponsor releases between FY2012 and FY2024. This dataset includes (but is not limited to) the following variables: 

- **Child's age**
- **Country of origin**
- **Languages spoken** 
- **Average length of care** 
- **States minors are released to**

Note: These datasets include only unaccompanied minors who were detained by ORR and subsequently released to sponsors within the United States; they do not capture minors who were turned away at the border.

## Analytical Approach

The analysis was conducted in two stages. First, descriptive statistics were calculated to summarize key demographic, geographic, and custodial characteristics, including (but not limited to) gender distribution, country and regional origin, age cohorts, and average time in ORR custody. The analysis is organized by fiscal year (October through September).

Second, data visualizations were developed to support interpretation of major findings. Stacked bar plots, tree maps, and line graphs were created to illustrate trends in arrivals, detention durations, and sponsor placements. Visualizations were generated using R and Tableau to ensure accessibility for both technical and non-technical audiences.

## Limitations

Several limitations warrant consideration. Although the New York Times dataset provides extensive coverage, it is anonymized and may lack variables necessary for detailed case-level analysis. Fiscal year 2023 data represent only partial-year reporting, potentially affecting the interpretation of year-over-year trends. The dataset is further limited to unaccompanied minors detained by ORR and subsequently released to sponsors, excluding minors turned away at the border. 

------------------
<!-- Reset alignment explicitly -->
<div align="left">

## Introduction

Unaccompanied minors arriving at the United States border represent a significant and complex aspect of contemporary migration patterns. An unaccompanied minor is defined as _"a child who has no lawful immigration status in the United States; has not attained 18 years of age; and who does not have a parent or legal guardian in the United States, or whose parent or legal guardian is unavailable to provide care and physical custody"_[^3]. The Unaccompanied Alien Children (UAC) program is administered by the Office of Refugee Resettlement (ORR)[^4] within the Administration for Children and Families (ACF), a division of the U.S. Department of Health and Human Services (HHS)[^5].

This analysis examines demographic characteristics, custody durations, and sponsor placement outcomes for over 550,000 unaccompanied children recorded between January 2015 and May 2023. Drawing on anonymized data provided by The New York Times, supplemented with publicly available data from HHS, this study provides a structured overview of arrival trends, regional distributions, time spent in ORR custody, and subsequent release patterns. 

The analysis is organized into three sections: **Arrivals**, which examines the demographics and regional origins of unaccompanied minors; **Detainment**, which explores custody durations within ORR facilities; and **Release to Sponsor**, which analyzes patterns of sponsor placement across the United States. Findings are presented through descriptive statistics and data visualizations to provide a clearer understanding of the evolving experiences of unaccompanied minors over the past decade.

### 1. Arrivals

</div>

Between  January **FY2015** and May **FY2023**, approximately **550,000 unaccompanied minors** were recorded arriving at the United States border.

<div align="center">

### Countries


<br>

**Table 1: Total number of arrivals by country and region**
<div align="center" style="border: 2px solid #ccc; padding: 10px; border-radius: 10px; display: inline-block;">
  <img width="325" alt="Arrivals" src="https://github.com/user-attachments/assets/7e645c30-3b2b-4144-a6a3-6f85ce634b92" />
 
<p align="center">
 
  Between January 2015 and May 2023, unaccompanied minors arrived from a total of<br> **111 countries**
spanning across **8 regions** worldwide.
 </p>
 
</div>
<br><br>

<div align="center" style="max-width:800px; margin:auto;">

| <img src="https://github.com/user-attachments/assets/9c801603-cc5a-42bc-8532-696e203b48cc" alt="Arrivals Per Year Plot" style="max-width:100%; height:auto;" /> |
|:-----------------------------------------------------------------------------------------------------------:|
| **Figure 1**: Arrivals Per Year  
The line graph above depicts annual entries of unaccompanied minors in the United States from January 2015 to May 2023.
<br>

<br>

**Table 2: Number of arrivals and countries of origin by year**
<div align="center">
  <img width="600" alt="Screenshot 2025-01-20 at 9 09 25 PM" src="https://github.com/user-attachments/assets/6bd974d7-3451-4f75-8c3c-54a71e788900" />
</div>

According to the NYT, between January of FY2015 and May of FY2023 the number of unaccompanied minors arriving in the United States fluctuated considerably. Arrivals increased from **25,885** in FY2015 to a peak of **125,041** in FY2022 (a **383%** increase). FY2023 data, which covers only part of the fiscal year, recorded **67,506** arrivals from **76 countries** by mid-year. The lowest number of arrivals occurred in FY2020 (**14,440**), likely influenced by external factors such as the COVID-19 pandemic. [^1]

<br>

**Table 3: Country of origin percentages**

<div align="center">
  <img width="800" alt="Screenshot 2025-01-20 at 8 11 43 PM" src="https://github.com/user-attachments/assets/9e951320-e295-41dd-acff-5aa3e2adec7d" />
</div>

<div align="center">
  <br>


Between FY2012 and FY2024, Guatemala consistently accounted for the largest share of arrivals, peaking at **54%** in FY2018 and remaining dominant at **42%** in FY2023. Honduras followed as the second-largest source, fluctuating between **17%** and **32%** over the period. In contrast, arrivals from El Salvador and Mexico declined substantially, with El Salvador falling from **34%** in FY2016 to **8%** in FY2024, and Mexico from **34%** in FY2014 to **8%** in FY2023. Meanwhile, the share of arrivals from "all other countries" grew steadily, rising from **3–5%** in earlier years to **19%** in FY2024, reflecting increasing diversity in the origins of unaccompanied minors.[^2]


**Key Takeaway:**

Guatemala and Honduras were the primary countries of origin for unaccompanied minor arrivals, with **Guatemala consistently leading**. Although the number of arrivals fluctuated over the study period, the number of countries of origin increased each year, with the exception of a slight decline in FY2020. By May 2023, unaccompanied minors had arrived from **76 countries**. This rise in the number of countries of origin may reflect broader shifts in global migration patterns and emerging regional conflicts.


### Regions

</div>


<div align="center" style="max-width:550px; margin:auto;">

| <img width="600" height="350" alt="Arrivals Tree Map" src="https://github.com/user-attachments/assets/47725075-1a7c-48c4-8fdf-18fabe78947c" /> |
|:-----------------------------------------------------------------------------------------------------------:|
| **Figure 2**: Arrivals Tree Map  
This tree map displays the relative proportions of unaccompanied minor arrivals by region. Each rectangle represents a region, with the size of the rectangle corresponding to the number of arrivals. Larger rectangles indicate higher numbers, while smaller rectangles represent regions with fewer arrivals.
<br>

</div>
<br>

**Table 4: Regional Distribution of Arrivals**

<div align="center">
  <img width="800" alt="region" src="https://github.com/user-attachments/assets/8ffec00c-480f-44d4-b664-107423a67e17" />
</div>



The vast majority of unaccompanied minors arriving in the United States originate from **Central America**, accounting for **511,404** arrivals, significantly outnumbering all other regions. **North America** (primarily Mexico) follows with **15,874 arrivals**, and **South America** is next with **15,137** arrivals. Other regions such as **Asia** (**5,814** arrivals), the **Caribbean** (**3,507** arrivals), **Europe** (**707** arrivals), **Africa** (**470** arrivals), and the **Middle East** (**321** arrivals) contribute comparatively smaller numbers. This highlights the predominance of migration from **Central America** and, to a lesser extent, neighboring regions like **North and South America**.[^1] 

**Key takeaway:**

The majority of unaccompanied minors originate from **Central America**, emphasizing the region's migration pressures and the need for targeted interventions. Contributions from **North America** and **South America** highlight the influence of geographic proximity on migration trends, while smaller numbers from regions like **Asia**, **Africa**, and the **Middle East** reflect broader global migration challenges. 

<div align="center">

### Age

<div align="center" style="max-width:500px; margin:auto;">

| <img width="500" height="350" alt="Age Range Stacked Bar" src="https://github.com/user-attachments/assets/7fb9f910-264f-4b51-acc4-0fff4f4c6ac2" /> |
|:---------------------------------------------------------------------------------------------------------:|
| **Figure 3**: Age Range Stacked Bar  
This stacked bar chart displays the percentage distribution of unaccompanied minors by age group (**0-12**, **13-14**, **15-16**, and **17+**) for each fiscal year from **FY2015** to **mid FY2023**, with each bar representing the total 100% for that year divided into the respective age groups.
<br>


**Table 5: Yearly age range by percentage**
<div align="center">
  <img width="831" alt="Age" src="https://github.com/user-attachments/assets/07f0194f-97ab-46af-8d22-ee6fe11ab53f" />
</div>


The age distribution of unaccompanied minors arriving in the United States has remained relatively consistent over the years. Minors aged **15-16** continue to represent the largest group, accounting for **31-40%** of arrivals, with a peak of **40%** in FY2013. The **17+** age group follows closely, comprising **30-38%** of arrivals across most years. Younger age groups, **0-12** and **13-14**, have historically made up smaller shares, with the **0-12** group gradually increasing from **11%** in FY2012 to **24%** in FY2024, while the **13-14** group remains steady at **11-16%**. Recent data from **FY2024** suggests a small shift toward younger children, with the **15-16** and **17+** age groups seeing slight declines.[^2]

**Key Takeaway:**

Although minors aged 15–16 and 17 and older continue to represent the majority of unaccompanied arrivals, recent data indicate a gradual increase in the proportion of younger children aged 0–12. This shift suggests a modest change in the age profile of unaccompanied minors over time, with potential implications for service needs and case processing.




### Gender 

<div align="center" style="max-width:500px; margin:auto;">

| <img width="500" height="350" alt="Gender Bar Plot" src="https://github.com/user-attachments/assets/651549ce-07d2-4203-b227-bf1ce7f3be84" /> |
|:---------------------------------------------------------------------------------------------------------:|
| **Figure 4**: Gender Distribution Stacked Bar Plot  
This stacked bar plot illustrates the annual percentage distribution of unaccompanied minors by gender from 2015 through mid-2023. Each bar represents 100 percent of arrivals for a given year, segmented into two categories: male and female.
<br>

**Table 5: Gender Distribution of Unaccompanied Minors by Fiscal Year (FY2012–FY2024)**

<div align="center">
  <img width="813" alt="Gender" src="https://github.com/user-attachments/assets/e44e0940-11ee-4378-ab1c-e3a17c6da3b8" />
</div>


Table 5 presents the proportion of unaccompanied minors by gender for each fiscal year from FY2012 through FY2024. Males consistently represented the majority of arrivals across all years, although their proportion declined over time. In FY2012, males accounted for **77%** of arrivals, compared to **23%** for females. By FY2024, the proportion of male arrivals had decreased to **61%**, while the proportion of female arrivals increased to **38%**.[^2]

The most substantial shifts occurred between FY2012 and FY2014, when the proportion of males declined from **77%** to **66%**, and the proportion of females correspondingly rose from **23%** to **34%**. From FY2015 onward, the gender distribution remained relatively stable, with only gradual changes. Notably, between FY2022 and FY2024, the percentage of females increased from **36%** to **38%**, suggesting a slight upward trend in the share of female minors among recent arrivals.[^2]

**Key Takeaway:**

Between FY2012 and FY2024, the gender gap among unaccompanied minors narrowed, reflecting a gradual but sustained increase in the proportion of female arrivals.

---------------------------

<br><br>
<!-- Reset alignment explicitly -->
<div align="left">

## 2. Detained: Time in ORR Custody Prior to Release

<br>

<div align="center" style="max-width:500px; margin:auto;">

| <img width="550" height="300" alt="Average Days in ORR Custody" src="https://github.com/user-attachments/assets/d8475dcf-22e5-4583-a9c6-225ae85c9f6b" /> |
|:------------------------------------------------------------------------------------------------------------------:|
| **Figure 5**: Average Days in ORR Custody  
This bar chart displays the average number of days unaccompanied minors spent in ORR custody for each fiscal year. Each bar represents the yearly average duration of detention, allowing for easy comparison of custody

<br>

**Table 6: Average number of days detained in ORR custody by year**
<div align="center">
<img width="721" alt="Days in ORR Custody" src="https://github.com/user-attachments/assets/3442db3e-abbf-49fa-9e44-92462d438d00" />
</div>

Between 2015 and 2020, the average number of days detained increased from **38 days** to **69 days**, reflecting an **81.6%** rise. Notably, 2020 recorded the longest average detention time. Since then, the average number of days detained has declined steadily each year. By mid-2023, detention times have dropped to less than half of the 2020 average, despite a significant increase in the number of arrivals[^1].

**Table 7: Average number of days detained in ORR custody by region 2015 through mid 2023**
<div align="center">
  <img width="868" alt="Days detained region" src="https://github.com/user-attachments/assets/c8750efd-b3e3-49ab-971e-a9fc381e0067" />
</div>

<br>

Regional differences also reveal important patterns. Minors from **Africa** experienced the longest average detention time at **74.8** days, followed by Asia at **53.3** days, while those from the Caribbean and South America had the shortest stays, at **22.6** days and **24.5** days, respectively. Central America, the primary region of origin, averaged **37.0 days**, while other regions such as **North America**, **Europe**, and the **Middle East** had averages closer to the median. These disparities may reflect differences in case complexity or regional policies, but it is important to consider the large differences in arrival numbers when interpreting these trends[^1].

**Key takeaways:**

Despite increases in arrivals and countries of origin, the average time minors spent in ORR custody declined. Regional disparities persist, with region of origin strongly associated with detention duration.


</div> <!-- Close the centered section -->

-----------------------
<!-- Reset alignment explicitly -->
<div align="left">

## 3. Release to Sponsor

<div align="center" style="max-width:400px; margin:auto;">

| <img width="500" height="350" alt="Released to Sponsor Each Year" src="https://github.com/user-attachments/assets/3225773d-865c-4743-8823-6197f482f535" /> |
|:---------------------------------------------------------------------------------------------------------------------------------:|
| **Figure 6**: Number of Children Released to Sponsors by Year  
This bar chart displays the **number of unaccompanied children released to sponsors** for each fiscal year from **FY2015 to FY2023**. Each bar represents the total number of children released in a given year, allowing for year-over-year comparison.
<br>
<br>

<div align="center">
  <strong>Table 8: Children Released to Sponsors by Year</strong>
</div>


</div>
<div align="center">
  <img width="813" alt="Screenshot 2025-01-21 at 2 45 49 PM" src="https://github.com/user-attachments/assets/ecc1ceb9-80bf-4363-b48c-b6a1486059b2" />
</div>

<div align="center">
  
The data on the number of unaccompanied children (UC) released to sponsors each year from 2015 to mid-2023 highlights notable trends and fluctuations. Releases peaked in 2021 with **144,937** children, coinciding with an increase in overall arrivals during that period. In contrast, 2020 recorded the lowest number of releases (**14,273**), likely impacted by the COVID-19 pandemic, which disrupted immigration processes and reduced border crossings. The decline in 2020 was followed by a sharp recovery in 2021 and slightly lower but still elevated releases in 2022 (**123,836**)[^1].

<br>

<div align="center">
  
**Table 9: Top 10 States by Number of Unaccompanied Minors Released to Sponsors**
<div align="center">
  <img width="813" alt="Top Ten Released to States" src="https://github.com/user-attachments/assets/9d4e9c16-41c3-4973-9325-a35420ec9e50" />
</div>

<br>


The above data displays the number of UC released to sponsors in the ten states with the highest release numbers. **Texas (TX)** recorded the largest number of releases (**71,816**), followed by **California (CA)** with **61,143** and **Florida (FL)** with **53,810**. Other states, such as **New York (NY)** (**42,339**) and **Maryland (MD)** (**29,029**), also saw significant release numbers. States like **Georgia (GA)** (**19,679**) and **Tennessee (TN)** (**17,828**) had comparatively fewer releases but still ranked among the top ten. These figures highlight the states most impacted by sponsor placements, with Texas and California alone accounting for a substantial portion of the total[^2]. </p>  

**Key Takeaway:**

The number of unaccompanied minors released to sponsors closely mirrored annual arrival patterns. Texas, California, and Florida recorded the highest numbers of sponsor placements, with the top ten states collectively accounting for more than two-thirds of all releases.

<!-- CLOSE any previous centering -->
<!-- Reset alignment explicitly -->

<div align="left">

### Conclusion

This analysis documents trends in arrivals, detention durations, and sponsor placements among unaccompanied minors arriving at the United States border between FY2012 and mid-FY2024. The findings show a steady diversification of countries of origin, a decline in average time spent in ORR custody despite increasing arrivals, and persistent regional disparities in detention durations. Changes in age and gender distributions further suggest evolving migration dynamics among unaccompanied minors. Given that these minors are not guaranteed a right to legal representation, understanding these trends is critical for informing future policy, case management practices, and protection strategies.


  

### References

[^1]: The New York Times. (2023). *HHS Child Migrant Data Repository*. GitHub. [https://github.com/nytimes/hhs-child-migrant-data](https://github.com/nytimes/hhs-child-migrant-data)

[^2]: Office of Refugee Resettlement. (2023). *Unaccompanied Children: Facts and Data*. U.S. Department of Health and Human Services, Administration for Children and Families. [https://www.acf.hhs.gov/orr/about/ucs/facts-and-data](https://www.acf.hhs.gov/orr/about/ucs/facts-and-data)

[^3]: Office of Refugee Resettlement. (2023). *Unaccompanied Children Program Fact Sheet*. U.S. Department of Health and Human Services, Administration for Children and Families. [https://www.acf.hhs.gov/orr/fact-sheet/programs/uc/fact-sheet](https://www.acf.hhs.gov/orr/fact-sheet/programs/uc/fact-sheet)

[^4]: Office of Refugee Resettlement. [https://acf.gov/orr](https://acf.gov/orr)

[^5]: U.S. Department of Health and Human Services. [https://www.hhs.gov/](https://www.hhs.gov/)
