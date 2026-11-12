FROM python:3.12-slim

WORKDIR /app

COPY .github/scripts/frequency.py /app/frequency.py
COPY .github/scripts/update_readme.sh /app/update_readme.sh
COPY .github/scripts/entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh /app/update_readme.sh

ENTRYPOINT ["/app/entrypoint.sh"]