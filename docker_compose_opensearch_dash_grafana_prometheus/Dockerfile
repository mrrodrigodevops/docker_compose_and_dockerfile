FROM opensearchproject/opensearch:2.7.0
#RUN /usr/share/opensearch/bin/opensearch-plugin install --batch <pluginId>
#RUN /usr/share/opensearch/bin/opensearch-plugin remove opensearch-security
RUN /usr/share/opensearch/bin/opensearch-plugin install --batch https://github.com/aiven/prometheus-exporter-plugin-for-opensearch/releases/download/2.7.0.0/prometheus-exporter-2.7.0.0.zip
