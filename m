Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E83E1F3C70
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 15:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a8KRRCFmsP6tEZHauSXT2QJ455Sc2QQAdUi+dVGFnTk=; b=mi/9/mYHzELJxksrq2qcxWmXi
	WtlIYnZwbHb/g+Pde+hiIx1ASqyKAvuhtEsGtYehrC6cbWxxJnDYFsuTUusAcMAUIe60hUzz5kxjE
	+u9W+ez1JzwacoExVSSqi+3vyLRAIBPbupWl5SOWyctD/mTiko7AAVQBMXkgcCvk+xl9tkzPACoxv
	t92vqM/tcC4H6MQgou9WMp1YRYO8kBAXzdIwOTZ+1oReH23Pn4qnGeEg9aWBGPlgG/a0gwdpnTZEI
	7QsHgwVmIUBVMO7mscRn015rWfTID8Jm2YryvCp+f73eGPUuF/YMn5jlpcavYShuCjzmJDYXNIWvN
	lv7EF6NjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieJj-0004fw-3N; Tue, 09 Jun 2020 13:29:27 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieJO-0004aa-WD
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 13:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1591709345;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QiIQZI6U3qAV1HJ4jyTMcJ0gTMTGXHrcYijtW+ZVj00=;
 b=jqC+4f160GzTWIbnonZ7LSwBz8yFMlOhdrCrJcljHIlcWU4pLQgKNiYmFjzR6ClNJ//DD8
 k+8wefc9D5y6hMiQf5amkJCw3Gtnpnl3hPJAXMA7OA8Xyz0BVLpVXeC6vv+cq6IIlKDoTB
 ncmY72mIuoXYI45hJQW6XYvaA/ZUgrc=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 09 Jun 2020 15:28:52 +0200
Message-ID: <2039656.4ZSncNqmDY@bentobox>
In-Reply-To: <20200609132304.31669-1-sven@narfation.org>
References: <20200609132304.31669-1-sven@narfation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062907_567938_5D7388BA 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Disable TCP
 segmentation offload for IPv6
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
Content-Type: multipart/mixed; boundary="===============7651567056168055141=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7651567056168055141==
Content-Type: multipart/signed; boundary="nextPart2179802.Ao97IoIz2i"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2179802.Ao97IoIz2i
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 9 June 2020 15:23:04 CEST Sven Eckelmann wrote:
[...]
> The problem was first observed on OpenWrt 18.06 and OpenWrt 19.07. It would
> be good that this patch (or maybe even a better one) is copied to these
> versions (and then refreshed).
> 
> Thanks
> 
>  ...le-TCP-segmentation-offload-for-IPv6.patch | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 target/linux/ipq40xx/patches-5.4/712-essedma-Disable-TCP-segmentation-offload-for-IPv6.patch

Ok, master doesn't use a patch file anymore to integrated the essedma
driver. Everything was moved to 
target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/

A simpler patch will follow in a second.

Kind regards,
	Sven
--nextPart2179802.Ao97IoIz2i
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7fjpQACgkQXYcKB8Em
e0ZaoBAAmfVK/9UcKuYYDHnbW6O8JNaNZtr5U25RUjIFVOkAFgOjDQDpsyb8lz6X
VyFaMKAq4/4cDnE6uqrSSQ/YfSdLluHnEX09qZgCUBOfJCYbh/pfy3qKEoL6J9Hk
6EEqQb0djl/EJdbCfWpsHDQEWqNGSc03FcO1etsxVJetBoZHEAwhmcq6fmQtnE06
Pt6ooPGgPQ+3Xg9ehVRMIEh9ZTFZVgoDCEioNSAt9M5tR37O7iGlaM5NvHeSf3dT
r97MHs3IRNh5Y8kZTRQu00HBTDc9thkqV2558HlgyEAtWGYPxQLgTTLqGdIF05Ta
QxJ0EdxkRNE2soZ0R5iA8Gi7/hYkHHJaUvRlfZ8dxnvudJ15Dwj1FlWjeDbqiwWF
YvR33X/aFOYKCAxSktjua0eW/2JsN1T7f5c76L7o2EKGwnniCr7N6URU6yjN5iyl
H5CZG1Xl+IIpTTVfADDzPP5oGr73hHrzqB0mynDFFQDgpB14IJjdee/DQp+6Hz4k
rbt72RiCrJufAlkL9wevMyDWoyCQuJgPXjsuBEdgNcydNELEWOuho0H5L3mV1xgR
uz3gN7g7n3FKFnikpxD25MXwcrpWcDCl4ZU4PCqGwoyOs7B3j/ZOx9FOEKku0gXN
zl4qduZHmNqvRIIcjoiMWjYEfNXdFvt+s2Cpxdg+QWXNITfFXfE=
=iqmu
-----END PGP SIGNATURE-----

--nextPart2179802.Ao97IoIz2i--





--===============7651567056168055141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7651567056168055141==--




