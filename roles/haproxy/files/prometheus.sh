mkdir prometheus && cd $_


wget https://github.com/prometheus/prometheus/releases/download/v2.24.1/prometheus-2.24.1.linux-amd64.tar.gz


tar -xvf prometheus-2.24.1.linux-amd64.tar.gz

mv prometheus-2.24.1.linux-amd64 prometheus-files

useradd --no-create-home --shell /bin/false prometheus
mkdir /etc/prometheus
mkdir /var/lib/prometheus
chown prometheus:prometheus /etc/prometheus
chown prometheus:prometheus /var/lib/prometheus

cp prometheus-files/prometheus /usr/local/bin/
cp prometheus-files/promtool /usr/local/bin/
chown prometheus:prometheus /usr/local/bin/prometheus
chown prometheus:prometheus /usr/local/bin/promtool


cp -r prometheus-files/consoles /etc/prometheus
cp -r prometheus-files/console_libraries /etc/prometheus
chown -R prometheus:prometheus /etc/prometheus/consoles
chown -R prometheus:prometheus /etc/prometheus/console_libraries
