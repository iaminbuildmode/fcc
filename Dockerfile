FROM python:3.14.10
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir uv
RUN uv sync --frozen
ENV PATH="/app/.venv/bin:$PATH"
ENV PORT=8083
EXPOSE 8083
CMD ["fcc-server"]
