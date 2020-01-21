Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A8414410F
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 16:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q+SRPjk3duw3UWEg5gmCj3uXGQd8OtrO9iJPlClpknc=; b=U03
	5TLY0FhcG6hb5JizjbN1fxh2o0qf2rlQ4k3Lp7Wowee9xh0FGy0GyFqAxGG2Qjm93a+UpILM8AKjv
	mjVnz2X5bEXGfhW/E6OiDu1wMWWBstqVQ/tnNzKKRAkQ+6ewO/MJjstrJSqIWsULQ8Gc7ddgB3Fzs
	rFeNHtpbJ+dU7iFDEFEZQFAgrKwXKYgte3jfBuTX7Fz7wbUynokj/Mr9EgraGImrVLsZXE6rNM9K4
	qzFK9NZwODqB/hDft/jWoYmb2ipeqTp3p1KxdOB3k967H5fO3mHM9tzcjPZ3zfBoTgVhSPUyu2B4w
	pbwn5CsVH4yM2Eohgq3Za06E0Ue7Bbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvtF-0000FN-O8; Tue, 21 Jan 2020 15:56:29 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvt1-0000Ep-2D
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 15:56:21 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M72Xn-1iyZe740HX-008YBK
 for
 <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 16:56:12 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 21 Jan 2020 16:56:12 +0100
Message-ID: <01ba01d5d073$4e3b4020$eab1c060$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdXQcvR4pmD59VghSLS8EhWZJyTkmg==
X-Provags-ID: V03:K1:isvdRbp5fGtX/Qq9Yg5x0autKrQraUlBBt+9lnFHtw1Yh0Dtk23
 RvVfvHi1n45thPbfkV+wBYTlGDVpO8WSUf2vZI7DuruRUI8Akc8bmtHLs0e85u5If79O3De
 j/w920dp1k4iYPy4LwyU5AMPj1hm0sRcQCHVihH+bKDJ07rekIAUEklEORRpaTIo2irk8YU
 TGuhMRNLwnpnXtRSCJAPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xLOWuaFToDk=:/JWf0VW5+Sx5qOka1cPsUn
 iaNotK/XKBflsPhEmY6Bk2m5ZXo7bc2c2Y2gxJeyN/NVItqqGhSyNsez2KYHA3S7RNugWxZyN
 BTQuwR563sfmzpyc2/mCC2yfNR6UYMstmEWujfaYLhQEUB9CO590bwYqk3EwooWwzDqfRivjT
 ZiWgv7vdwmCrG0OYaS4WHlYgTme+vXs5wzFT39qsey8jzpDV64Lue1RCkneiFWVFnWPPTwO6q
 QJu33Lv2f4/0+AEQW3DklmnQMmwxdP+4HIs2UE99w0p2cuEQKfhH+jTdPAmmy4ddtr/I8gb9c
 Da4+8UIMLE45EJFQDahFpodnXJ2zqOSbAoMguwfQ10lKiDVvBJ4ddxNBZDdFQhTciLJC9GZSs
 C1HlrnhNGqFSZCfU5kEg8gNZAWUPVIOJZ1zskChxmFziTHg3cNLMjv3sjlu5RLUYXyqGODicD
 AQmYekndMcrkozsZy1JbXo9F9/1kV2HMhgITR4xnnR0xPLls/vpPSif3iNtiYV8vT4J5ILucF
 oXCkfcoIs5RT0imOVjcnPkFBAiA/KSyVrZM3OvkgWvft61nqI5nV8OrOgR3GCCBLuUkKE1X/2
 3Di08pcHQDpI1Qd2TY/hmrqPwpLzHgyO8ZYsV2OrSPJAakIeQn5bhFt/ceXkMamifUL+DhdG3
 EnL+jJWjKYALVsXuGXWGNEu5Y8jprDjOX9rACxGM+/Q6FdxX3fseEvXRSZU667G/qCmvQBTJ4
 qLlhD9n2EcdrkAYGB+F0W8nLlLQHRts/iJicjBdbBC+nsJ0CqVaH720GittEBApuv0D/3dpjL
 De6m7PAK/GAvv26er7ta5DMRTHvU6SqEIdRY42EZz6DZrZTB+YuyU7Scyh8TqjPrc6Q0Mf5me
 9EGFr2tgUQ35iwGCqlAEEdAyWqDNeFvd/1AZazKNI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_075615_401140_9F9153E1 
X-CRM114-Status: UNSURE (   3.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Review Semtech SX150x I2C GPIO expander for support
 of Netgear R6800
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
Content-Type: multipart/mixed; boundary="===============0257821151872810930=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0257821151872810930==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=jDBb/wyaJ4liR8=-="

This is a multipart message in MIME format.

--=-=jDBb/wyaJ4liR8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

is there someone who can/wants to review the Semtech SX150x I2C GPIO expand=
er implemented for Netgear R6800 in https://github.com/openwrt/openwrt/pull=
/2614  ?

Best

Adrian

--=-=jDBb/wyaJ4liR8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4nHw8ACgkQoNyKO7qx
AnAIFQ/9FYYdgfQScuPnMLgainlKRiYizMsmOFKaBBFepkosdlD+ACbwGT3ogDaR
qKiTcPbDU9hzZGGaarW6yuDE77T1ZnfLUmN1bzBOsAvfPWqnRBe4bfinMEgVv6le
sxIoXt8FSkWOaBChuSjIBaPOUtXDrLgLhvrEZbNINL+TntOEysm1JDkjb5JpAVEA
wlawvy4/Bnz9tQAfzMfJ/rJVXcJS8Wv+/eNEJ0ejMMaGEsaDI/knKjLBMtyxO85K
uvgIqgl44cgjMZn9A/1FLbIaRMkvq2G3zW9jo72OWziRCB6SkOgWNX+LmY14qk0S
VSLH+MwZgDWZibtC5QlBM9nuwcuek88kMJM1VmdIcDxHFCY0wH4InvYdZzz3JmzG
EfHwH6qNN1Spc0lmJJvLbMZByrBA66p/pdS6mr/8/xZa4pRPzUBEuQXLV6sOrib1
pndYLMlGdawtzJZiynY0M6CbQZhI8xsw80estz5T3cp63yPWLe3M4lmgk9ld3S4e
78i7uhvZx8KyG2fpL5pQWn6pcQSG8aNySvJiLLl4nahCuzb4BTCkMOKe+sXstjeb
ze7KVVO3AdfjwGWyE8Ey7sq8QUolcTdG1wpZ5yHiPSCzFqXbf6ihndChYwfkpiqi
V5xbB2IIyFEIYIDagAjasHDF8IeFG/1Ty2TnjA6HiN+B8FV8Nhg=
=MmYM
-----END PGP SIGNATURE-----


--=-=jDBb/wyaJ4liR8=-=--



--===============0257821151872810930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0257821151872810930==--


