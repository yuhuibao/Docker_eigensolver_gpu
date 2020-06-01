From nvcr.io/hpc/pgi-compilers:ce

RUN apt update && apt install -y make && apt install cpio

WORKDIR /root
RUN wget http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/16533/l_mkl_2020.1.217.tgz && \
  tar xzvf l_mkl_2020.1.217.tgz && cd l_mkl_2020.1.217 && ./install.sh -s --accept_eula --install_dir /opt/intel
ENV MKLROOT /opt/intel/mkl
ENV LD_LIBRARY_PATH /opt/intel/mkl/lib/intel64:$LD_LIBRARY_PATH
