FROM hub.oepkgs.net/oerv-ci/openeuler:24.03-lts-sp1

RUN dnf makecache \
    && dnf install -y dnf-plugins-core \
    && yum-config-manager --add-repo https://build-repo.tarsier-infra.isrc.ac.cn/home:/ouuleilei:/branches:/openEuler:/25.03/standard_riscv64/ \ 
    && dnf makecache \
    && dnf install --nogpgcheck -y oemaker \
    && dnf clean all 
