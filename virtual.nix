{ config, pkgs, ... }:
{
	


  virtualisation.libvirtd = {
  enable = true;
  qemu = {
    package = pkgs.qemu_kvm;
    runAsRoot = true;
    swtpm.enable = true;
    ovmf = {
      enable = true;
      packages = [(pkgs.OVMF.override {
        secureBoot = true;
        tpmSupport = true;
      }).fd];
    };
  };
};


environment.systemPackages = with pkgs; [
    libvirt
    qemu
    spice-vdagent
    virt-manager
    vmware-workstation
    bridge-utils
];
 
virtualisation.vmware.host.enable = true;
security.polkit.enable = true;
}
