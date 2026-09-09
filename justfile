default:
  @just --list

export SOPS_AGE_KEY_FILE := "./key.txt"

decrypt:
  sops -d -i --input-type yaml --output-type yaml kubeconfig
  sops -d -i --input-type yaml --output-type yaml talosconfig

encrypt:
  sops -e -i --input-type yaml --output-type yaml kubeconfig
  sops -e -i --input-type yaml --output-type yaml talosconfig
