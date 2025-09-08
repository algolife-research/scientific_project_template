# Start from Debian Slim - Bookworm (12.1)
FROM debian:bookworm-slim

# Install system dependencies (Debian/apt equivalents)
RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        git-lfs \
        python3 \
        python3-pip \
        python3-venv \
        r-base \
        r-base-dev \
        libcurl4-openssl-dev \
        libxml2-dev \
        libssl-dev \
        libfontconfig1-dev \
        libharfbuzz-dev \
        libfribidi-dev \
        libfreetype6-dev \
        libpng-dev \
        libtiff5-dev \
        libjpeg-dev \
        curl \
        bash \
        build-essential \
        libstdc++6 \
        libffi-dev \
        ca-certificates \
        pandoc \
        unzip \
        texlive \
        texlive-xetex \
        texlive-luatex \
        cmake \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/*

# Install Quarto
RUN QUARTO_VERSION=1.7.34 && \
    curl -LO -k "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" && \
    tar -C /opt -xvzf "quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" && \
    ln -s "/opt/quarto-${QUARTO_VERSION}/bin/quarto" /usr/local/bin/quarto && \
    rm -rf "quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"

# Create a virtual environment to avoid system-managed Python (PEP 668) and install Python packages there
RUN python3 -m venv /opt/venv && \
    /opt/venv/bin/pip install --upgrade pip setuptools wheel && \
    /opt/venv/bin/pip install numpy pandas matplotlib jupyterlab && \
    # ensure venv binaries are on PATH for later image usage
    ln -s /opt/venv/bin/python /usr/local/bin/python3-venv || true && \
    ln -s /opt/venv/bin/pip /usr/local/bin/pip3-venv || true

# Install core R packages for scientific computing
RUN R -e "install.packages(c('tidyverse', 'ggplot2', 'dplyr', 'readr', 'tidyr', 'stringr', 'lubridate', 'knitr', 'rmarkdown', 'devtools', 'remotes'), repos='https://cloud.r-project.org/')"

ENV PATH="/opt/venv/bin:${PATH}"

# Set default shell
SHELL ["/bin/bash", "-c"]

# Default command
CMD ["bash"]
