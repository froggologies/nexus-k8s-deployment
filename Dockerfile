# Use Nexus 3 image version 3.61.0 to match with the plugin version
FROM sonatype/nexus3:3.61.0

ARG PLUGIN_VERSION=0.61.0
ARG BUNDLE_NAME=nexus-blobstore-google-cloud-${PLUGIN_VERSION}
ARG KAR_URL=https://repo1.maven.org/maven2/org/sonatype/nexus/plugins/nexus-blobstore-google-cloud/${PLUGIN_VERSION}/${BUNDLE_NAME}.kar

USER root

# Install the Google Cloud Blob Store plugin
RUN curl -L "${KAR_URL}" -o /opt/sonatype/nexus/deploy/${BUNDLE_NAME}.kar && \
    chmod 644 /opt/sonatype/nexus/deploy/${BUNDLE_NAME}.kar && \
    chown nexus:nexus /opt/sonatype/nexus/deploy/${BUNDLE_NAME}.kar

USER nexus
