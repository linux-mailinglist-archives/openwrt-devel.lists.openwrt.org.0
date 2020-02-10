Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FB8158568
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 23:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T+P0TAI7j1yjBpC8/fXdbN3WsvGMy2vJK19HA+UHp/Q=; b=IZaqAyiawgBJz3SJ/ZCJiUa9f
	prxYm83Bl+8GdRJ9c65MCAfnk5lHIffTbpgUT++J7gRBeEft+9ge4zkJhXf3HC12/zXkP/I6r1sG5
	h2hQNYE2gt53T6sDvRdHIRdTuiJoEEf1xw77A6JSpyYgNMvRfgiO8RuBqaz/cEb9sMCOrpOHWEF4z
	PSTjKqHEmagjtFziSghT2MvwmS4X5a2Yr8LnqUP8GD3WpjY+eSt97BKRSmftQAQaJut2iayWqu+8T
	upYqr+gBwvv9FhDddFo3W926EzbG21EUKeisnGcv3wKhNVrq+oRVopJSEXmdQyjbNqLDFH2lbcITD
	7i4bu+HLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HRU-0003fs-Nk; Mon, 10 Feb 2020 22:22:12 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HRP-0003fJ-9w
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 22:22:09 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>) id 1j1HRJ-00056r-EU
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 23:22:01 +0100
Date: Mon, 10 Feb 2020 23:21:56 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200210222156.GE2373538@lud.localdomain>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
In-Reply-To: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142207_525434_DE47C9FE 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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
Content-Type: multipart/mixed; boundary="===============2419334898928108416=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============2419334898928108416==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dFWYt1i2NyOo1oI9"
Content-Disposition: inline


--dFWYt1i2NyOo1oI9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 08-02-20, Adrian Schmutzler wrote:
> This change makes the names of Broadcom targets consistent by using
> the common notation based on SoC/CPU ID (which is used internally
> anyway), bcmXXXX instead of brcmXXXX.
> This is even used for target TITLE in make menuconfig already,
> only the short target name used brcm so far.

Won't this break various things such as the wiki, the download servers,
maybe other infrastructure?

For instance: https://openwrt.org/docs/techref/targets/brcm47xx

All techdata URLs would need to be updated, but only for the upcoming
release: https://openwrt.org/toh/netgear/wndr4000#installation

This sounds like some amount of work and potential for breakage...

Baptiste

--dFWYt1i2NyOo1oI9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl5B14MACgkQvgHsIqBO
LkawHA//dS7P54MOYavGGVJ9ZdDZhTEHWz8nE7L574zDABF4czql94+APhVQJGFZ
GHosFKRgX7LwnDPt3u31N5n+lM5j0zp53ffnvCV25qNy4eqTU5zlerKD/n4IGKPR
9A9uY93dYQBc2B9TulIr0n3SWyZtQ5Wh7YtrEx7NyCgQJbs4g3uI0iasN48f6Rq3
bI77N9B0BjngMGiROXlUDvCzX7MCSTzRGN+zoZpkeS8vysEq4kXeHmbz2KoluFX3
X8FcN3dMCCLtARWZzVrzGMXcPRNzTTDBJxB50V0BYsNQXF7URfehcORnKVNt5K5Z
eNMwOERYnPJSQClGoijNgd+hzH/Gdr2+hsZbnbX5z5t/oqi8M+98vAP9AMEp3hwR
NdfRWrjXXK7qLC4iYfdDRoCeA6JWB5k9YXTjBVp+H3uy4jf5LuguIPaQi/ykv/og
EeeP3pA/uJWyjSbuh5UcJVDJVjbbshp5Nr+/V/db97qeGu0DUG6VJzdBMjECcx+2
81VD2aW7X9pxkvZsMP0slX0y+bYJj/DzwBqFc633itavyun3zBVrMiWdRTtl9qWn
U1CJwed9UD7Jbv756aBERHp1mMEcTBfs25PcwOX3kBOkp9U0NIAJw67YRzqm1QyI
daoEKgaw+qx0yQkySwp3pRfSFKWzOkywViuYx+E6wMT/DlRg4Xg=
=ny5N
-----END PGP SIGNATURE-----

--dFWYt1i2NyOo1oI9--


--===============2419334898928108416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2419334898928108416==--

