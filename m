Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD5A1A151D
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 20:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ljfP7nD9WLBY1wF4pbVjfvF5jyiBHWZHDwMV0bM/Fl4=; b=p7H3AbC7cNrhoXrcbfmRxnSOd
	ggi9ys0FH/HukO8btETGdltbWE8MZN448R67gLwzkFi21vv6fPXiYhc0l7olyl0AFWraDf4WygvTO
	zuFlSGGxB/AFuIxjNxffTtaLg0se2u25CbSay3da5mu8pGS3LZDr8Kl3UXR6IVM8Tb7H96oG1fDyz
	JhdJgg6gOhHX+Eyx86qf7GR5zQu6AoIXv59teRY6XQNlBDxDB3cYgpdnuXsEosETGiQNKdirw+OOv
	kNSayW3gCr8VY4xbV3wau/HHb+CQu/bN8HOjA6ttQsNDND9aHXk4oNRom0PRIIRuHQY8B1xJ86Oy1
	MXTDIsq5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtC7-000586-Uq; Tue, 07 Apr 2020 18:43:32 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtBy-00057W-Hu
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 18:43:24 +0000
Received: from [192.168.180.1] (port=42930 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>)
 id 1jLtBv-0005Oc-1C; Tue, 07 Apr 2020 20:43:19 +0200
Received: from vmh.kalnet.hooya.de (unknown [192.168.203.15])
 by admins.marcant.net (Postfix) with ESMTPA id 230F6282CDA;
 Tue,  7 Apr 2020 20:43:19 +0200 (CEST)
To: Chuanhong Guo <gch981213@gmail.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
From: Andre Valentin <avalentin@marcant.net>
Message-ID: <c207ba10-f6c3-6ded-7ba7-7d2693dc0bbb@marcant.net>
Date: Tue, 7 Apr 2020 20:43:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_114322_747107_95D466F2 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4259221862733330899=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a cryptographically signed message in MIME format.

--===============4259221862733330899==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080708030101060704090206"

This is a cryptographically signed message in MIME format.

--------------ms080708030101060704090206
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 07.04.20 um 12:16 schrieb Chuanhong Guo:
> [CC Sergio who worked on upstream PCIE driver]
>=20
> On Tue, Apr 7, 2020 at 4:45 PM Andre Valentin <avalentin@marcant.net> w=
rote:
>>
>> Hi!
>>
>> Currently I'm having some serious problems with the new 5.4 port.
>> 1) PCIe
>> I'm developing on the ZyXEL LTE3301-PLUS. It has PCIe and a mt7615e co=
nnected to second bus on the first phy.
>> If booting the device, kernel hangs with a RST message, telling the de=
vice is not detected. It seems the PCIe bus 1
>> cannot be reseted because nothing is connected to bus 0.
>> An upport of the old PCI driver reenables the function. I can provide =
more logs on this if needed.
>=20
> Hi Sergio:
> You may want to look into this.
>=20
>> 2) DSA
>> These are my first experiments with DSA. I've configured 2 bridges:
>> lan: lan1 lan2 lan3 lan4
>> dmz: lan1.20 lan2.20 lan3.20 lan4.20
>>
>> Inbound traffic on vlan 20 is comming in, outgoing traffic passes the =
lan1 port but does note arrive at the other end.
>>
>> Should this work with DSA on mediathek?
>=20
> It's supposed to work so this may be yet another bug upstream.
>=20
>> If not, I can offer that I write a patch for traditional swconfig.
>=20
> swconfig is considered deprecated so there's no need to do so.
> In fact, this driver under mediatek target also works for mt7621:
> target/linux/mediatek/files-5.4/drivers/net/phy/mtk/mt753x
>=20

I already took some patches from there. I'll gonna check if a replacement=
 makes a difference.

Kind regards,

Andr=C3=A9


