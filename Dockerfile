FROM getsentry/sentry-cli:1.40.0
RUN apk add git
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
