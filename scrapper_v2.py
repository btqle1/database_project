#! /usr/bin/env python3

import re
import time
from bs4 import BeautifulSoup
import requests


# Search for and return a specified number of links from each sector i.e. medical, automotive, IT, etc.
def get_links(url):
    soup = BeautifulSoup(url.text, 'html.parser')
    job_titles = {}
    for job_card in soup.find_all('h2', {'class': "title"}):
        title = job_card.find('a')['title']
        link = 'https://www.indeed.com/' + job_card.find('a')['href']

        if len(job_titles) < 10:
            job_titles[title] = link

    return job_titles


# Handle all the related scrapping for each individual job.
def scrape_job_info(links, sector):
    print("#############################################")
    print("CURRENT SECTOR == {}".format(sector))
    print("#############################################")

    # Iterate through each of the individual job listing links to get the relevant info from the pages.
    for link in links.values():
        job_Page = requests.get(link)
        page_soup = BeautifulSoup(job_Page.text, 'html.parser')

        # Get the title and the company name/
        job_title = page_soup.find('h3', class_='icl-u-xs-mb--xs icl-u-xs-mt--none jobsearch-JobInfoHeader-title')
        company_name = page_soup.find('div', class_='icl-u-lg-mr--sm icl-u-xs-mr--xs')

        try:
            print('Job Title: {}\nCompany Title: {}\n\n'.format(job_title.text, company_name.text))
        except:
            pass
        # Search only in the section of the page where the job details are.
        # Attempt to format the text in a more natural way.
        for job_text in page_soup.find_all('div', {'class': "jobsearch-jobDescriptionText"}):
            # Search for all the text relating to the job.
            for txt in job_text.find_all(text=True, recursive=True):
                job = re.sub('\n+', '\n', txt).strip()
                if ':' in txt:
                    print("\n" + txt)
                else:
                    print(job)
            print('___________________________________________________________________________________')


# Scrape IT job postings.
IT = requests.get('https://www.indeed.com/jobs?q=IT&l=New+Orleans%2C+LA&radius=50&sort=date')
IT_titles = get_links(IT)
scrape_job_info(IT_titles, sector='IT')
time.sleep(1)

# Scrape automotive job postings.
auto = requests.get('https://www.indeed.com/jobs?q=automotive&l=New+Orleans%2C+LA&sort=date')
automotive_titles = get_links(auto)
scrape_job_info(automotive_titles, sector='AUTOMOTIVE')
time.sleep(1)

# Scrape medical job postings.
medical = requests.get('https://www.indeed.com/jobs?q=medical&l=New+Orleans%2C+LA')
medical_titles = get_links(medical)
scrape_job_info(medical_titles, sector='MEDICAL')
time.sleep(1)

# Scrape Psychology jobs.
psych = requests.get('https://www.indeed.com/jobs?q=Psychology&l=New+Orleans%2C+LA&radius=50&sort=date')
psych_titles = get_links(psych)
scrape_job_info(psych_titles, sector='PSYCHOLOGY')
time.sleep(1)

# Scrape MArketing jobs.
marketing = requests.get('https://www.indeed.com/jobs?q=MARKETING&l=New+Orleans%2C+LA&radius=50&sort=date')
marketing_titles = get_links(marketing)
scrape_job_info(marketing_titles, sector='MARKETING')
time.sleep(1)