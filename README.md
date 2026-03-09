# devops-bootcamp-project
flowchart TD

Internet --> CloudflareDNS

CloudflareDNS --> WebDomain[web.yourdomain.com]
CloudflareDNS --> MonitoringDomain[monitoring.yourdomain.com]

MonitoringDomain --> CloudflareTunnel

CloudflareTunnel --> Grafana

Grafana --> Prometheus
Prometheus --> NodeExporter

WebDomain --> WebServer

subgraph AWS VPC
    WebServer[Web Server EC2\nDocker Web App :80]
    NodeExporter[Node Exporter :9100]

    MonitoringServer[Monitoring EC2]
    Grafana[Grafana Container :3000]
    Prometheus[Prometheus Container :9090]
end

Prometheus --> NodeExporter
