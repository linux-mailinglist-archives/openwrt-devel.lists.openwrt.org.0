Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FB5BB005
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 10:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/hsFxbxbDojmDWIvZQjk6foeKqVZD4vcsX+zT0HctMg=; b=Wtw/KUpxZYKzQI/n1y7U9X1uU
	uQBSRoCd7SkufVa4ZrHEA0ij1i/Rv7fERvEIuz6PQr6zdTXqoiUVgyNTRdUYYmfoa8e8PXzD080qo
	wnsqeow1vt6vfDh/nhcVAgWAoyecVAFXZKT25mv/3BrxVUKYf+UdigMcBfHVRawnStX9cwW892Ynn
	N7L0LJU3e7bCTiVNIFH/4ud9WtLsgh6uDs8lHkq6FEsebwW092lvUfEpOl3W8hv5kAaiDG3OVIZ2g
	fo0lHFtUE3BrOCIK8298smlneZx6sHOPbLgGt9QYVv2J3sctbAFvmrvKdHV0Phkhw5L9Yg+A88Irg
	qNFvJJ86g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCK6k-00078f-Gv; Mon, 23 Sep 2019 08:54:10 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCK6a-00077e-6K
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 08:54:02 +0000
Received: from [192.168.180.1] (port=41638 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1iCK6Q-0002zJ-34; Mon, 23 Sep 2019 10:53:50 +0200
Received: from [192.168.3.44] (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTP id C4EA32801E2;
 Mon, 23 Sep 2019 10:53:50 +0200 (CEST)
To: Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
References: <6e8a1f4d-7649-e80e-64f0-83a5b0e9d8a1@marcant.net>
 <f1ce9b03-f421-7a65-227a-405c6557f5f3@wwsnet.net>
From: =?UTF-8?Q?Andr=c3=a9_Valentin?= <avalentin@marcant.net>
Autocrypt: addr=avalentin@marcant.net; prefer-encrypt=mutual; keydata=
 mQGiBD0cWuMRBAColkNajBIWPDHBP9p1lNWkyc5zO7EOywGqJX3beEFplGzJDgBBPZoIzNB2
 KoR7jMtQpHFF2NUc0Z/wWMY2evYlazXWj9XenUeZKiVnyN2K4CZj4LjkEqVgz4K/FMjS3dxc
 PqUI4pjPHkG0ELsR6kPdGdqcOO6UKJa1Gi48pCZBPwCgtiqLi4ZwYlCpEKpwYpcJHl4ytS8E
 AJgxoWoT7+QmaWnAZOHwIPhXCNimkRQyl3JphRi83S80i5bUEWDiIzcBrnrp2iOsrhzCkdSp
 HC4dD0fTe3rwDvQ561AYM1BaCxWEeG2UUMU/QpLk9ZIJbjR6KACes54D6j0ZO0tbFUXztvHR
 eNRPxxWYgdAOluxLrbKCYf0KBsQAA/9F5KxcXjw9aLoxM+x8RQkAzkrFf4txrOsIksFqbDyL
 FCsBJygeIx+6qcGM1W6nToozG7wq4oUy80vVHPMKFEdG9PZRdqGCScbPLmmBBTwYGYAfbGv/
 QreWt7o7NF1ZE/Bik6pkhUGm67ZwWGkZPb7MauJUcAsPMNlKJxHHZ4zuRLQrTWFyY2FudCBU
 ZWNobmlrIDx0ZWNobmlrQGxpc3RzLm1hcmNhbnQubmV0PohXBBMRAgAXBQI9HFweBQsHCgME
 AxUDAgMWAgECF4AACgkQSZoWh3g1Nl3UVwCeMbpxrq+KCIe9q000qqlmHvppYMQAoKSood56
 plB3Cap9IzkqV5eW8heKuQINBD0cW5cQCAC545/wBGyf1EAVTRYY2FvGgyFyNh4qUj1qgQ2I
 2F6IUEbRghHgZ9Q6ObYiw3GMIRtTviGXB+1AXHG7T5xcSwn9yFVNPNqP9OUmQ2lr6OcgRkBD
 TJSnb1ArZmlntpFnXjwp1FDMFrjrWyeJoFCjWmu4MKy18RLNAquMJuL3azXfICsgQSrd9Qxw
 +wK/kjE4JqDOIMGv+Fitcuf3hnk910s95hMFETjEwqetXf+LTulaIlZsbgZZ7NiIe1mjMoQz
 P4aP06Kq2syhZznroZt6EMO4MCsW9kQQ6xmS2hURY7mgi2mkO7qzEt5lZKmzHOFPCFSPEfcS
 IgH+m8Oh+nD1WOMzAAMGB/wOm2AsgNXrmnL3TEJ/QNbeBwtK7/TP8Rpkf4XWb/QXBWaS/xm6
 zIpePp+t0unqLS+D3Jh+8GBaWJTnG83lkYW899d8fuCaOJQ4jciiICtn41VvnIMnuK5OJqB3
 /W8SxnDe0jgX0xLhdUj/KWDdQi2qVm3cEWWhNnKk7+FTfhwN+XJu7ALkYPvAQDOxU8B86HNA
 TBKRlPPNQkw2cnksqQoL4mZCILqHy+LZ9PlxhorLB3c6AREN5io2SBrR6npMtauk2cgOJOQj
 zsMTlS546kEMTTw7VM5FwXyHzXRKlWt+N1Z/EXNK6VjhELO0aSlBMFDj4W2XZWZKDH2NiT4z
 naipiEYEGBECAAYFAj0cW5cACgkQSZoWh3g1Nl0UtQCcDAHtRR4R4UeleYr7ARXSrnAZ0IsA
 n1zVHHxU2yalWPKywjLmFKB5J7Zq
Organization: MarcanT AG
Message-ID: <88f4611a-e565-bed1-c853-7db325edb602@marcant.net>
Date: Mon, 23 Sep 2019 10:53:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <f1ce9b03-f421-7a65-227a-405c6557f5f3@wwsnet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_015400_388785_A1BFBE02 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] rpcd: file: add path based read/write/exec ACL
 checks
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
Content-Type: multipart/mixed; boundary="===============2693801550126442120=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============2693801550126442120==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms010003060501070408040808"

This is a cryptographically signed message in MIME format.

--------------ms010003060501070408040808
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi !

Thanks a lot, this works perfect.

Kind regards,

Andr=C3=A9

Am 22.09.19 um 20:07 schrieb Jo-Philipp Wich:
> Hi,
>=20
>> What do I have to do to enable access again, without calling ubus
>> session grant like in the commit? Thank you!
>=20
> you need to add the following sections:
>=20
> "superuser": {
>     ...
>     "read": {
>         "file": {
>             "/": [ "stat", "read" ],
>             "/*": [ "stat", "read" ]
>         }
>     },
>     "write": {
>         "file": {
>             "/": [ "write" ],
>             "/*": [ "write", "exec" ]
>         }
>     }
> }
>=20
> Depending on your use case, you might not need the "write" and "exec"
> permissions at all.
>=20
> The "exec" entry will allow invoking commands matching the path "/*"
> (so, everything) and the "write" permission will allow (over)writing an=
d
> removing files matching the wildcard path.
>=20
> Regards,
> Jo
>=20


--------------ms010003060501070408040808
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
DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwOTIzMDg1MzUwWjAvBgkqhkiG9w0BCQQxIgQgdqgx
uIkcj3+alpD0aoOot97KiHpG8/uh+H98GKiXGsYwbAYJKoZIhvcNAQkPMV8wXTALBglghkgB
ZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG
9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBqAYJKwYBBAGCNxAEMYGaMIGXMIGC
MQswCQYDVQQGEwJJVDEPMA0GA1UECAwGTWlsYW5vMQ8wDQYDVQQHDAZNaWxhbm8xIzAhBgNV
BAoMGkFjdGFsaXMgUy5wLkEuLzAzMzU4NTIwOTY3MSwwKgYDVQQDDCNBY3RhbGlzIENsaWVu
dCBBdXRoZW50aWNhdGlvbiBDQSBHMQIQfmEIS0Vm/+lAmuLB44BgezCBqgYLKoZIhvcNAQkQ
AgsxgZqggZcwgYIxCzAJBgNVBAYTAklUMQ8wDQYDVQQIDAZNaWxhbm8xDzANBgNVBAcMBk1p
bGFubzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0Fj
dGFsaXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcxAhB+YQhLRWb/6UCa4sHjgGB7MA0G
CSqGSIb3DQEBAQUABIIBAGt80RAoioUObZjRdYdlFkNZyJlHvTxxJzqGM6QkkrHGGAj7ThBF
qFifDnKdf3v8Gu+60ArfCn30pm0m4efb7ej12KBLUCOpqhL0b/zgzrS5mmYpKWk01cN2Ers1
stRap2yUI+oP3j0r6nd7X2sBrmavos6J3nyFypChk4EN2LfG05ieUooPZAwYQDu/8s2iTlOm
kc3iZhXxvohUAQZ+ED5JrzWaL6SLh6ITlcMBp3f3z57w18hFt4uu4o1UcZjkX72rmkCY2MPr
DZyxzQeR+95jdweyWbY7XDNFB6aG+Vu+eY+XCFw1FAR14SDOvFqARUBSYL/ALvmI/ZnGDAha
92UAAAAAAAA=
--------------ms010003060501070408040808--


--===============2693801550126442120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2693801550126442120==--

