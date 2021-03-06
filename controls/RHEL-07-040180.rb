# encoding: utf-8
# copyright: 2016, you
# license: All rights reserved
# date: 2016-01-14
# description: This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.
# impacts
title 'RHEL-07-040180 - The operating system must implement cryptography to protect the integrity of Lightweight Directory Access Protocol (LDAP) authentication communications.'
control 'RHEL-07-040180' do
  impact 0.5
  title 'The operating system must implement cryptography to protect the integrity of Lightweight Directory Access Protocol (LDAP) authentication communications.'
  desc 'Without cryptographic integrity protections, information can be altered by unauthorized users without detection.  Cryptographic mechanisms used for protecting the integrity of information include, for example, signed hash functions using asymmetric cryptography enabling distribution of the public key to verify the hash information while maintaining the confidentiality of the secret key used to generate the hash.'
  tag 'stig', 'RHEL-07-040180'
  tag severity: 'medium'
  tag checkid: 'C-RHEL-07-040180_chk'
  tag fixid: 'F-RHEL-07-040180_fix'
  tag version: 'RHEL-07-040180'
  tag ruleid: 'RHEL-07-040180_rule'
  tag fixtext: 'Configure the operating system to implement cryptography to protect the integrity of LDAP authentication sessions.

Set the USELDAPAUTH=yes in /etc/sysconfig/authconfig.

Set ssl start_tls in /etc/pam_ldap.conf.'
  tag checktext: 'Verify the operating system implements cryptography to protect the integrity of remote LDAP authentication sessions.

To determine if LDAP is being used for authentication, use the following command:

# grep -i useldapauth /etc/sysconfig/authconfig
USELDAPAUTH=yes

If USELDAPAUTH=yes, then LDAP is being used. To see if LDAP is configured to use TLS, use the following command:

# grep -i ssl /etc/pam_ldap.conf
ssl start_tls

If the “ssl” option is not “start_tls”, this is a finding.'

# START_DESCRIBE RHEL-07-040180
  describe file('') do
    it { should match // }
  end
# STOP_DESCRIBE RHEL-07-040180

end

