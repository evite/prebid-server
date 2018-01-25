FROM alpine
MAINTAINER Brian O'Kelley <bokelley@appnexus.com>
ADD prebid-server prebid-server
COPY static static/
COPY stored_requests stored_requests
COPY stored_requests/data stored_requests/data
EXPOSE 8080
EXPOSE 6060
ENTRYPOINT ["/prebid-server"]
CMD ["-v", "1", "-logtostderr"]
