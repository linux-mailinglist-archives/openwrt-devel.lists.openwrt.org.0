Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCFE8A361
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 18:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wXzdQmrt1nz3TUptWqvNgwdGV8L0GIdirPyZvJmUi2Y=; b=M277a/TJt0U9l+CsjGKrFzlOE
	pvzHz3s0A6dxAHY95s9VRPRywvH64RWNip8eLPdjLf59Ezo3gr9ZYp406PuVbyPYrHSIGiR5mTJOF
	uPu2AshHibebdAH9pf3llFUExUn/p1SvkQpQw7TjxV8tgtZ6lQJxU7U+qo2f3y/omfVIEBXU85KJ3
	Q9q9bpnWeAJCe8xUiOFrp5fHLxsDp17e+IYCIUx211RwBP7Zcx9a1mvFVDqNoX2UtDjuCHMWz1s/1
	UhOP7pa3nic02TlMrChaX04P3vpjIU2jTsOgvwaIUtJ/JugSI3GppUrD/jkZoFd7fZjDVSkDYP84g
	Dyu78TSEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDDl-0003t0-TH; Mon, 12 Aug 2019 16:30:58 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDDZ-0003sc-J5
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 16:30:47 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id BC6C01F6F0;
 Mon, 12 Aug 2019 16:30:39 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "Adrian Schmutzler" <freifunk@adrianschmutzler.de>
In-Reply-To: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
References: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
User-Agent: Mailpile
Message-Id: <6JFZMnrMDEEUsp8H3PdUX3HwuhvWjtqNG6mdeMPf2364@mailpile>
Date: Mon, 12 Aug 2019 16:28:43 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_093045_890242_4F2BCECF 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: convert devices to
 interrupt-driven gpio-keys
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
Content-Type: multipart/mixed; boundary="===============2748441359738221662=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2748441359738221662==
Content-Type: multipart/signed; boundary="==a2Hyt2fhoEZmU5gLLnRJ6tTmvjNwCS==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==a2Hyt2fhoEZmU5gLLnRJ6tTmvjNwCS==
Content-Type: multipart/mixed; boundary="==q6HooK8XdvrZYjmhYFdR3SKITetMaR=="
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: convert devices to
 interrupt-driven gpio-keys
From: Karl Palsson <karlp@tweak.net.au>
To: "Adrian Schmutzler" <freifunk@adrianschmutzler.de>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
References: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
User-Agent: Mailpile
Date: Mon, 12 Aug 2019 16:28:43 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==q6HooK8XdvrZYjmhYFdR3SKITetMaR==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:
> This converts all remaining devices to use interrupt-driven
> gpio-keys compatible instead of gpio-keys-polled. The
> poll-interval is removed.
> 
> Only ar7240_netgear_wnr612-v2 is kept at gpio-keys-polled, as
> this one is using ath9k keys.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> 
> ---
> 
> Changed in v2:
> - Rebased and retained ar7240_netgear_wnr612-v2 at polled keys
> ---
>  target/linux/ath79/dts/ar9331_etactica_eg200.dts             | 3 +--
> diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> b/target/linux/ath79/dts/ar9331_etactica_eg200.dts index
> d18a239d32..721e676ed7 100644
> --- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> +++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> @@ -15,8 +15,7 @@
>  	};
>  
>  	keys {
> -		compatible = "gpio-keys-polled";
> -		poll-interval = <50>;
> +		compatible = "gpio-keys";
>  
>  		restore {
>  			linux,code = <KEY_WPS_BUTTON>;


Tested-by: Karl Palsson <karlp@etactica.com>

(Only this hardware, don't have any of the others nearby)

--==q6HooK8XdvrZYjmhYFdR3SKITetMaR==--

--==a2Hyt2fhoEZmU5gLLnRJ6tTmvjNwCS==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl1Rk9gACgkQGai1D9TV
yvbRqg/8DHac/DnnjTHsD/b5lLvhN/ZjuTK3vyg/+jTrs9e9Uogdd2CYGqrRZOmi
Pp30cCRtkB4HsZgixTAo9aHcqT0ZUKU16Kp1plA1bUkYk5yJaoyhYT1W1yse+nU/
uk5fBSV+mGSh4Y2X4ehCLlsGqXqfHfD97Xm5jFCnCH9UCdJAIvlRoXRxAUN0iM3S
QCP/nFFmo0BpgrSO0X+GTTGGxWYzWj4QI/40dWpzIUSI2Wo2PmBpX7i33gneUc69
zgka779GWsyWRmqYYLjYtLO+jXzdtqxiW4Ng66rxc9uLO4o+0FvjLVG2zUgWYqOg
8lbem+Er3Q9qfwb36nE2Qd7so+gz6rEyIp2IWZHkSVOi0aQLhCdJu9sNeisP4Tpu
PVctlZO2HaUD5yE9mvMgApc2GdtAAqHtJ0k3KNgSPxtptz5wM4qWecFwzYN1Gc4v
WFPqs0aF/Q3+iTMlLQJaMx68tfiMZCAhI00PPWifq85dcdph5zHT/L/2VBxS4SQp
9Fnan/Pm7Ls5oZiDt/uBTke8+QvzJK70NaXIqoSUwypKb8aZTllrrWrmPdP1/tMA
fIMsxFcf5FuI+t9wN/1TmwNIkDXwi8TcOIVUMZ5a4yrTwLpPDqAdZozsI0auNRp1
38PLewiatlbvz8wZo2Ab+PBNheenq8d1t7LSoCsaKQwoCXVPgOU=
=qBTs
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==a2Hyt2fhoEZmU5gLLnRJ6tTmvjNwCS==--



--===============2748441359738221662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2748441359738221662==--


