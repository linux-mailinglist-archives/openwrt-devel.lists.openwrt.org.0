Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1E512D1F9
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Dec 2019 17:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jX9t/09w/8Nm2OV9zP2r2ZsvOFTUVxNVXRcm6/dCqko=; b=IoFBdtJ/1mu0v32m9AXgGrhJE
	VCNwsgetv5piYiybrqVPvHvHNj/oikskM0EZVzGi//70HIOizoDC2HVG5L9jNW6Q6y+GqtDDuH+Nt
	C9lexjCcbWaF3hbI97ygLCpkv9ra2l2pJ0Zd7BBfypaNQpGv7lhwPxjyFvplMI+PlPBv2zf2mltR7
	SLyYPoO5uqXzGRQ5IiraMHVReD5GA1Q/UL/6hi+xIbfQ8Vyo7qbtSqAuAOHXmkInCYwuHD/sPfG1Y
	kWBqPLvzSx0Fnn54YL9P1l64byjVlW8yiRquslcDeM+J+CZ1/5LWGn9n8kDaeq4nl2Tl8nhDZm1e6
	euHXw2QZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilxvb-0008Ha-LV; Mon, 30 Dec 2019 16:29:59 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilxvT-0008H9-FY
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 16:29:53 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MTAJl-1jB1oY0shj-00UXQc; Mon, 30 Dec 2019 17:29:41 +0100
From: <mail@adrianschmutzler.de>
To: "'DENG Qingfang'" <dengqf6@mail2.sysu.edu.cn>,
 <openwrt-devel@lists.openwrt.org>
References: <20191230155912.2130-1-dengqf6@mail2.sysu.edu.cn>
In-Reply-To: <20191230155912.2130-1-dengqf6@mail2.sysu.edu.cn>
Date: Mon, 30 Dec 2019 17:29:39 +0100
Message-ID: <025701d5bf2e$562b5960$02820c20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQMxqT3OiCiFGGrr+GAuoLTQna1r4KUbCbpQ
MIME-Version: 1.0
X-Provags-ID: V03:K1:0wsuJI675Vdw1OJxX0kPyvR+oUnOzo1aUmW+C26maFnpzbCaQjK
 bXWi07Da7w7l+cQmktFoe0KUn3YZLz9+OM4v1gzFkpkExptbuCdanu4myEYZu8mC0kfq3oT
 YoAYXU9nWbNTTdhYqQqMOBh7fNY+Jadfkn4F8Xg4qCBh+5sHGDUhkzhVMRUXcUwIGDx3UXW
 P+b2f6DzTJMkFoEoNoABg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kHtHKt7qS+o=:VJCqgo2VqhEJSc8Tr5h0PB
 SDpxB8KKidbBImdql7RpIKO/rQk9T4ZbcQcXsT8ze5SrGOFe/6YZ7d9uq2GMbfz+t3wDzC+vf
 OjB+U4Bm4QH1feOA0BEmXw3wd1xGhHcfAHAAmm5qEOVwGloKlelOFPMZYIl53LC9cltdmKGu7
 qjTkXH4klOE7NQ9MuuLVvOfdHaGj3XZJtB3ORkj5nmBsr8k470DxLOugM1qAfZ+Ao/K8NPAsc
 s5D6XHMwzb6tauzTd7eDkoaaHQI2y4XCPbabT/H2Ky5nch/Wws/z3JbkeePPnPyiVutfdeHJ3
 4yuUnZYbU7vJD7HOwTa2VrQ9vPDGzshuPwek2xRlWNZWb90vQNtZGLDP0821v8/GHW0Zy1NIr
 0iD92OTevB+MqKWvsLjsTfQSLjSif3xayvAJcH4t/TmcGFOtUkjK6r0lndV9K8EtfeU5stbP6
 xL6cWQPedJtAPK4IVkyiU4NDTPYZLeFpKRMW4i6XqQ81TaINkxtYSHs+k9sLB1/M1Ir2YVCgn
 n3X3GcZMmPWYgDAXNUAkWz2hKKxxMlUSv0yWT497BrYnAQKUAlML2ATBLvWegH4bRiGe0D601
 SHtWtIsn4sQ3Tyoyh6BmURyqp0//lH8FYkgo7YmUjqkozm8e6GPFlujZj6byBM4l2U7DZaDxO
 1XZRUlwFaUczRDPvCDWlGX1eN9TaGDWVMPkTaeSChB4UzUq2ID/Cwi+SqcL0TFsKGO49FHYCa
 jotjHZD5os5i1XM4Fr4ZyTjQcdZzrMJKhauwMpXzXH3RrkIX1XyZkSNmNcURtsDYRGnnMHSze
 RXoBy/T1Wj/hW1rnMFzvNcFWTIjGVBwYEDh0eUUYtfjSlcj1cU116H+646imDoZpsf8TFYgzE
 FZqwN1QIZ7IDzhw3gwGLwvmTwiN0XJ5QAjOwlEOng=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_082951_818696_36CFF652 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7620: use throughput trigger
 on HiWiFi HC5x61
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
Content-Type: multipart/mixed; boundary="===============3532709372440569836=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3532709372440569836==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=PjDBb/wyaJ4liR=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=PjDBb/wyaJ4liR=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of DENG Qingfang
> Sent: Montag, 30. Dezember 2019 16:59
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: mt7620: use throughput trigger
> on HiWiFi HC5x61
>=20
> Throughput trigger support for MT7620 has been added, so switch to it
> Remove HC5661 non-existent 5GHz LED
>=20
> Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
> ---
>  target/linux/ramips/dts/mt7620a_hiwifi_hc5661.dts        | 6 +-----
>  target/linux/ramips/dts/mt7620a_hiwifi_hc5761.dts        | 2 ++
>  target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts        | 2 ++
>  .../linux/ramips/mt7620/base-files/etc/board.d/01_leds   | 9 +--------
>  4 files changed, 6 insertions(+), 13 deletions(-)

