FROM python:alpine
COPY . /scrapify-me
WORKDIR /scrapify-me
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "./reddit_scraper.py", "-c", "scrapify.cfg"]
