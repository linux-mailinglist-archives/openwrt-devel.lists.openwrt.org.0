Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE493ABBE
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 22:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xNQ+45ZmOZUbhuGGM6OSqGYRUHdh65FLAV7G3yXaiwc=; b=TSIfHFP7tqTjMyrCNG9mc28FV
	C0ZIdqWT9msIDJdUC/CNPi2Mz3WF7Giscdx1e/3fG17U/avRT8qfB83oDMc9BuiqdimTYKlqYTJAy
	wNfT1RfYNiM7AEWWBysUEu8tJ3+Vc6/+fRQzank9f93Qm0v9dNM1LV0EhmZ7B/2kpRNppmWPLqPNA
	2HZAD7mfThUP9IlHgPKGLTGKJiD+QwwDH2rGH4BLj/z69yx0YV8PTWbqykk3MrMSXdHyrqPI9XoKF
	ECfo5KRILhrchnDRnAby1R8ahIApgZMHPxCC2emdQR1iO1be4jo4JT8IJjU01gH18OqNnJdPyT395
	CFTbrpBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha49Y-0006Qj-5I; Sun, 09 Jun 2019 20:10:56 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha49N-0006Q7-2u
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 20:10:48 +0000
Received: from [192.168.180.1] (port=58234 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1ha49F-0006O9-2I; Sun, 09 Jun 2019 22:10:37 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 6249828032D;
 Sun,  9 Jun 2019 22:10:37 +0200 (CEST)
To: Hans Dedecker <dedeckeh@gmail.com>
References: <20190608114809.9480-1-avalentin@marcant.net>
 <20190608114809.9480-3-avalentin@marcant.net>
 <CAJLcKsEPFZWBcuTiVUL_mt1Qk6JXrg-q=jj7bvRDXESKrLVptw@mail.gmail.com>
From: Andre Valentin <avalentin@marcant.net>
Openpgp: id=C88B57BF85C414CC6289E3A9BAECFA393828FA4F; url=hkp://subkeys.pgp.net
Message-ID: <5b8b67a0-a790-98e0-e511-125b23051ba6@marcant.net>
Date: Sun, 9 Jun 2019 22:10:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJLcKsEPFZWBcuTiVUL_mt1Qk6JXrg-q=jj7bvRDXESKrLVptw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_131045_430911_C1C12CB9 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/3] network/config: add xfrm
 interface support scripts
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1310950515211718116=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============1310950515211718116==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms000404020409090906020506"

This is a cryptographically signed message in MIME format.

--------------ms000404020409090906020506
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

Hi Hans!

