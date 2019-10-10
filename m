Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C70D27BC
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 13:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0tkbqWoNUoY06FYu47nxZ+3Zv4+U/wohECDiLnJPWrs=; b=l6MycWi2JpAXaFAMhR/8tEoCj
	OUB69ZLDLbEN0iwwM1mpDw6AD8Y43pHH7mHJciAFQqfUA5JwkHe6LBzUiXYkRQzEJZEVM6WnhNP/u
	c/50mHZoIxUwFLLb+8jZzb9EYl+NWRb+ceo0wKEB70QrSN/C4/0Q9odalGymkfZLSPlcHkp4ioFcp
	JkMCZCETO6Eox1UaXigBXuF9HLXbQX+/fDl8MdHS7nqYFPoiQRCDVxbjcFAi5a6rRBpRG5fmyJjTR
	2mK12Si9fSL7JIGLCN8UOePv6MqoVt3FvZMJO2bAO2nvZIIT/ufS5nbT/vuBX8GMco1AtlzyZtbBb
	iiKGRPQDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIWHi-0007Nf-Vs; Thu, 10 Oct 2019 11:07:07 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIWHb-0007NM-Bu
 for openwrt-devel@lists.openwrt.org; Thu, 10 Oct 2019 11:07:00 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M72wZ-1i9zhT0OFT-008XiH; Thu, 10
 Oct 2019 13:06:52 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1570694147-22320-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1570694147-22320-1-git-send-email-wurobinson@qq.com>
Date: Thu, 10 Oct 2019 13:06:51 +0200
Message-ID: <008001d57f5a$d1d8d3d0$758a7b70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHiTuKUTanj4XHB05SoEbNbSntdZac6Fl7g
X-Provags-ID: V03:K1:HBAEj4sBdSN23D7jbnT/BxEF0POR+1LUAks/pW7jH9FQz7dKdB2
 FalETVEYv1oajRUHgqZeaJQi5lQWPrqm9kgJlkEDnbRWWu19f9H2d3jT7VE0WbM+1grkcCj
 NeTEGJP2+HsxSgBvBr1UUIKWvJFTfkZewlN69cNhOysgQiUeLmhBN+YyG+usvV60Vc3WHj1
 MqYrRYSuUQlSKQ6aGhf5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6tZUG3EtwhA=:H2JJ8W7Hgi28FuQXU4P1QR
 9mApsX3kVomYJC76xFmnaWiYuhgK3FaCpY4eQ1VX4vYwP5uU66h3buzk4H1NDBcdQfVVBKekc
 YIpwaFYDFhC1IBaABZTLXsa2c+wAy9kCx7iQeo3od4KBpnlnY3WvWtPHeOExjoEmHfY8RM4Dw
 UEqKUhx78mJjd7rp7XI6/jhcIr87EOS113iGTzW8Ec++Ey4J7Z6nrARInPMNGeadloNg7Hq9g
 Tym372zHPQkIYvjNrmLq+J4zBkVii7W8iFuEso1eEZ67mpy/ucVDgD3Ou69PaoQWoaDjfkVli
 ht+gi3rNo+xnkJvPNHMdEVSS/REMaiwzQYiogj9KkC+8lR0JYpFszAlMw9vvRB5T4JLFJyiMr
 HewdJ05skZaP7h4WkY5Ota1UrMZfL9L/CI4hEyvnxdyYwbiwhXy++dkUFpQSAcFs8aXilufq4
 5D28G5T+T++vUksPE2CC67K+le2+azd5hNXBEwLQEuEo5T1PlZuFbX5IbFqw/T1vol528pK4k
 oNnMdLZrHBAUoz05yIfON9QblDV34BSKS+TMy9zXvENiBjVpy/aDaa4N8iq7Zxsw0aU2Rq1/e
 MKhgyRyG4XKkdr+1c7e7sE+wJ3QluIfzV0d5RFUSsWtu5TQwj3NlJclxQwFP0NqaxJhQ4no8m
 mRVP7ID7oUvdcyA83WhM7CqaPOyvY2zfD5FzMKQUzPa7kbh9+Xd+3jFMKa9+VaHy9yD5od73+
 tPvbSOjXMaCQrIK1rNrFu+jT6lRzlad06L4Bxok3PtkCInl7LYiM7o1P5536Ik+JBm4+d4WMB
 Ap20A7J0qkdV4rfeYEwIm93y47oIkUflDXtkWMmXZg+e+Hp0llwSVuz0Et1wbk0u5lC0+AYLk
 OTPFVz6ensfjPpQVsAHM6oQi1Byogor9ipoNTL3Sg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_040659_698613_D9F1DF99 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for JS76x8
 series DEV boards
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
Content-Type: multipart/mixed; boundary="===============3404225072592952718=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3404225072592952718==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=jRVQ4oRZshmeOh=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=jRVQ4oRZshmeOh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> @@ -543,7 +546,10 @@ ramips_setup_macs()
>  	hilink,hlk-rm04|\
>  	nexaira,bc2|\
>  	petatel,psr-680w|\
> -	skyline,sl-r7205)
> +	skyline,sl-r7205|\
> +	zhuotk,js76x8-16m|\
> +	zhuotk,js76x8-32m|\
> +	zhuotk,js76x8-8m)
>  		lan_mac=3D$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
>  		wan_mac=3D$(macaddr_add "$lan_mac" 1)
>  		;;

