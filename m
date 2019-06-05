Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF93A3618D
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 18:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=92pHfYJgyNIkE9+cn6/nq4aJpUEGo+QRp90rTpLgBNg=; b=FJfGl/gY3xl62SztwEL1GHHQ6
	eU8IrllVta/zUFCJhWlTRAjUFOrHCiMktR3gWfi+AcTMXeDGCD2q1nDMMHSMT6P3G0sBnOBE42I0W
	HNlVndAbolX8ceR8kS2zZIJV2Ub9shCu+nmMwBoXq2OmvqqR0/3cPogQoDbNhtHipjrBIMcImrKUq
	Dmrr9JEvsEECPqdIBczofgWmhePtK9WmWyEWJz6rEEuJuReX6V4qovrauvXtzESbcU4P1Op5ND3HK
	Zp8n0TqvNnD/nImmCr2bjHwWZupbf32KdoCMvX/TbjBukIxI4mR15rHMvJPell/ycwg4m4GMI41ke
	mY4svJ4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZ1M-0008TK-0l; Wed, 05 Jun 2019 16:44:16 +0000
Received: from palmtree.beeroclock.net ([2a01:7e00::f03c:91ff:fe93:f66c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZ1F-0008Ss-Ac
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 16:44:11 +0000
Received: from mailpile.local (palmtree.beeroclock.net
 [IPv6:2a01:7e00::f03c:91ff:fe93:f66c])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 7870E1FB54;
 Wed,  5 Jun 2019 16:44:06 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
In-Reply-To: <20190605161522.24420-1-john@phrozen.org>
References: <20190605161522.24420-1-john@phrozen.org>
User-Agent: Mailpile
Message-Id: <JMNn3NJqRy2nYkYF55pSH58ED5C73bihLFSS5IxS2342@mailpile>
Date: Wed, 05 Jun 2019 16:42:25 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_094409_637827_F8C04EDC 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] toolchain: add support for custom
 toolchains
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============6438406507413296404=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6438406507413296404==
Content-Type: multipart/signed; boundary="==VV2AfMuMnYSL2hDN9iYNu4RaoDLsA5==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==VV2AfMuMnYSL2hDN9iYNu4RaoDLsA5==
Content-Type: multipart/mixed; boundary="==8LGjrDmyPTB3A29mMXmCr3z6YN4939=="
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] toolchain: add support for custom
 toolchains
From: Karl Palsson <karlp@tweak.net.au>
To: "John Crispin" <john@phrozen.org>
Cc: "OpenWrt Development List" <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20190605161522.24420-1-john@phrozen.org>
References: <20190605161522.24420-1-john@phrozen.org>
User-Agent: Mailpile
Date: Wed, 05 Jun 2019 16:42:25 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==8LGjrDmyPTB3A29mMXmCr3z6YN4939==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


John Crispin <john@phrozen.org> wrote:
> The requirement for being able to add custom src toolchains to
> the build system has been brought forward by the members of the
> prpl foundation. This patch tries to address this requirement
> by allowing a ned folder to be loaded into the tree call
> toolchain_custom. The subfolders contained within have the same
> layout as the toolchain folder. By placing optional Makefiles
> into these subfolders It is possible to override the versions
> of the various toolchain components aswell as their patch sets
> and make templates.
> 
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
> diff --git a/toolchain/Config.in b/toolchain/Config.in index
> 82dddbc209..cad492aa1e 100644
> --- a/toolchain/Config.in
> +++ b/toolchain/Config.in
> @@ -155,6 +155,11 @@ menuconfig EXTERNAL_TOOLCHAIN
>  		  Specify additional directories searched for libraries (override LDFLAGS).
>  		  Use ./DIR for directories relative to the root above.
>  
> +config CUSTOM_TOOLCHAIN
> +	depends on DEVEL
> +
> +source "toolchain_custom/*.in"


Could we add help text here, based on the commit comment that
says how this option is to be used?

Sincerely,
Karl Palsson
--==8LGjrDmyPTB3A29mMXmCr3z6YN4939==--

--==VV2AfMuMnYSL2hDN9iYNu4RaoDLsA5==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAlz38P4ACgkQGai1D9TV
yvYKSBAAi/WccrDQzh6f43LuruM9pWoD+3rBupclFGDtpwBox8S7mIzBYvB6mU+6
bCwDxKqHedUY8sZ3Lu4ffnNNz+OcJzOu/Ahp9D9Vk04HuhaLs0Aj5mGND1sZEhQn
Gm17f2HZm5GH7j629W+YyP2v9kA7azQkhoqIpO9eTjX1f6BfUbnSBYYiNzAUSmVk
YERSjbD0HNCgoT9CxLJ7p5/XSmE8pdpPO0SkNPbcFj62Mpay+++KREMD6i+1VHrl
7FGbSX4iyet8AzUNH/65tEFD+pxK9p8CcRGOgxCaCqhLJ/1J7vyh9GCeBAhLvcc1
0Q+aDmIv7bvRJrSXHUtt9XYm7Tn99bjee5I09TOQgQdWmPBkXP+oHL5dUrPJhyHW
/LTLwho3dKZ6k6LriikrGQpnnfGfU3g36/ruh70xKx1tfmvoVpMTIzIRQeoIRJG/
HzZYhZo2p8jPFkZ2eGYBaMLPQSn2oxCv9bIaeRcU/n3KTOOVve5tvtSrhwFfVETj
Y9bU7vnxvBb9OftMdr6bNM0WIVzeapIfaeL16OKnvFo8OabptPQJx72SSwzcCNPx
Co/oXXT3MSSG0bSg0dR7n7r5dMRqLZz4Am15xiloAvV0fJTnT0f96LClmCnovnR2
UPD6TBwI4ahRrs3KVLqTPwY48ragpS31h6uPPX+vBgpelydTJic=
=xlvd
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==VV2AfMuMnYSL2hDN9iYNu4RaoDLsA5==--



--===============6438406507413296404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6438406507413296404==--