Am 09.06.19 um 21:27 schrieb Hans Dedecker:
> On Sat, Jun 8, 2019 at 1:48 PM Andr=C3=A9 Valentin <avalentin@marcant.n=
et> wrote:
>>
>> This package adds scripts for xfrm interfaces support.
>> Example configuration via /etc/config/network:
>>
>> config interface 'xfrm0'
>>         option proto 'xfrm'
>>         option mtu '1300'
>>         option zone 'VPN'
>>         option tunlink 'wan'
>>         option ifid 30
>>
>> config interface 'xfrm0_static'
>>         option proto 'static'
>>         option ifname '@xfrm0'
>>         option ip6addr 'fe80::1/64'
>>         option ipaddr '10.0.0.1/30'
>>
>> Now set in strongswan IPsec policy:
>>         if_id_in =3D 30
>>         if_id_out =3D 30
>> ---
>>  package/network/config/xfrm/Makefile      | 38 ++++++++++++++++++
>>  package/network/config/xfrm/files/xfrm.sh | 65 ++++++++++++++++++++++=
+++++++++
>>  2 files changed, 103 insertions(+)
>>  create mode 100644 package/network/config/xfrm/Makefile
>>  create mode 100755 package/network/config/xfrm/files/xfrm.sh
>>
>> diff --git a/package/network/config/xfrm/Makefile b/package/network/co=
nfig/xfrm/Makefile
>> new file mode 100644
>> index 0000000000..efc90cf318
>> --- /dev/null
>> +++ b/package/network/config/xfrm/Makefile
>> @@ -0,0 +1,38 @@
>> +
>> +include $(TOPDIR)/rules.mk
>> +
>> +PKG_NAME:=3Dxfrm
>> +PKG_VERSION:=3D1
>> +PKG_RELEASE:=3D1
>> +PKG_LICENSE:=3DGPL-2.0
>> +
>> +include $(INCLUDE_DIR)/package.mk
>> +
>> +define Package/xfrm/Default
>> +  SECTION:=3Dnet
>> +  CATEGORY:=3DNetwork
>> +  MAINTAINER:=3DAndre Valentin <avalentin@marcant.net>
>> +endef
>> +
>> +define Package/xfrm
>> +$(call Package/xfrm/Default)
>> +  TITLE:=3DXFRM IPsec Tunnel Interface config support
>> +  DEPENDS:=3D+kmod-xfrm-interface
>> +endef
>> +
>> +define Package/xfrm/description
>> + XFRM IPsec Tunnel Interface config support (IPv4 and IPv6) in /etc/c=
onfig/network.
>> +endef
>> +
>> +define Build/Compile
>> +endef
>> +
>> +define Build/Configure
>> +endef
>> +
>> +define Package/xfrm/install
>> +       $(INSTALL_DIR) $(1)/lib/netifd/proto
>> +       $(INSTALL_BIN) ./files/xfrm.sh $(1)/lib/netifd/proto/xfrm.sh
>> +endef
>> +
>> +$(eval $(call BuildPackage,xfrm))
>> diff --git a/package/network/config/xfrm/files/xfrm.sh b/package/netwo=
rk/config/xfrm/files/xfrm.sh
>> new file mode 100755
>> index 0000000000..df28d38613
>> --- /dev/null
>> +++ b/package/network/config/xfrm/files/xfrm.sh
>> @@ -0,0 +1,65 @@
>> +#!/bin/sh
>> +
>> +[ -n "$INCLUDE_ONLY" ] || {
>> +       . /lib/functions.sh
>> +       . /lib/functions/network.sh
>> +       . ../netifd-proto.sh
>> +       init_proto "$@"
>> +}
>> +
>> +proto_xfrm_setup() {
>> +       local cfg=3D"$1"
>> +       local mode=3D"xfrm"
>> +
>> +       local tunlink ifid mtu zone
>> +       json_get_vars tunlink ifid mtu zone
>> +
>> +       proto_init_update "$cfg" 1
>> +
>> +       proto_add_tunnel
>> +       json_add_string mode "$mode"
>> +       json_add_int mtu "${mtu:-1280}"
>> +
>> +       [ -z "$tunlink" ] && {
>> +               proto_notify_error "$cfg" NO_TUNLINK
>> +               proto_block_restart "$cfg"
>> +               exit
>> +       }
>> +       json_add_string link "$tunlink"
>> +
>> +       [ -z "$ifid" ] && {
>> +               proto_notify_error "$cfg" NO_IFID
>> +               proto_block_restart "$cfg"
>> +               exit
>> +       }
>> +       json_add_object 'data'
>> +       [ -n "$ifid" ] && json_add_int ifid "$ifid"
>> +       json_close_object
>> +
>> +       proto_close_tunnel
>> +
>> +       proto_add_data
>> +       [ -n "$zone" ] && json_add_string zone "$zone"
>> +       proto_close_data
>> +
>> +       proto_send_update "$cfg"
>> +}
>> +
>> +proto_xfrm_teardown() {
>> +       local cfg=3D"$1"
>> +}
>> +
>> +proto_xfrm_init_config() {
>> +       no_device=3D1
>> +       available=3D1
>> +
>> +       proto_config_add_int "mtu"
>> +       proto_config_add_string "tunlink"
>> +       proto_config_add_string "zone"
>> +       proto_config_add_int "ifid"
>> +}
>> +
>> +
>> +[ -n "$INCLUDE_ONLY" ] || {
>> +       [ -f /lib/modules/$(uname -r)/xfrm_interface.ko -o -d /sys/mod=
ule/xfrm_interface ] && add_protocol xfrm
> I missed the check for /sys/module/xfrm_interface in my initial
> review; is there any specific reason for this additional check beside
> the xfrm_interface.ko check ?

Of course. I often test or run these images inside containers. In that ca=
se, all modules are preloaded on the host.
The check would fail cause of different kernel versions and not allow to =
use xfrm interfaces.

Kind regards,

Andr=C3=A9


--------------ms000404020409090906020506
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
C6IwggVTMIIEO6ADAgECAhB+YQhLRWb/6UCa4sHjgGB7MA0GCSqGSIb3DQEBCwUAMIGCMQsw
CQYDVQQGEwJJVDEPMA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNVBAoM
GkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBB
dXRoZW50aWNhdGlvbiBDQSBHMTAeFw0xOTAzMjkxMDA5NTlaFw0yMDAzMjkwOTA5NTlaMCAx
HjAcBgNVBAMMFWF2YWxlbnRpbkBtYXJjYW50Lm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEP
ADCCAQoCggEBAJcCHX/1+jgsbWlaJ6wFap2kdliLBq0HeTyjDmKThw3IEaRnADoNzNuEkrcg
1gesoOXULL92Qjde+35aSVOrlOEaB7bKZLIloA2cq5YbVlGHW7AbrhjwhwJwP/DLAvhUZ9K3
jt3L5KLkeeA3fyX6SyUnuk2blXU7zT+WZdNrXBE3vGhGqWXmfVvaeKiWBEGU/yh9NoQyBj7r
ufRlRwVcLB1U/g0UxfUGCM2f3SOJ8SQfKskq/cLt+GVx3wJKfRn6zKqlGXgkrzgBAwinhkNB
YapdF49zDVvawv7mgFcUoGtNqqzFFHC4eYBM5XO7GcuBf+yO1XYXHSKcvCX/4sxEGBsCAwEA
AaOCAiQwggIgMAwGA1UdEwEB/wQCMAAwHwYDVR0jBBgwFoAUfmD8+GynPT3XrpOheQKPs3Qp
O/UwSwYIKwYBBQUHAQEEPzA9MDsGCCsGAQUFBzAChi9odHRwOi8vY2FjZXJ0LmFjdGFsaXMu
aXQvY2VydHMvYWN0YWxpcy1hdXRjbGlnMTAgBgNVHREEGTAXgRVhdmFsZW50aW5AbWFyY2Fu
dC5uZXQwRwYDVR0gBEAwPjA8BgYrgR8BGAEwMjAwBggrBgEFBQcCARYkaHR0cHM6Ly93d3cu
YWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
BDCB6AYDVR0fBIHgMIHdMIGboIGYoIGVhoGSbGRhcDovL2xkYXAwNS5hY3RhbGlzLml0L2Nu
JTNkQWN0YWxpcyUyMENsaWVudCUyMEF1dGhlbnRpY2F0aW9uJTIwQ0ElMjBHMSxvJTNkQWN0
YWxpcyUyMFMucC5BLi8wMzM1ODUyMDk2NyxjJTNkSVQ/Y2VydGlmaWNhdGVSZXZvY2F0aW9u
TGlzdDtiaW5hcnkwPaA7oDmGN2h0dHA6Ly9jcmwwNS5hY3RhbGlzLml0L1JlcG9zaXRvcnkv
QVVUSENMLUcxL2dldExhc3RDUkwwHQYDVR0OBBYEFMojrOmK2PN+bO+vAvSFH10XzXmtMA4G
A1UdDwEB/wQEAwIFoDANBgkqhkiG9w0BAQsFAAOCAQEAp6+QqVi+3pAreJTDH3/gUS96AmOI
dSr2XgwkOTLB3a3ONyfoXtcRnxD80HqBFuMa4e66cYm4iGpUSLJZjhxsKrtwmU9pb2lQIJCG
T854lcbwhUDEu2By7hL/W4VXC+sejhUeYH3q5+6KcVNT5sydM5mhHgK1JfVW6Ml7t9ZRk4Op
GKDuTt2viAVDerTvLiKbAXY9jwKXLNGeT0IUlfCVGzG+p4I0PSKsSRiRAmvEWTdZBCnhka0Y
JGwIF3ZFUGdqPo7AskjLR70n78GGxpINWquCgH09GkrOu4eBWM4G+b4GQ+qZs8YHHTPd78ps
2+n7iVsRX7066chFUo+O6rZRsTCCBkcwggQvoAMCAQICCCzUitOxHg+JMA0GCSqGSIb3DQEB
CwUAMGsxCzAJBgNVBAYTAklUMQ4wDAYDVQQHDAVNaWxhbjEjMCEGA1UECgwaQWN0YWxpcyBT
LnAuQS4vMDMzNTg1MjA5NjcxJzAlBgNVBAMMHkFjdGFsaXMgQXV0aGVudGljYXRpb24gUm9v
dCBDQTAeFw0xNTA1MTQwNzE0MTVaFw0zMDA1MTQwNzE0MTVaMIGCMQswCQYDVQQGEwJJVDEP
MA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNVBAoMGkFjdGFsaXMgUy5w
LkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBBdXRoZW50aWNhdGlv
biBDQSBHMTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMD8wYlW2Yji9ARlv80J
NasoKTD+DMr3J6scEe6GPV3k9WxEtgxXM5WX3oiKjS2p25Mqk8cnV2fpMaEvdO9alrGes0vq
cUqly7PkU753RGlseYXR2XCjVhs4cuRYjuBmbxpRSJxRImmPnThKY41r0nl6b3A6Z2MOjPQF
7h6OCYYwtz/ziv/+UBV587U2uIlOukaS7Xjk4ArYkQsGTSsfBBXqqn06WL3xG+B/dRO5/mOt
Y5tHdhPHydsBk2kksI3PJ0yNgKV7o6HM7pG9pB6sGhj96uVLnnVnJ0WXOuV1ISv2eit9ir60
LjT99hf+TMZLxA5yaVJ57fYjBMbxM599cw0CAwEAAaOCAdUwggHRMEEGCCsGAQUFBwEBBDUw
MzAxBggrBgEFBQcwAYYlaHR0cDovL29jc3AwNS5hY3RhbGlzLml0L1ZBL0FVVEgtUk9PVDAd
BgNVHQ4EFgQUfmD8+GynPT3XrpOheQKPs3QpO/UwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSME
GDAWgBRS2Ig6yJ94Zu2J83s4cJTJAgI20DBFBgNVHSAEPjA8MDoGBFUdIAAwMjAwBggrBgEF
BQcCARYkaHR0cHM6Ly93d3cuYWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMIHjBgNVHR8Egdsw
gdgwgZaggZOggZCGgY1sZGFwOi8vbGRhcDA1LmFjdGFsaXMuaXQvY24lM2RBY3RhbGlzJTIw
QXV0aGVudGljYXRpb24lMjBSb290JTIwQ0EsbyUzZEFjdGFsaXMlMjBTLnAuQS4lMmYwMzM1
ODUyMDk2NyxjJTNkSVQ/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdDtiaW5hcnkwPaA7oDmG
N2h0dHA6Ly9jcmwwNS5hY3RhbGlzLml0L1JlcG9zaXRvcnkvQVVUSC1ST09UL2dldExhc3RD
UkwwDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3DQEBCwUAA4ICAQBNk87VJL5BG0oWWHNfZYny
2Xo+WIy8y8QP5VsWZ7LBS6Qz8kn8zJp3c9xdOkudZbcA3vm5U8HKXc1JdzNmpSh92zq/OeZL
vUa+rnncmvhxkFE9Doag6NitggBPZwXHwDcYn430/F8wqAt3LX/bsd6INVrhPFk3C2SoAjLj
UQZibXvQuFINMN4l6j86vCrkUaGzSqnXT45NxIivkAPhBQgpGtcTi4f+3DxkyTDbWtf9LuaC
4l2jgB3gC7f56nmdpGfpYsyvKE7+Ip+WryH93pWt6C+r68KU3Gu02cU1/dHvNOXWUDeKkVT3
T26wZVrTaMx+0nS3i63KDfJdhFzutfdBgCWHcp03NhOhMqy1RnAylF/dVZgkka6hKaWe1tOU
21kS4uvsD4wM5k6tl0pin2o6u47kyoJJMOxRSQcosWtDXUmaLHUG91ZC6hvBDmDmpmS6h/r+
7mtPrpYOxTr4hW3me2EfXkTvNTvBQtbi4LrZchg9vhi44EJ7L53g7GzQFn5KK8vqqgMb1c1+
T0mkKdqSedgGiB9TDdYtv4HkUj/N00TKxZMLiDMw4V8ShUL6bKTXNfb3E68s47cD+MatFjUu
GFj0uFPvZlvlNAoJ7IMfXzIiTWy35X+akm+d49wBh54yv6icz2t/cBU1y1weuPBd8NUH/Ue3
mXk0SXwkGP3yVDGCA/YwggPyAgEBMIGXMIGCMQswCQYDVQQGEwJJVDEPMA0GA1UECAwGTWls
YW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNVBAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIw
OTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVudCBBdXRoZW50aWNhdGlvbiBDQSBHMQIQfmEI
S0Vm/+lAmuLB44BgezANBglghkgBZQMEAgEFAKCCAi8wGAYJKoZIhvcNAQkDMQsGCSqGSIb3
DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwNjA5MjAxMDM3WjAvBgkqhkiG9w0BCQQxIgQgSLLo
d04i5z6+ikkKCro7qBlyzb92bzvBdcR9+B5A+hIwbAYJKoZIhvcNAQkPMV8wXTALBglghkgB
ZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG
9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBqAYJKwYBBAGCNxAEMYGaMIGXMIGC
MQswCQYDVQQGEwJJVDEPMA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNV
BAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVu
dCBBdXRoZW50aWNhdGlvbiBDQSBHMQIQfmEIS0Vm/+lAmuLB44BgezCBqgYLKoZIhvcNAQkQ
AgsxgZqggZcwgYIxCzAJBgNVBAYTAklUMQ8wDQYDVQQIDAZNaWxhbm8xDzANBgNVBAcMBk1p
bGFubzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0Fj
dGFsaXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcxAhB+YQhLRWb/6UCa4sHjgGB7MA0G
CSqGSIb3DQEBAQUABIIBAHgGGjJYHFt86b5torIAmVbBwYfLfHUUVfBxGZx0gi/59/d+t4No
UztEG00eA9g8t883Qed0JkAEogVenaNfU0vugWb3pPMeq8wktzFOvWORM5nWWVqfSy0z6gUA
XYR2HT2AIMWVVN/0dhZzl5QPVkMLLpwHQp5mL1oJ8Io+9ugY4Pzv5u6iDmJT16KQ4X0Fy3GX
Pkfl+VY/I92NroOSvKtNPDvX0BdAZE44HN6poksbvRhK5w6XlKC4Yh8Feg3Itq9dU0BGPgWM
TMTAoxMUNR+y/w4XHKlyeZMlHRVTImj3hdMzyB8CPEGsHKIdKnHOPh6XgNEbaXpGFzD6jjuz
IgIAAAAAAAA=
--------------ms000404020409090906020506--


--===============1310950515211718116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1310950515211718116==--

