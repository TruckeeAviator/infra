resource "proxmox_vm_qemu" "resource-name" {
    count	= 3
    name        = "kube-${count.index}"
    target_node = "pve5"
    clone	= "Alma-9.2-Template"
    full_clone  = false
    agent	= 1

    memory	= 768
    cores	= 3
    sockets     = 1
    scsihw	= "virtio-scsi-pci"

    network {
	bridge  = "vmbr0"
        model   = "virtio"
        tag     = 250
    }
}
