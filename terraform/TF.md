# Terraform 

## Docker 

### List resources

```shell
terraform state list
```

<details>

**<summary>Output</summary>**

```text
docker_container.app_container
```

</details>

### Show the resource

```shell
terraform state show docker_container.app_container
```

<details>

**<summary>Output</summary>**

```terraform
# docker_container.app_container:
resource "docker_container" "app_container" {
    attach                                      = false
    bridge                                      = null
    command                                     = [
        "app.py",
    ]
    container_read_refresh_timeout_milliseconds = 15000
    cpu_set                                     = null
    cpu_shares                                  = 0
    domainname                                  = null
    entrypoint                                  = [
        "python",
    ]
    env                                         = []
    hostname                                    = "e7400005ff39"
    id                                          = "e7400005ff39cda9875145e10933700f14d86b5da5f79717bd9b3404d3ae2543"
    image                                       = "sha256:7caed087779720215f64b4f6fbc635f6939e146bc61e26ef6554608baa99c6f4"
    init                                        = false
    ipc_mode                                    = "private"
    log_driver                                  = "json-file"
    logs                                        = false
    max_retry_count                             = 0
    memory                                      = 0
    memory_swap                                 = 0
    must_run                                    = true
    name                                        = "moscow-time-app"
    network_data                                = [
        {
            gateway                   = "172.17.0.1"
            global_ipv6_address       = null
            global_ipv6_prefix_length = 0
            ip_address                = "172.17.0.2"
            ip_prefix_length          = 16
            ipv6_gateway              = null
            mac_address               = "02:42:ac:11:00:02"
            network_name              = "bridge"
        },
    ]
    network_mode                                = "default"
    pid_mode                                    = null
    privileged                                  = false
    publish_all_ports                           = false
    read_only                                   = false
    remove_volumes                              = true
    restart                                     = "no"
    rm                                          = false
    runtime                                     = "runc"
    security_opts                               = []
    shm_size                                    = 64
    start                                       = true
    stdin_open                                  = false
    stop_signal                                 = null
    stop_timeout                                = 0
    tty                                         = false
    user                                        = "appuser"
    userns_mode                                 = null
    wait                                        = false
    wait_timeout                                = 60
    working_dir                                 = "/app"

    ports {
        external = 8000
        internal = 5000
        ip       = "0.0.0.0"
        protocol = "tcp"
    }
}
```

</details>


### Applying changes

```shell
terraform apply
```

<details>

**<summary>Output</summary>**

```text
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # docker_container.app_container will be created
  + resource "docker_container" "app_container" {
      + attach                                      = false
      + bridge                                      = (known after apply)
      + command                                     = (known after apply)
      + container_logs                              = (known after apply)
      + container_read_refresh_timeout_milliseconds = 15000
      + entrypoint                                  = (known after apply)
      + env                                         = (known after apply)
      + exit_code                                   = (known after apply)
      + hostname                                    = (known after apply)
      + id                                          = (known after apply)
      + image                                       = "innoenjoyer/moscow-time-app:latest"
      + init                                        = (known after apply)
      + ipc_mode                                    = (known after apply)
      + log_driver                                  = (known after apply)
      + logs                                        = false
      + must_run                                    = true
      + name                                        = "moscow-time-app"
      + network_data                                = (known after apply)
      + read_only                                   = false
      + remove_volumes                              = true
      + restart                                     = "no"
      + rm                                          = false
      + runtime                                     = (known after apply)
      + security_opts                               = (known after apply)
      + shm_size                                    = (known after apply)
      + start                                       = true
      + stdin_open                                  = false
      + stop_signal                                 = (known after apply)
      + stop_timeout                                = (known after apply)
      + tty                                         = false
      + wait                                        = false
      + wait_timeout                                = 60

      + healthcheck (known after apply)

      + labels (known after apply)

      + ports {
          + external = 8000
          + internal = 5000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + app_container_id    = (known after apply)
  + app_container_ports = [
      + {
          + external = 8000
          + internal = 5000
          + ip       = "0.0.0.0"
          + protocol = "tcp"
        },
    ]

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

docker_container.app_container: Creating...
docker_container.app_container: Creation complete after 1s [id=e7400005ff39cda9875145e10933700f14d86b5da5f79717bd9b3404d3ae2543]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

app_container_id = "e7400005ff39cda9875145e10933700f14d86b5da5f79717bd9b3404d3ae2543"
app_container_ports = tolist([
  {
    "external" = 8000
    "internal" = 5000
    "ip" = "0.0.0.0"
    "protocol" = "tcp"
  },
])
```

</details>


### Read output variables

```shell
terraform output
```

<details>

**<summary>Output</summary>**

```text
app_container_id = "e7400005ff39cda9875145e10933700f14d86b5da5f79717bd9b3404d3ae2543"
app_container_ports = tolist([
  {
    "external" = 8000
    "internal" = 5000
    "ip" = "0.0.0.0"
    "protocol" = "tcp"
  },
])
```

</details>
