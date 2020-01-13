Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8062D139438
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 16:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OAPe3vFiS4EJW5mCLvU6oYTF7OHwA75KHfQJJci9jWI=; b=QG9CGJkqgFQ/Fp7iqzxLl1aaX2
	LEZXk+ro+rLnfNga4sklqI0nuJIYwJKUZPpCqBaEIZ+e7YNT+GHTpcoUca3mux/4O13STlxMHuwWw
	eQS0vPnIOJhbrEzHtVief8VEW22mas2I9f+SrrFXz/DsG7tDmlmQBZjiLwPRZj++ryO+ZYvrpLG2I
	KcG0Y5J4HVpL1VTCoc0ZbWqezjqiUe/Em13OQ2Z80t+nIFGujVvTZ3fP7xaOuIehmjvDXDlEwfEJZ
	YSOeu25CcpVWH11E1VvmEH7vntiDhFwZWg5iL9fUGsuGxYK3Bp31rQBJT1pxQQXx2pE1AL6qjM7He
	8nygjj4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1Eg-0006To-AW; Mon, 13 Jan 2020 15:02:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1EY-0006Sj-6l
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 15:02:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id C09D24D65;
 Mon, 13 Jan 2020 16:02:21 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 24627a55;
 Mon, 13 Jan 2020 16:02:11 +0100 (CET)
Date: Mon, 13 Jan 2020 16:02:20 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200113150220.GA13630@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_070226_399666_154A0D7C 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Security Advisory 2020-01-13-1 - uhttpd invalid
 data access via HTTP POST request (CVE-2019-19945)
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Jan-Niklas Sohn <jan-niklas.sohn@gmx.de>
Content-Type: multipart/mixed; boundary="===============2756883579079815488=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============2756883579079815488==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Security Advisory 2020-01-13-1 - uhttpd invalid data access via HTTP POST request (CVE-2019-19945)


DESCRIPTION

An invalid data access can be triggered with an HTTP POST request to a CGI
script specifying both `Transfer-Encoding: chunked` and a large
`Content-Length` which exceeds 2^31 and is interpreted as a signed negative
number.

The negative content length is assigned to `r->content_length` in
`client_parse_header` and passed as a negative read length to
`ustream_consume` in `client_poll_post_data` which will set the internal
ustream buffer pointer to an invalid address, causing out of bounds memory
reads later on in the code flow.

A similar implicit unsigned to signed conversion happens when parsing chunk
sizes emitted by a CGI program.


REQUIREMENTS

In order to exploit this vulnerability, a malicious attacker would need to
provide specially crafted HTTP POST request to uhttpd. Something like
following:

 $ cat crash.poc               # crlf line endings, ends with 3 line endings
 POST /cgi-bin/luci HTTP/1.0
 Transfer-Encoding: chunked
 Content-Length: -100000

 $ ./uhttpd -f -p 127.0.0.1:8000 &                 # start uhttpd

 $ nc 127.0.0.1 8000 < crash.poc                   # send POC to uhttpd
 [1]+ Segmentation fault (core dumped)


MITIGATIONS

To fix this issue, update the affected uhttpd package using the command below.

   `opkg update; opkg upgrade uhttpd`

The fix is contained in the following and later versions:

 - OpenWrt master: 2019-12-22 reboot-11760-gf34f9a414dd3
 - OpenWrt 19.07:  2019-12-22 v19.07.0-rc2-32-g414ea309271e
 - OpenWrt 18.06:  2019-12-22 v18.06.5-40-gb90156361152


AFFECTED VERSIONS

To our knowledge, OpenWrt versions 18.06.0 to 18.06.5 are affected.  The fixed
packages are integrated in the OpenWrt 18.06.6, OpenWrt 19.07.0 and subsequent
releases. Older versions of OpenWrt (e.g.  OpenWrt 15.05 and LEDE 17.01) are
end of life and not supported any more.


CREDITS

The issue was discovered by Jan-Niklas Sohn and fixed by Jo-Philipp Wich.

--C7zPtVaVf+AK4Oqc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEWRluomwoVL5Gc02W/IrPNfed8W4FAl4chnkACgkQ/IrPNfed
8W7qhAf+OrrElPtTBCu0cYmQuUeMNva4YHa8lR+gI3odlWEGajFU4Fw9EfqHq998
w7NyyWR+0U9sN3fbIItWuW7KVh59p55Ltdq3Pz+DRdAmHtKXWYLA6M40GE4LOMBR
oTiyQfU+B9cBUY/9oGGMm0A0prHifkTLJEVyqICcDL6w3A84QPpvQ4ZfR+Cakani
4J2UaPXTx2b1mG00uOvAO6O0KKRlwidPlvho2ri3c+dI2sLF40OyxoAOBoNMAfuT
AWUR9NEQAv5CBQFeyUSaIckyjZaEOZAi2kQjG38SPhvQDJhCwcBcEz4btNVrcRYM
QJ0KTtLaXpOg62T7C/5ILxaEp1NCGw==
=nIuc
-----END PGP SIGNATURE-----

--C7zPtVaVf+AK4Oqc--


--===============2756883579079815488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2756883579079815488==--

