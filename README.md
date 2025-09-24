# Linux Desktop via Browser

<img width="800" src="screenshot.png" alt="Screenshot" />

This is a containerized Linux desktop (running [XFCE4](https://xfce.org)) accessible via a web browser (using [noVNC](https://novnc.com)).

Try using Docker:
```
docker run -p 3001:3001 ghcr.io/mcp-getgather/linux-desktop-live
```
or Podman:
```
podman run -p 3001:3001 ghcr.io/mcp-getgather/linux-desktop-live
```
Then open `localhost:3001` in your browser.


To build and run locally:
```
docker build -t linux-desktop .
docker run -p 3001:3001 linux-desktop
```