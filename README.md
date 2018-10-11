# Demo clusters of Vault and Consul
Standup local, single-instances of Vault and Consul. Vault will use Consul as the storage backend.

## Prerequisites  
  - Docker
  - make


## Usage
```
$ git clone https://github.com/elliottnichols/consul-vault-demo.git
$ cd consul-vault-demo
$ export VAULT_ADDR=http://localhost:8200
$ make
$ vault operator unseal

```
## Open UIs:
Vault: http://127.0.0.1:8200/ui
Consul: http://127.0.0.1:8500/ui/