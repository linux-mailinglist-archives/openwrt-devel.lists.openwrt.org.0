Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0073744CD0
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 22:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U5ri2opXL+TSWT1ncQHakSzIEEq0tO4bzIsNAMzJ8Yw=; b=cUm45kWz6UkV1z1fJPP4BJxFB
	w9YBU72/LeUL6bHfuMJlMc5R7Nu6r+hUAeZzpv/Hj68VANRbb9lUsTP2VuB+j3mCuWOQ1atxZA7LH
	ZcGh7NxanDrxxCQdsXY62kWfdXkm8zA6333GW5SmPbDUaMhOdeCqep0GM5J95IO8qJTyWUJ3duywb
	ukCy4J8X+v5AIOnwRDXgR48dP8Vj3ehJBI3eKjlj4hZ0nV/C4/B42oMRunES1a2nngycAvqqbNGQT
	yAbnHqFzQViAsWMIJ7t8tvxXJPPohHBGDEN7CqkAv6Jd8rPjVJfHW9VXhTbEMNhjXL3h0fP4BOn5e
	zc2Bh0kWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVvy-0006mR-Ep; Thu, 13 Jun 2019 20:02:54 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVvn-0006ln-DB
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 20:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1560456158;
 s=strato-dkim-0002; d=heimpold.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=9Iwjw+RHC/KtsKBoVFkmsMapW4fD3K+SzdHXViIkCp4=;
 b=U/mz4jpGiHATv/KbWFoWWqczfZ2+cod54vRXbnjTFwfShZyTpPLr9jVFT5+cCuV2ZA
 zXZBA15D3bPEf44qbaRexs31WsPI8NFN6SHs28YAERDDy+/kJxINPjq6equVByzEwMTi
 TsB/LcF/MTYJn6TFDrEXb2dWIHabW5D8nmj2jc7jXjnGQoaCgJWuxV8B+b2gav//q4bM
 syY+v6jvuE9rT8ui5foleiOZI7z9PA8q/aBEfSGz6E5EhNxTNPcFvmUUpj+f9WYrRTt/
 hgEFLznYCZv6xnvSoxk1GANGkSNy+iTgWu2dhPWg32nSbIX5o1iwABB/8L50mEyP3NM3
 M7cw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MuXZ4XzaezjGZycNF147TKSBWU/lF1yoSQ9cA=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 44.23 AUTH)
 with ESMTPSA id t027ffv5DK2a5VK
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Thu, 13 Jun 2019 22:02:36 +0200 (CEST)
Received: from kerker.localnet (kerker.mhei.heimpold.itr [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id A68F0149A2A;
 Thu, 13 Jun 2019 22:02:35 +0200 (CEST)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 13 Jun 2019 22:02:28 +0200
Message-ID: <3788004.yiVpGnLRF1@kerker>
In-Reply-To: <20190611210655.18652-3-linus.walleij@linaro.org>
References: <20190611210655.18652-1-linus.walleij@linaro.org>
 <20190611210655.18652-3-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_130244_039306_2C6AF969 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/3 v2] gemini: Fix MAC address
 assignment for DIR-685
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>
Content-Type: multipart/mixed; boundary="===============0607956854368217484=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0607956854368217484==
Content-Type: multipart/signed; boundary="nextPart2436496.UH4ox845Ev"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2436496.UH4ox845Ev
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Dienstag, 11. Juni 2019, 23:06:55 CEST schrieb Linus Walleij:
> The DIR-685 has the MAC addresses in the RedBoot code just like
> DNS-313. Check some magic numbers to determine that the MAC
> address is where we want it and extract it from RedBoot.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Rebase on the other patches
> - Use library functions to get partition and hex MAC address
> - Use ip to set up mac address
> ---
>  .../lib/preinit/05_set_ether_mac_gemini           | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git
> a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini index
> a51c223d85c9..f702e0458c2e 100644
> --- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> +++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
> @@ -18,6 +18,21 @@ set_ether_mac() {
>  			fi
>  		fi
>  		;;
> +	dlink,dir-685)
> +		# The DIR-685 has a special field in its RedBoot
> +		# binary that we need to check
> +		part=$(find_mtd_part RedBoot)
> +		if [ ! -z $part ] ; then

missing quotes here? and is "! -z " not equal to "-n" ?

> +			DEVID="$(dd if=$part bs=1 skip=81516 count=7 2>/dev/null)"
> +			if [ "x$DEVID" = "xILI9322" ] ; then

not sure whether we have a style guide for shell, but personally I don't like
the x in front of the values: since you already quote properly, it seems
not to be necessary.

> +				MAC1=$(mtd_get_mac_binary RedBoot 95040)
> +				MAC2=$(mtd_get_mac_binary RedBoot 95046)
> +				ifconfig eth0 hw ether $MAC1 2>/dev/null
> +				ifconfig eth1 hw ether $MAC2 2>/dev/null

missing quotes? just to be sure?

Best regards,
mhei

> +				return 0
> +			fi
> +		fi
> +		;;
>  	esac
> 
>  	# Most devices have a standard "VCTL" partition


--nextPart2436496.UH4ox845Ev
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEuqZVIsj+7B0PnIAhlIIjA3pZHn8FAl0Cq9QACgkQlIIjA3pZ
Hn880w/+OL8YANEneDmYTGqMVD+K0k0XBjCr6P/3YYnfDd+NCkbxGJppKmi645WB
5pdnLD8Xnp+8QgTughnYduQSoNqW6h+/4XK6aN9N62KNcpZ3e8494jL56wkKKPjj
6CcsXrimcGNmcGL4k2cadVQ3RXcXoe830ECSvbB2KiCUhA721lH0JtvE4UxK/eQr
P5/0BLBj1HIQ1BoQlazKd9TsgHLBcGiPZkrIzt1p/ozq5BR3iZy5WUXnjG5uE/iV
0BxnEV9LnkuBcI//JcPmuPMr5ztjBd0i5448xhNDArwk2KzKjQpl+pt0YkxqdCb8
vakPwWVSaIKdmQ07jUxIoC8fF38s2qGQsrNl517AfazmE83tQ4BAs12PmXJ3Okfd
d3Juj9S7gjunqX+ngERQ1GbabE3yuRvfngygwCQmUavnSHMXuGMOIppQKtWzcPGB
TuaP3IThTSPkgwHkawa75Mcim0/Rf2zVRdEMb5Ui81LsRYetAfUPMlPIH7WCVPlK
xNNwpnchxVLmqiRSsYIS/XKCYu4k04/n57QxjB3a8D1/UOIJDPWkbgBfOt4VCgZv
gE259cp6eDS72xf0aSp5l+X/Q2HovlXUgw/4EkqxejY71BcbUF+APpEGrPMtD1/I
xBQ4ifderxTRGo+YhM595xUmQgmb1QOLiIayJ7bBU/cf8WobZvY=
=wyRj
-----END PGP SIGNATURE-----

--nextPart2436496.UH4ox845Ev--





--===============0607956854368217484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0607956854368217484==--