for a long time already I'm looking for someone to explain to me why this i=
s used. Now you volunteered for that job ;-)

You set the ethernet address in DTS, to a real MAC address, determining eth=
0.
Now you set lan_mac to a local address, having all LAN ports use them.
And you set wan_mac to a another address, calculated from lan_mac, so also =
with local bit set, and have WAN ports use that.

So, all your ports will have local addresses, while the real non-local MAC =
address isn't used at all.

Is there a reason for that I just don't see or is this a mistake?

Despite, I assume this means that there is no WAN MAC address in flash, e.g=
. at 0x2e?

Best

Adrian

--=-=jRVQ4oRZshmeOh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2fEMkACgkQoNyKO7qx
AnBq3hAAshL7niD+pON+Tll65UHrw/7Sd5dw1JmETMRMu7eL3uHzLeQrqa5QwFUF
MbQuoghTm7+DgvsZ0cmCgeRWuCT7NYCUsF3qCYTa7nqijJm8umDcL+OvUj+Z66eP
M0phhqrjUJDEejihYjuhYBcNocY6uyniP6kWc2QNeIuy+KK1K3V5bYcRPmAKeQ1i
BLqqEyGW+WgvSZeYLk2jVNUsgVpTksq091BP28p5TxaphM6JKDyDL0PSyGEWjCPq
OzmDW9z2X2cVCwforP4lFLjmd1NmHO03EkxFeMnx9lmdYFzeGzNSF8iFAFH86ydK
We9EuyAEfZ6TNeLv5FUZApYP5EaP0q6KeG9P7FzIz8byO0fiWrzTLaNOutFgV3Ln
dcvQjntdUnVodNF7wFjF8M9JAXdkeMo0/r8u5LbIM29JQilskn2zTVA7yrx+OhoY
5GPCHriUwysmsgQ+8ts4sl3XN8EZG7ltriksvdRbfh4ECmbGDzO6MXvH7COHdUn/
AKmORPM5u7HZ0Pn2ya2zEHCK99EYHawH0RbB+uAEBC0diL/ZNpdHfNZgrtUXbv/C
TiWgtvPYKuoD5R+5heDgPoOAaW401MfCAj2Lfnyhm9BX8DQPXW+kWz8SMPjSlHZF
XMRzB0z4pKaC9g3QvQKaFRCWnjV/ldzXr8Alv4C1y+xWTAwLL3I=
=T9BQ
-----END PGP SIGNATURE-----


--=-=jRVQ4oRZshmeOh=-=--



--===============3404225072592952718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3404225072592952718==--


