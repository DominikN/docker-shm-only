# docker-shm-only

## 1st terminal

```
docker compose up
```

## 2nd terminal

```
export FASTRTPS_DEFAULT_PROFILES_FILE=./shm-only.xml
ros2 run demo_nodes_cpp listener
```