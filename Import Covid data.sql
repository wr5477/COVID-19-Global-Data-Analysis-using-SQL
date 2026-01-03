USE PortfolioProject;
GO

IF OBJECT_ID('dbo.CovidVaccinations_raw','U') IS NOT NULL DROP TABLE dbo.CovidVaccinations_raw;
GO

CREATE TABLE dbo.CovidVaccinations_raw (
  iso_code NVARCHAR(50) NULL,
  continent NVARCHAR(200) NULL,
  location NVARCHAR(200) NULL,
  [date] NVARCHAR(50) NULL,
  new_tests NVARCHAR(50) NULL,
  total_tests NVARCHAR(50) NULL,
  total_tests_per_thousand NVARCHAR(50) NULL,
  new_tests_per_thousand NVARCHAR(50) NULL,
  new_tests_smoothed NVARCHAR(50) NULL,
  new_tests_smoothed_per_thousand NVARCHAR(50) NULL,
  positive_rate NVARCHAR(50) NULL,
  tests_per_case NVARCHAR(50) NULL,
  tests_units NVARCHAR(200) NULL,
  total_vaccinations NVARCHAR(50) NULL,
  people_vaccinated NVARCHAR(50) NULL,
  people_fully_vaccinated NVARCHAR(50) NULL,
  new_vaccinations NVARCHAR(50) NULL,
  new_vaccinations_smoothed NVARCHAR(50) NULL,
  total_vaccinations_per_hundred NVARCHAR(50) NULL,
  people_vaccinated_per_hundred NVARCHAR(50) NULL,
  people_fully_vaccinated_per_hundred NVARCHAR(50) NULL,
  new_vaccinations_smoothed_per_million NVARCHAR(50) NULL,
  stringency_index NVARCHAR(50) NULL,
  population_density NVARCHAR(50) NULL,
  median_age NVARCHAR(50) NULL,
  aged_65_older NVARCHAR(50) NULL,
  aged_70_older NVARCHAR(50) NULL,
  gdp_per_capita NVARCHAR(50) NULL,
  extreme_poverty NVARCHAR(50) NULL,
  cardiovasc_death_rate NVARCHAR(50) NULL,
  diabetes_prevalence NVARCHAR(50) NULL,
  female_smokers NVARCHAR(50) NULL,
  male_smokers NVARCHAR(50) NULL,
  handwashing_facilities NVARCHAR(50) NULL,
  hospital_beds_per_thousand NVARCHAR(50) NULL,
  life_expectancy NVARCHAR(50) NULL,
  human_development_index NVARCHAR(50) NULL
);
GO

BULK INSERT dbo.CovidVaccinations_raw
FROM 'C:\Users\jerom\DS studying\Project1_sql data exploration\CovidVaccinations.csv'
WITH (
  FORMAT = 'CSV',
  FIRSTROW = 2,
  CODEPAGE = '65001',
  FIELDQUOTE = '"',
  ROWTERMINATOR = '0x0a',
  TABLOCK
);
GO

SELECT TOP 5 * FROM dbo.CovidVaccinations_raw;
SELECT COUNT(*) AS rows_loaded FROM dbo.CovidVaccinations_raw;

USE PortfolioProject;
GO

IF OBJECT_ID('dbo.CovidDeaths_raw','U') IS NOT NULL DROP TABLE dbo.CovidDeaths_raw;
GO

CREATE TABLE dbo.CovidDeaths_raw (
  iso_code NVARCHAR(50) NULL,
  continent NVARCHAR(200) NULL,
  location NVARCHAR(200) NULL,
  [date] NVARCHAR(50) NULL,
  population NVARCHAR(50) NULL,
  total_cases NVARCHAR(50) NULL,
  new_cases NVARCHAR(50) NULL,
  new_cases_smoothed NVARCHAR(50) NULL,
  total_deaths NVARCHAR(50) NULL,
  new_deaths NVARCHAR(50) NULL,
  new_deaths_smoothed NVARCHAR(50) NULL,
  total_cases_per_million NVARCHAR(50) NULL,
  new_cases_per_million NVARCHAR(50) NULL,
  new_cases_smoothed_per_million NVARCHAR(50) NULL,
  total_deaths_per_million NVARCHAR(50) NULL,
  new_deaths_per_million NVARCHAR(50) NULL,
  new_deaths_smoothed_per_million NVARCHAR(50) NULL,
  reproduction_rate NVARCHAR(50) NULL,
  icu_patients NVARCHAR(50) NULL,
  icu_patients_per_million NVARCHAR(50) NULL,
  hosp_patients NVARCHAR(50) NULL,
  hosp_patients_per_million NVARCHAR(50) NULL,
  weekly_icu_admissions NVARCHAR(50) NULL,
  weekly_icu_admissions_per_million NVARCHAR(50) NULL,
  weekly_hosp_admissions NVARCHAR(50) NULL,
  weekly_hosp_admissions_per_million NVARCHAR(50) NULL
);
GO

BULK INSERT dbo.CovidDeaths_raw
FROM 'C:\Users\jerom\DS studying\Project1_sql data exploration\CovidDeaths.csv'
WITH (
  FORMAT = 'CSV',
  FIRSTROW = 2,
  CODEPAGE = '65001',
  FIELDQUOTE = '"',
  ROWTERMINATOR = '0x0a',
  TABLOCK
);
GO

BULK INSERT dbo.CovidDeaths_raw
FROM 'C:\Users\jerom\DS studying\Project1_sql data exploration\CovidDeaths.csv'
WITH (
  FORMAT = 'CSV',
  FIRSTROW = 2,
  CODEPAGE = '65001',
  FIELDQUOTE = '"',
  ROWTERMINATOR = '0x0a',
  TABLOCK
);
GO

SELECT TOP 5 * FROM dbo.CovidDeaths_raw;
SELECT COUNT(*) AS deaths_rows FROM dbo.CovidDeaths_raw;