--------------ms080708030101060704090206
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
C3swggTwMIID2KADAgECAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRy
bzEjMCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFs
aXMgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyMB4XDTIwMDQwMzExMjkyOFoXDTIxMDQw
MzExMjkyOFowIDEeMBwGA1UEAwwVYXZhbGVudGluQG1hcmNhbnQubmV0MIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlybRZ/OtSRqXftAS3r9d+hMfULJ3AIsTG7l1m3ataDk6
e7uMqx3jJCnWtW6pDmF8oQeNeWU5TCgS3ewkN6Tqv8ndx8IgZzSDbnsSv9a+FGtWJImt+SCD
gSlUM5KSklnf9oYfCp6QYmbZ0Qb5zoQ3wUcBSYNnNrvjRHg45fgoQJxXyQ4scNbdtF5nwjkT
lN/ImARprPWMeX8Asa0ftZ7wlK8snfYso+4OU9lGrxUtDPwKwQPfc/Hol1/uRlceKeO/Nqrb
hwEMV+03pL8o/9y6jIQ6gYdjwXgTOivJ8f0/nuA/aYfqjfaIeFZs5q9lA5mpOr9rsM2w88sP
B2FDLBg2BQIDAQABo4IBtjCCAbIwDAYDVR0TAQH/BAIwADAfBgNVHSMEGDAWgBRr8o2eaMEl
BB9RNFf2FlyU6k1pGjB+BggrBgEFBQcBAQRyMHAwOwYIKwYBBQUHMAKGL2h0dHA6Ly9jYWNl
cnQuYWN0YWxpcy5pdC9jZXJ0cy9hY3RhbGlzLWF1dGNsaWcyMDEGCCsGAQUFBzABhiVodHRw
Oi8vb2NzcDA5LmFjdGFsaXMuaXQvVkEvQVVUSENMLUcyMCAGA1UdEQQZMBeBFWF2YWxlbnRp
bkBtYXJjYW50Lm5ldDBHBgNVHSAEQDA+MDwGBiuBHwEYATAyMDAGCCsGAQUFBwIBFiRodHRw
czovL3d3dy5hY3RhbGlzLml0L2FyZWEtZG93bmxvYWQwHQYDVR0lBBYwFAYIKwYBBQUHAwIG
CCsGAQUFBwMEMEgGA1UdHwRBMD8wPaA7oDmGN2h0dHA6Ly9jcmwwOS5hY3RhbGlzLml0L1Jl
cG9zaXRvcnkvQVVUSENMLUcyL2dldExhc3RDUkwwHQYDVR0OBBYEFImeFFJEHqtLlPJrjCuY
OxjU8gw2MA4GA1UdDwEB/wQEAwIFoDANBgkqhkiG9w0BAQsFAAOCAQEAr9jVry5tlkghgWGp
BA1nEFH15gyb3bpGsvy0xGi324regn7RfcYZ0Xhn4rKcpKYC6CjGR9aEcQan5xNVAM/kgW4Y
/LZMqWqdyYpPEKFkGXof7G0AoD8jLRwaMgKiYIFfEGI5j4rp5V1gw/iP3kiaK5OjUTQeGdpt
rGuPES2xq1uDBO2a86G1g6hFRMNojV6hF4V6A+nFucnGG9YqjyIZ1ioZc9gv957T0ti8LTeM
EkNW6QEOfj8WoDRJLPw1DnvvY1GNPtSfm0XBVWFrCtGHLuM3lgeffDpMb8DsIWAndpWkw3xf
y4qSus5fTjZYCjp0APX3oU2kagiTpvTJlpORTzCCBoMwggRroAMCAQICEE/eEEvtlVvei61l
h8xBXuMwDQYJKoZIhvcNAQELBQAwazELMAkGA1UEBhMCSVQxDjAMBgNVBAcMBU1pbGFuMSMw
IQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEnMCUGA1UEAwweQWN0YWxpcyBB
dXRoZW50aWNhdGlvbiBSb290IENBMB4XDTE5MDkyMDA3MTIwNVoXDTMwMDkyMjExMjIwMlow
gY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJnYW1vMRkwFwYDVQQHDBBQb250ZSBTYW4g
UGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5BLi8wMzM1ODUyMDk2NzEsMCoGA1UEAwwj
QWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24gQ0EgRzIwggEiMA0GCSqGSIb3DQEBAQUA
A4IBDwAwggEKAoIBAQC3aHN62TzUL/vcZ8o9zpR8/4kZztoaY/MZR5AnWCjcJ0WmwE+idEQN
dQN2ZEIhGRMOugffREuxM7/SEQWJiMLK+9tJVKbTmxeS98lc5d582orbV8FrKvgkKAxHItXC
pFheUojttvjadhKbthxcZMOZ1zJ2Ym66pwuoVBrBaIEw1FFUSLi5bm5cFmBYaarw2gof/7nE
YEVt/q01NZwaE9Vx5F6y7ArXnn46IfqNNbTU1rxouPtzsgAYnRj17qGIe1G2F9btLBtTvKzv
drec1e/wq/1c2vRG8koeg6wqrGN997DcYpCsxcgcHm2b+N7dcScjFRPwkbewSyTsh8XdWKtL
AgMBAAGjggH+MIIB+jAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFFLYiDrIn3hm7Ynz
ezhwlMkCAjbQMEEGCCsGAQUFBwEBBDUwMzAxBggrBgEFBQcwAYYlaHR0cDovL29jc3AwNS5h
Y3RhbGlzLml0L1ZBL0FVVEgtUk9PVDBFBgNVHSAEPjA8MDoGBFUdIAAwMjAwBggrBgEFBQcC
ARYkaHR0cHM6Ly93d3cuYWN0YWxpcy5pdC9hcmVhLWRvd25sb2FkMCcGA1UdJQQgMB4GCCsG
AQUFBwMCBggrBgEFBQcDBAYIKwYBBQUHAwkwgeMGA1UdHwSB2zCB2DCBlqCBk6CBkIaBjWxk
YXA6Ly9sZGFwMDUuYWN0YWxpcy5pdC9jbiUzZEFjdGFsaXMlMjBBdXRoZW50aWNhdGlvbiUy
MFJvb3QlMjBDQSxvJTNkQWN0YWxpcyUyMFMucC5BLiUyZjAzMzU4NTIwOTY3LGMlM2RJVD9j
ZXJ0aWZpY2F0ZVJldm9jYXRpb25MaXN0O2JpbmFyeTA9oDugOYY3aHR0cDovL2NybDA1LmFj
dGFsaXMuaXQvUmVwb3NpdG9yeS9BVVRILVJPT1QvZ2V0TGFzdENSTDAdBgNVHQ4EFgQUa/KN
nmjBJQQfUTRX9hZclOpNaRowDgYDVR0PAQH/BAQDAgEGMA0GCSqGSIb3DQEBCwUAA4ICAQBg
RLoZoqty+w5BmkTBuhU5vZ2uL98mtylvsZIRb0mYD4p6ngYuan1fnQi/wQrjvyTB/ZoCOc+e
w52Ii0AtwiB5xLWpXE34Rj5XkYI0TLhUCwHmDOVAGYoj0/g/Eu32mdAmd4JUS8OdUExkCWUg
vmze5oKIgRvx5hmoby1o5ZIzWeqOgJlQtxyFdZhqMGpomDRFQ5np/kgHSVvbocD/sRRWaHWd
JWCUOhR4Pt6Ug1cemHTPeJ/XvbZTJ1ygfgmPdlpj121DjAlI2FJk7MRLvZSRLrB7/nnoU4az
uh4la5B7xGrYR55IaYaWJkpRtijiMH8LaiYyfQvhDAjnAw2tZ3YVE1RTDEwGZsli0RoNFNDv
Yc8DwOdtGS9ENImSOxOipTpmkGUF/izkTCuFeoVVvasz2YYI8NkmLsfDfLwFgP93eJMvo9bl
SM5NKkVydIg/gdbk8joxMdeX5pvpqMKe8nDoTVMYuHfMnKm/kJDwW2bTPswou3lmvYTiOiNl
d5mfWxSlKqJ1nKn2Yb8tgxGYcyS2ENGcOc7a0e/n5g47hxQRtO3kHDATlE+Oqi+yd53J3lKK
Mgr6TUwJcUsxN8RHPepQ3eL9/C55dwbLiMR/af8W9iwRjcYEddkIxVY998F9uX8hOOz1D00b
ftsASb+aDbI2rTY0uMNtAgqC31bRoFT1KzGCBBcwggQTAgEBMIGiMIGNMQswCQYDVQQGEwJJ
VDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEjMCEGA1UE
CgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMgQ2xpZW50
IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCWCGSAFlAwQCAQUA
oIICRTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMDA0MDcx
ODQzMThaMC8GCSqGSIb3DQEJBDEiBCBTN70zEQKHt51y3buolGBGqh0gpwrHtjFOmG/tegKR
KDBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcN
AwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMC
AgEoMIGzBgkrBgEEAYI3EAQxgaUwgaIwgY0xCzAJBgNVBAYTAklUMRAwDgYDVQQIDAdCZXJn
YW1vMRkwFwYDVQQHDBBQb250ZSBTYW4gUGlldHJvMSMwIQYDVQQKDBpBY3RhbGlzIFMucC5B
Li8wMzM1ODUyMDk2NzEsMCoGA1UEAwwjQWN0YWxpcyBDbGllbnQgQXV0aGVudGljYXRpb24g
Q0EgRzICEHUXc/pcZ5UbYhNI1ws2ljYwgbUGCyqGSIb3DQEJEAILMYGloIGiMIGNMQswCQYD
VQQGEwJJVDEQMA4GA1UECAwHQmVyZ2FtbzEZMBcGA1UEBwwQUG9udGUgU2FuIFBpZXRybzEj
MCEGA1UECgwaQWN0YWxpcyBTLnAuQS4vMDMzNTg1MjA5NjcxLDAqBgNVBAMMI0FjdGFsaXMg
Q2xpZW50IEF1dGhlbnRpY2F0aW9uIENBIEcyAhB1F3P6XGeVG2ITSNcLNpY2MA0GCSqGSIb3
DQEBAQUABIIBAHR/LmAXDJz612BwQyZjUgtOEYc6K6LSepr8kxt+LxNQUwhAcOEfSivvk3SK
MwL4A84PDMGFHrcq0THicwXb1y6J8R90y+UdtHbmJejA/+uqsTbdueH3PTxxiC7MKVJmWshT
/Ot+HrtVoc+C+wuIj7IwZmb2U2jcTqb9b66kQoCbXqmDzDeV2h/9X1j2eTX41sM3GCz6l4Bk
paSismJq5Ogxwg12rjonI8wpwLV1tWBFQbOG2Se1nHiy++7YnJKgXppuw1bNO40Y+Wm21OJ+
4cNizRPzY7wcZhd8IeRf2T6fKiasYTGrLMy08tPbBEtaSuBrYRMQmGbdjgk8kHdGSisAAAAA
AAA=
--------------ms080708030101060704090206--


--===============4259221862733330899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4259221862733330899==--

