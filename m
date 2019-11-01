Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59217EBE51
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 08:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UwQMbjksnDJiACtOPs5hZTwmIRZd1vG5qx5W7aoVIyk=; b=eaSZyM+NKP7PosnoGCgOd9/Hr
	5BpJRgmkKzxK/Vgp2C+NXHcB/S7wbS8o7QNpBheGBkksx+l9WCoew1c8/5KYB1Zi+mCLCqd+IscJR
	60oGQldb5KaaOMj/yAGzRuSC0n2Z2ojyhO/TlCWuY9K7lxOxLqQq8D/qLzM2QbK0UxV4vhPr+Y0/6
	9SZpO9wcCN4nzvL31MGlXNwIwvhSUrEf6hRzzPxCqB5BVGfmSQ5V9fgbyiNi6m4VSYFtVEezC8Zg0
	S+KaFr1SWqO5sgBSAMlgTy25TTG8+WH1aewnZwLfSxsADlxNfF7/IVTJpvCrAqGy9i69Ur1UjjREi
	77mXc9ToQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQR57-0004cP-0c; Fri, 01 Nov 2019 07:10:49 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQR51-0004c1-3D
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 07:10:44 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M1pk0-1iOE9X234K-002FcD; Fri, 01 Nov 2019 08:10:39 +0100
From: <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191101032858.19013-1-gch981213@gmail.com>
 <20191101032858.19013-4-gch981213@gmail.com>
In-Reply-To: <20191101032858.19013-4-gch981213@gmail.com>
Date: Fri, 1 Nov 2019 08:10:38 +0100
Message-ID: <004501d59083$775d81f0$661885d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIIIY0woHLQzmQlS7hCi4RG+8xx1QGO3NVSpwRMtXA=
X-Provags-ID: V03:K1:U1Ycc/zljQaK3IhN/PSHg8/u0mzrLFNs1P32eGHnMriJEawFAIS
 lP8E8TT2Fx0qrFOa4LhvLtzdofO7nqtJWL9ER22CfCRKcc8nG33xmzX/H985nP01MJqEadx
 zJhu191ElwToU3EE1ttpShPv3AhUTzMYLtAG3mt/R1Ni39IesjEuDkLi2lq7CZ52EbUtk3z
 A0njssJpG4hPBCGVUP0Aw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zu5F8ThDR9I=:eSGviiiPC0VOC9Pl5BnY3k
 p17VjhFYEuoBDXJw1VG+VIq8bZZV13eCd4WDQ+Wy6tKVR1NPwc8FZHviZxcEM/uBeWyjNHY5T
 ZjPgzdsicaD8EV9LTBsNIpP3rHEcAJafxC6i7ea4h1dx3+oPEk7GOWlCi1IrdWTKfvYrVq/5e
 EZkobEJiWx/K5k9nT4yDaeAqqjTSEEKxUCjFyvIvOKBW+yn1/WNPxwGCU6SK+JQXDnTYB5uVr
 OrbzOo52ICfkEwY6yg2X5sxsUdrpu4FfY0a1+qlFnLG9KrM4hrXASIsfUMDzg0MZMTZOszQx9
 FaVFnYs6lf9e9dIGwQ1h2bxX8TD9U4+nrNunjPYfAr3awPHdayWfJz8NJvBvAat3wWO8u1hwD
 2BJok/SWOp7SGciGw3qxAN1Da2ZDCM+vnhFzGIt/cjCd9BpS8JgpGkg426+LOTa9KzVXHwP8M
 4pdCslyFE6UR6G+2spCeZYJ7EED6ioEw0Me4YIftZZ85Yx8wQLiYPubEF6ILumlZePiHjLB3g
 mqf/F3YmQf+8MK19NES5TO6U7NAMrpwWRTBqadYnWF/RzHY/s2stU7qmJTZxCgBP+nV0g+1TT
 WbHgM0aBDcujWFCBcjpFO5CvndPuBtszjJIW1OcJrABAIfF9P4/puWJimhAA3mpcYqXhwvOLV
 Yx7P8U8V22MWtdbrY64lTXeWepSNkKe+ztBSAc1asX9yQw04B+OljE+f8ZNRkTbrxGnr59m64
 NbJ/oDwRuqyAVTcPOj2gbQ+vH+KGU0OvMgifql/sfw9J8jzx8mQNxssBb4H+QJItYzw1ftySz
 uW3MRDq5c9z5+zmuLoo+1UnsX+wwq6inIrHtQMdeNlcXIZbFXpbfz3ypte7OB++CziazHKipv
 Ha5BLVWJNV8vu6N6o3dy8lg1xJ6CenHGZhRxUHYms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_001043_429032_9CACB8E9 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/4] mediatek: cosmetic fixes for
 mt7629-lynx-rfb
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
Content-Type: multipart/mixed; boundary="===============7161184344922405286=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7161184344922405286==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=Da9J4lfdUL8W1F=-="

This is a multipart message in MIME format.

--=-=Da9J4lfdUL8W1F=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> @@ -75,6 +76,7 @@
>          gmac0: mac@0 {
>                  compatible = "mediatek,eth-mac";
>                  reg = <0>;
> +				mtd-mac-address = <&factory 0x2a>;

Strange indent here ...

>                  phy-mode = "sgmii";
>                  fixed-link {
>                          speed = <1000>; @@ -86,6 +88,7 @@
>          gmac1: mac@1 {
>                  compatible = "mediatek,eth-mac";
>                  reg = <1>;
> +				mtd-mac-address = <&factory 0x24>;

... and here.

Best

Adrian

--=-=Da9J4lfdUL8W1F=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl272moACgkQoNyKO7qx
AnBRSBAA0DoSGGPJRJ6/xXivHQcaYMNdO9vbKEfcKKZXC4RRlrqEdGwR92Z8GXYG
MK0798QjAbtv9Z6DnyRVJj6a4w/GigYkF5NFVtHmMHMMGroHDXdw31rTtEREmvra
PJicsdv3AL8s1/PqnT6B0LX/wME3Qoyn+HUZi8BdimUDNOfogXUU8ZLBmIu5BRW1
az7Tole1+4JnnWIMWovXosuBDSzdKT4wQkNjt8/qsrxa/4S9RCuiYUwokElGvE75
AfL/RSDLXQsDtT5UfgcRXfkrezmNym0qiQ8PocW4B1kWRsXbs93XsS8P+F0NWHez
6/VxVB7rAlMUsalfjQ/dvBNgzjlofxvV+hfg7h8COsYEz268DDayLg3hcUl9qxdx
B/a5JVhpkUPp1/2367SisbfpX3DmoidMQCcwwRK1Fsv+ztQWAw8/VNHhG75OE245
UE0jkTASUkxCiyP0jPkhnKCC5WuqrcywDMIEeM5UkNqVGP35MpNopih+clNaERtr
lvdQwqBBjXb9mJeCfrNmwcLxKRrEO14T68IWsjplvFAcDwZ057KhKq1QOlREad8j
AGB+hZPVeHAZzLMe4LhnkkHCmFPGmLlvvNwI1V8I2pSJRgf2MBcWmGOb+UoeHu8h
r80GdG4S8LDgP+U8BtzdQ3qCM8EWZdMhatJ9RHEUqh09tSlodMo=
=/TOW
-----END PGP SIGNATURE-----


--=-=Da9J4lfdUL8W1F=-=--



--===============7161184344922405286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7161184344922405286==--


