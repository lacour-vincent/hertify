# Hertify

A simple Garmin Connect IQ Application to compute the paces according to the VMA. The calculus of the VMA is based on the VO2max value provided by the watch.

## Requirements

- [Connect IQ 7.2.1 SDK](https://developer.garmin.com/connect-iq/sdk/)
- [Monkey C vscode-extension](https://marketplace.visualstudio.com/items?itemName=garmin.monkey-c)

## Build

```bash
Ctrl + Shift + P - Monkey C - Verify installation
Ctrl + F5 - Build and Launch Simulator
```

## Release

```bash
Ctrl + Shift + P - Monkey C - Build for Device
Copy program.prg to the watch Garmin/Apps
```

## Formula

```bash
VMA(km/h) = VO2max / 3.5

pace(km/h) = (60 / VMA(km/h))

pace(min/km) = E(pace((km/h))) + (pace(km/h) - E(pace((km/h)))) * (60 / 100)
```
