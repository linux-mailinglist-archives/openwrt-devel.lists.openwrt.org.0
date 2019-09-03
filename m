Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BF3A7132
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 18:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KSpJ1n6HqlYH7yFeggDNSfuSjl850GhIisYYzCHAvno=; b=H+t/I2VX+2I6Gzbis9l1SShn2
	7ndAd52VFgOAkwTya0SkLkXFPmuo5FlrXP9C2MUf64+9b1r93UiTnPBEnxC0a/3yPJHVsWUHaZvL8
	rLTOYbtPaJbB+JNTbQWVuqJUQGuk8+/5div2pbb5DstC1nVHlMlmkT5vyIBrMxTUR2+r1NQvlh8iK
	AHFsQlfOvsfJF3N1g7f/a3s+DS554NIHqx1KyTXyRbrchMDYpUbMv1gjCL5e2h0UKN22mAVEH3Skm
	JN3wcvBQkzAPLmjyrXfud5NfRHQtxjdOE6Wsj9+ZrxhTVqfK7jsZlFI5w/PlMeKRm3ihaKa9x0n8R
	IJWHnPXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C8n-0005V8-A6; Tue, 03 Sep 2019 16:58:49 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C8K-0005OT-UZ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 16:58:23 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 65A211F729;
 Tue,  3 Sep 2019 16:58:17 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: karlp <karlp@etactica.com>
In-Reply-To: <20190903162450.740-1-karlp@etactica.com>
References: <20190903162450.740-1-karlp@etactica.com>
User-Agent: Mailpile
Message-Id: <bYDkJ5tuvGfQbaKw5b6JCsihiixQvLITddtcVqSj236f@mailpile>
Date: Tue, 03 Sep 2019 16:57:21 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095821_815865_BB9B10EC 
X-CRM114-Status: UNSURE (   5.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: eg200: enable status led usage
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
Content-Type: multipart/mixed; boundary="===============7090021649847297076=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7090021649847297076==
Content-Type: multipart/signed; boundary="==tI7CWk9gP52XuXTKG8w74sAe9yLfXj==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==tI7CWk9gP52XuXTKG8w74sAe9yLfXj==
Content-Type: multipart/mixed; boundary="==IJV6id6vgPSHA9sMBQZokZBqasJQ2I=="
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: eg200: enable status led usage
From: Karl Palsson <karlp@tweak.net.au>
To: karlp <karlp@etactica.com>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20190903162450.740-1-karlp@etactica.com>
References: <20190903162450.740-1-karlp@etactica.com>
User-Agent: Mailpile
Date: Tue, 03 Sep 2019 16:57:21 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==IJV6id6vgPSHA9sMBQZokZBqasJQ2I==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CgpLYXJsIFDDoWxzc29uICA8a2FybHBAZXRhY3RpY2EuY29tPiB3cm90ZToKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBLYXJsIFBhbHNzb24gPGthcmxwQGV0YWN0aWNhLmNvbT4KPiAtLS0KCkl0J3MgbWlu
b3IsIGJ1dCBpZiBzb21lb25lIHBpY2tzIHRoaXMsIHBsZWFzZSBfZG9uJ3RfIGNoYW5nZSBteQpT
b0IgdG8gbWF0Y2ggdGhlIGVtYWlsLiBUaGUgb3JpZ2luYWwgc291cmNlIGNvbW1pdHMgYW5kIGFs
bCBnaXQKY29uZmlnIG5hbWVzIGFyZSB1bmFjY2VudGVkLCBhbmQgaXQncyBob3cgSSB1c2UgbXkg
bmFtZSwgaXQncwpqdXN0IHRoZSBvZmZpY2UzNjUgbWFpbCBzZXJ2ZXIgdGhhdCBpcyAibWFuZ2xp
bmciIG15IG5hbWUsIGFuZAppdCdzIG5vdCB0byBiZSB0cnVzdGVkLiAocmVmOgpodHRwczovL2dp
dC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L29wZW53cnQuZ2l0O2E9Y29tbWl0O2g9MDc1YzU3MGNk
ZTA4YzJhMjdmN2UyYTY0OTk1Y2M3NGFlNTJiNTcwNAp3aGVyZSBpdCBhY3R1YWxseSB3YXMgIm1h
dGNoZWQgU29CIHRvIGVtYWlsIiB1bmxpa2UgdGhlIGNvbW1lbnQpCgpTaW5jZXJlbHksCkthcmwg
UGFsc3Nvbg==

--==IJV6id6vgPSHA9sMBQZokZBqasJQ2I==--

--==tI7CWk9gP52XuXTKG8w74sAe9yLfXj==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl1um3UACgkQGai1D9TV
yvZwBw//Qjc5EaM+eAPrYuC8lyL47ALxBRHlRX2iUz/NAtJIztZPXyH88xYXUFbw
1dzNz2uC2jJ/khmkfiJebBT9t/vMbVBoVh1cEo/1PU0+jBpGVwuW5jBAUW5Yez0A
SrFaYql45fqXGKNJBa1pimY/8GmqLNwZbWEdcldLcVtQjcLQ0lsABROYDp5o5fb8
JcKZCQFBGMkUv15fj6oeV8g9bwk53+DdX8rwCNGfih3zvCphCw2DswtfkgEJICfm
m86LGlGL7PmA3FNDqpvdWs3jqPzqLx47Eb1UynTPaEFTHs+8um8MJ97gBaRiLOzd
+KCyzvFPPfpSWpefGmvJyKZTvPdr1ke08nJicuqjc03mc0g1Py6ODGitwTAuMICG
c3ki85QdZ3XbJX708aEhcpNEK06aN25QAeMHsI1tqfiCR8Yqf7cPJBdtyePIpdDz
H+yr38bd/MiDU50d7trBC5dlXP5QozwnpgTpQI9U0PYumvEOvjI2PBk0br9eta0u
eaV3J3FPIsBj6p3jjJ0HcKrDmOBNGRrAaIpgyOP8pZHODpNMo4776JBQs+aAZC7D
lh137K942UF00/gQ2ac0gLtt4DpLlv+a31olaciyKnCVOwS21C7B7Yxma9cmLCDB
MmEl/WGdyG7p5bwrIAYcFx1nF6w7v/R59eW6NtD/e8OHPnWXt4U=
=u4xM
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==tI7CWk9gP52XuXTKG8w74sAe9yLfXj==--



--===============7090021649847297076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7090021649847297076==--


