FROM alpine

# Install OpenSSH server
RUN apk update \
    && apk add --no-cache openssh-server \
    && mkdir -p /var/run/sshd \
    && ssh-keygen -A

# Add a user and a password
RUN adduser -D labuser && echo "labuser:labpassword" | chpasswd

# Expose SSH port
EXPOSE 22

# Start SSH service on container startup
CMD ["/usr/sbin/sshd", "-D"]
