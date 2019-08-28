Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A609A0BE5
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 22:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ksA/s92Z7iaTbuwVqhccVUy4TSHZvKpchyYqpUvJswk=; b=ICtkCpryhup1REC6Jp/nIvHOD
	lg8Prs+RGOqISeCISKRsLZOKRTURLrLc3F9Zx9Ra4HowuCntdx1zXjOr1iN1EX7ZoODmVwYzFn6b4
	5i9j47Z8NRmZinal4gc9FiMijZM4eS7sSxQxpZJnQi0fd49hmRnyOpsjPpiZiFplNMT13vm7lfTt9
	SCLZ+jL5JMX+aoAgyZnWGxGekXSeYj51Abg6co7MXOCSyMCLa/ZEn6Hos6Er0SJtxbL/UQyzIw7DC
	I3/47BPHc0x3A1qm8dFT7utr79xxVsI/mHAs1pE3RAtuMN0NvfRxAK44hXGMQ4RFRA2/OUgg7KfKS
	JCaBu2eAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34wp-0001D9-HN; Wed, 28 Aug 2019 20:53:43 +0000
Received: from palmtree.beeroclock.net ([2a01:7e00::f03c:91ff:fe93:f66c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34wg-0001Cb-CJ
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 20:53:36 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 7DCD41F4CF;
 Wed, 28 Aug 2019 20:53:30 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "David Bauer" <mail@david-bauer.net>
In-Reply-To: <20190828204224.6786-1-mail@david-bauer.net>
References: <20190828204224.6786-1-mail@david-bauer.net>
User-Agent: Mailpile
Message-Id: <dK9VkDspReYsAS9HCUL9ToXZtLxqYKAW9ePiswE2236c@mailpile>
Date: Wed, 28 Aug 2019 20:53:13 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_135334_682281_1F5B79D4 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH] lua: create lua symlink for host
 installation
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
Cc: =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7202946288009455895=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7202946288009455895==
Content-Type: multipart/signed; boundary="==GCcH5NCvdM7B2GP746JLJpQUHKyNCB==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==GCcH5NCvdM7B2GP746JLJpQUHKyNCB==
Content-Type: multipart/mixed; boundary="==cziCXwh86AxS9FMMHdKhA94CcLskMG=="
Subject: Re: [OpenWrt-Devel] [PATCH] lua: create lua symlink for host
 installation
From: Karl Palsson <karlp@tweak.net.au>
To: "David Bauer" <mail@david-bauer.net>
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <20190828204224.6786-1-mail@david-bauer.net>
References: <20190828204224.6786-1-mail@david-bauer.net>
User-Agent: Mailpile
Date: Wed, 28 Aug 2019 20:53:13 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==cziCXwh86AxS9FMMHdKhA94CcLskMG==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


How is this meant to work when you have both?

David Bauer <mail@david-bauer.net> wrote:
> Since the binaries for both lua as well as lua5.3 contain the
> version number, invocations of the "lua" binary are failing, as
> it's not created anymore for the host package.
> 
> Fixes: fe59b46 ("lua: include version number in installed
> files") Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  package/utils/lua/Makefile    | 4 +++-
>  package/utils/lua5.3/Makefile | 4 +++-
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/package/utils/lua/Makefile
> b/package/utils/lua/Makefile index a2870448bd..e376e8c472
> 100644
> --- a/package/utils/lua/Makefile
> +++ b/package/utils/lua/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=lua
>  PKG_VERSION:=5.1.5
> -PKG_RELEASE:=5
> +PKG_RELEASE:=6
>  
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
>  PKG_SOURCE_URL:=http://www.lua.org/ftp/ \
> @@ -133,6 +133,8 @@ define Host/Install
>  	$(MAKE) -C $(HOST_BUILD_DIR) \
>  		INSTALL_TOP="$(STAGING_DIR_HOSTPKG)" \
>  		install
> +
> +	$(LN) $(STAGING_DIR_HOSTPKG)/bin/lua5.1 $(STAGING_DIR_HOSTPKG)/bin/lua
>  endef
>  
>  define Build/InstallDev
> diff --git a/package/utils/lua5.3/Makefile
> b/package/utils/lua5.3/Makefile index c9e9bebb1a..7f835dd41f
> 100644
> --- a/package/utils/lua5.3/Makefile
> +++ b/package/utils/lua5.3/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=lua
>  PKG_VERSION:=5.3.5
> -PKG_RELEASE:=4
> +PKG_RELEASE:=5
>  
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
>  PKG_SOURCE_URL:=http://www.lua.org/ftp/ \
> @@ -118,6 +118,8 @@ define Host/Install
>  	$(MAKE) -C $(HOST_BUILD_DIR) \
>  		INSTALL_TOP="$(STAGING_DIR_HOSTPKG)" \
>  		install
> +
> +	$(LN) $(STAGING_DIR_HOSTPKG)/bin/lua5.3 $(STAGING_DIR_HOSTPKG)/bin/lua
>  endef
>  
>  define Build/InstallDev
> -- 
> 2.23.0
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--==cziCXwh86AxS9FMMHdKhA94CcLskMG==--

--==GCcH5NCvdM7B2GP746JLJpQUHKyNCB==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl1m6boACgkQGai1D9TV
yvZVHBAAmX8Il74CYiIrwmQBLqjiAV2ECv0rHpWjp/fYrnU0/nXUxHSLleaRxjeN
ygczSAcA5+ag4guOTZMq1jzQe/zZ4+OBw/ZLTw5S8GB9A3by9Blz3i7FEzkMRFBs
PwaRCKSHJrBC0m0uA2FKOY8G0uk9++OHcRqwMCti2uybRDCjedKhYc9Z7hW0Cy75
f/IU7N9xJlsZYj67kS8nV+QlFR1LTgMKXJU2JgywrtrK1HQGgcwMFdFEOV2J8xoB
AdZdSqZ3SEeHcKCU5FLotnzgGK7Em9Gsj/k4UHrot3HiMENOPYFzn0V4uo4LMHyh
jaGS/JQAYdpLqmmzb91VNd24RAh8Z3k/n1hX0HkztZ19lOcRj029j5PxQNubboY7
JZgAOVdqyjYNLnWGC8g5DQ6JTpXDaXolELBHUYLPflMuw+q8Phx21YFSni9AXd4I
w1lI3sz7WxES/9jMU4vjm3xrDkb2UsMAk6Qto2TtD9D5hO+OvwD2ELxHo6qaNnGt
0IDPaCGfGXVhEgNytAomwpFTxbs8Y9LJaw1Ublzwi9gS0A0dMHL9/3ULGwrW6Pbv
4o/sRlVI707hMY89zmQ4dbDEuyofNsVGDlW0p8s6+zexHiXzV7qgJBpdTRox6Nwo
cDdhEH1Qn/lAQAFsDO683vyy/+nFVbi7EWfZQYglorVi3zfYbRk=
=YO+Z
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==GCcH5NCvdM7B2GP746JLJpQUHKyNCB==--



--===============7202946288009455895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7202946288009455895==--


