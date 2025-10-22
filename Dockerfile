FROM python:3.13-slim

RUN apt update && apt install -y \
    curl \
    unzip \
    git \
    libpq-dev && \
    apt clean

RUN curl -L https://github.com/duckdb/duckdb/releases/download/v1.3.2/duckdb_cli-linux-amd64.zip -o duckdb.zip && \
    unzip duckdb.zip && \
    mv duckdb /usr/local/bin/duckdb && \
    chmod +x /usr/local/bin/duckdb && \
    rm duckdb.zip

# dbt-coreとdbt-duckdbをインストール
RUN pip install --upgrade pip && \
    pip install dbt-core dbt-duckdb

WORKDIR /dbt-tutorial

COPY . /dbt-tutorial