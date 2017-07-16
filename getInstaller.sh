VERSION=2.17.06.0               
RELEASE=qa
FTP_ADDR=ftp:ftp@10.186.18.25    
UDP_DIR=actiontech-udp-${VERSION}
COMP_DIR=${UDP_DIR}
  
#clean up
rm -rf ${UDP_DIR}
mkdir ${UDP_DIR}
mkdir ${COMP_DIR}
  
#wget packages
wget --directory-prefix=${COMP_DIR} ftp://${FTP_ADDR}/actiontech-umc/rel/${VERSION}/umc-${VERSION}-rel.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-ucore/qa/${VERSION}/ucore-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-uagent/qa/${VERSION}/uagent-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-udeploy/qa/${VERSION}/udeploy-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-ustats/qa/${VERSION}/ustats-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-umon/qa/${VERSION}/umon-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-urman/qa/${VERSION}/urman-mgr-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-urman/qa/${VERSION}/urman-agent-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-uguard/qa/${VERSION}/uguard-mgr-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-uguard/qa/${VERSION}/uguard-agent-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-ulogstash/qa/${VERSION}/ulogstash-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-uelasticsearch/qa/5.0.1/uelasticsearch-5.0.1-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-uproxy/qa/${VERSION}/uproxy-${VERSION}-rel.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-ushard/qa/${VERSION}/ushard-community-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/actiontech-uterm/qa/${VERSION}/uterm-${VERSION}-${RELEASE}.x86_64.rpm
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/mysql-tarball/mysql-5.6.26-linux-glibc2.5-x86_64.tar.gz
wget --directory-prefix=${COMP_DIR}/components ftp://${FTP_ADDR}/mysql-tarball/mysql-5.7.13-linux-glibc2.5-x86_64.tar.gz
  
tar zcf actiontech-udp-${VERSION}.tar.gz actiontech-udp-${VERSION}/