thanks.

I'd prefer to have the LED removal as a separate patch (IMO best before the=
 phyXtpt changes).

Have you tested on one of the devices?

Best

Adrian=20

--=-=PjDBb/wyaJ4liR=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4KJe0ACgkQoNyKO7qx
AnAmMw//UFsIq5JeNGqCXhJXL5B7Bueyd5hJeO7PQvr5agoMDJQaCobOjPLb3M6B
jLIqbbYSxC9PFGa+LadO87XzA0ASRDa1WP/cmvBuJFL443ThQQvGT6ksGRWi1hoY
uAghoUTTseiMnqKZRTSFa+VelznefIfdV/R/OsrROaJeS39Ld6OeFyfQNCXIAq8d
cK5EKTDZrnoGA95HuEPMVg+pHGw1+8CPmnrMdUUU1NNWTcByrRBP11M5HvXWepTb
gj2YyfSCFj2GZzsR5MifIZkui0T5u4Cu8ynuSvAbkRf8O5T41FWs6Xq914WjjlBb
kGTpnirVNsbyDLrrkRjrnXCHfoEgzF2k8woo9xJvcGqECjImifcV4uaXpOHSnsxJ
zh/pPaE3IwkQCEtBRSgMkQxwuFHj6/bg6Z9sJqZ79rr56kFrNWya7apffz8d818t
F/rLntgU6CGwdFMHLi8qNob4eaV5O2UuR/P4D8+pRtQem/W1Hc060VciCYo/xQNG
BbzuFlOfzl/pztpKEEfJVNDeS2qDo1vH11Pzg4FyRRKXDqhsUdpHzS4nrGkkb/+l
dKP954MS2BYNiy7YLFmhADVvziMNs22Dobqvjg6SUdxljBbKu3G93r6GP+vGJJbL
ezPot5D9+6/T3tU+lBGFt5vImRZw0Qy9JTl6oeqCzO4vkIsC0QU=
=qc0o
-----END PGP SIGNATURE-----


--=-=PjDBb/wyaJ4liR=-=--



--===============3532709372440569836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3532709372440569836==--


