# Custom Squid Proxy Deployment 🐙🔐

This project enables you to deploy multiple instances of Squid Proxy, each configured with basic authentication and custom port assignments, inside Docker containers. This README provides step-by-step instructions on how to build your Docker image, customize your proxy settings, and deploy multiple proxies.

## Prerequisites 📋

Before starting, ensure you have the following installed on your system:

- Docker
- Git (optional, for cloning the repository)

## Getting Started 🚀

Follow these instructions to get your custom Squid proxies up and running.

### Step 1: Clone the Repository

Clone this repository to your local machine (optional if you prefer downloading the repository as a ZIP file).

```bash
git clone https://github.com/pipinthedev/Squid_Proxy.git
cd Squid_Proxy
docker build -t my-squid-proxy .
chmod +x entry.sh
chmod +x deploy_proxies.sh
./deploy_proxies.sh
```


### Future Enhancements 🚀
**Request Rotation: In the works is a feature to rotate requests among the deployed proxies, ensuring even load distribution and minimizing the risk of rate-limiting by target servers.
    Stability and Resource Optimization: Continuous improvements are planned for making the proxy instances more stable while consuming fewer resources, perfect for long-term deployment on minimal hardware.**


### Contributing 🤝
**Got ideas on how to make this project even better? Contributions are welcome! Whether it's feature suggestions, bug reports, or code contributions, feel free to open an issue or send a pull request.**

### License 📄
**This project is released under the MIT License. See the LICENSE file for details.**

