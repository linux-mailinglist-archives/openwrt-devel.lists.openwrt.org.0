Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ABFE62AB
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FV4xAAFwhnhpOQUyBa0uTNoXchZZd9n2aEFBTxwLjCo=; b=CMAzaA2LUHwbk8AhlilhYrpWL
	x5LukvW9Wudd5po/nT2gHLL2GfsxDvcWdnVaOu7gEcIMJIlRpgC5FSn1kIpUWxY1wJsbDvjXp8imt
	xAFYlFF+xwpSaL2pg75HFXMmj8+eKlqQjyrHn57C3p0lCV7ynsTDcKGJUfRIKy7o40U0JXHcD0iyV
	PlPBDihkpdVLgusE3fqsWHlv7TppTAYw8Xrpn+zXKo4bf7XHbPhq/H/dEVnZqZNXZuoq5reVA0vix
	4Y4o+lyA8N1Ma6blZ7rwbS6Z1JdQsRgMZVcoYHYvbY0ZPLWvUai6g7jWe5h9qKX7EbM6hwSyA9Z7l
	/nkJjg1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOifY-0001MQ-W1; Sun, 27 Oct 2019 13:33:21 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOifQ-0001Lw-Us
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:33:14 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 121BCA25C6;
 Sun, 27 Oct 2019 14:33:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id 2JNhL0YxIe0s; Sun, 27 Oct 2019 14:33:03 +0100 (CET)
To: Tim Harvey <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org
References: <1572038851-4029-1-git-send-email-tharvey@gateworks.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <855ee1da-8d63-347e-0694-6cc25c7d5e1f@hauke-m.de>
Date: Sun, 27 Oct 2019 14:32:48 +0100
MIME-Version: 1.0
In-Reply-To: <1572038851-4029-1-git-send-email-tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_063313_306368_344133E6 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] octeontx: fix thunderx BGX underflow
 irq name
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
Content-Type: multipart/mixed; boundary="===============7037129374281347691=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7037129374281347691==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="mvYeC9R5N7awIAkarneqMw1ccmcRATMMf"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--mvYeC9R5N7awIAkarneqMw1ccmcRATMMf
Content-Type: multipart/mixed; boundary="U6RQuGHakFThaKoQgSftWafR9De3wGzsL";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Tim Harvey <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org
Message-ID: <855ee1da-8d63-347e-0694-6cc25c7d5e1f@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH] octeontx: fix thunderx BGX underflow irq
 name
References: <1572038851-4029-1-git-send-email-tharvey@gateworks.com>
In-Reply-To: <1572038851-4029-1-git-send-email-tharvey@gateworks.com>

--U6RQuGHakFThaKoQgSftWafR9De3wGzsL
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/25/19 11:27 PM, Tim Harvey wrote:
> request_irq requires irq names to be static/allocated and not on the st=
ack

It would be nice if this patch could also go to the mainline Linux
kernel, so we do not have to maintain it any more.

John already applied it to OpenWrt.

>=20
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  ...1-net-thunderx-workaround-BGX-TX-Underflow-issue.patch | 15 +++++++=
++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>=20
> diff --git a/target/linux/octeontx/patches-4.14/0001-net-thunderx-worka=
round-BGX-TX-Underflow-issue.patch b/target/linux/octeontx/patches-4.14/0=
001-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
> index ef7aef3..5743745 100644
> --- a/target/linux/octeontx/patches-4.14/0001-net-thunderx-workaround-B=
GX-TX-Underflow-issue.patch
> +++ b/target/linux/octeontx/patches-4.14/0001-net-thunderx-workaround-B=
GX-TX-Underflow-issue.patch
> @@ -15,7 +15,15 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> =20
>  --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>  +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> -@@ -1344,6 +1344,54 @@ static int bgx_init_phy(struct bgx *bgx)
> +@@ -56,6 +56,7 @@ struct bgx {
> + 	bool                    is_dlm;
> + 	bool                    is_rgx;
> + 	int			phy_mode;
> ++	char			irq_name[7];
> + };
> +=20
> + static struct bgx *bgx_vnic[MAX_BGX_THUNDER];
> +@@ -1344,6 +1345,53 @@ static int bgx_init_phy(struct bgx *bgx)
>   	return bgx_init_of_phy(bgx);
>   }
>  =20
> @@ -49,7 +57,6 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>  +	struct bgx *bgx =3D pci_get_drvdata(pdev);
>  +	struct device *dev =3D &pdev->dev;
>  +	int num_vec, ret;
> -+	char irq_name[32];
>  +
>  +	/* Enable MSI-X */
>  +	num_vec =3D pci_msix_vec_count(pdev);
> @@ -58,9 +65,9 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
>  +		dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
>  +		return 1;
>  +	}
> -+	sprintf(irq_name, "BGX%d", bgx->bgx_id);
> ++	sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);

I would prefer a snprintf here, it should not overflow as long as gx_id
is less than 1000, but just to be safe.

>  +	ret =3D request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),
> -+		bgx_intr_handler, 0, irq_name, bgx);
> ++		bgx_intr_handler, 0, bgx->irq_name, bgx);
>  +	if (ret)
>  +		return 1;
>  +
>=20



--U6RQuGHakFThaKoQgSftWafR9De3wGzsL--

--mvYeC9R5N7awIAkarneqMw1ccmcRATMMf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl21nIAACgkQ8bdnhZyy
68en9QgAzNxMU15EO1fyo9b7a9aU9jJN/7IjfWJdsvLNENVhISObRjQj1d7/v4XE
7nNyYt7z5SWKn3yBOTx6NmI7w0tqeaEwmPJo/36f0cxxO+1G/G6D469y1XzpoFh9
m1+3BVsrjBPrBEV/K/i9uDFDswBcDEiIVIfe5oBp9vmSV8E65Wjep/yg5S04bvNO
VkjYeWRt2TirXapkRuWf96VhAVNUcJrpBWsP7zY8p+5tL7Sh9C/JnplcRKnCmi4J
FF3l6/tpq6SFOT/nWJ0ZY5M5LUl3ussB2BtlmMEtsfGwvZ4w7vcUtsQ9qfZnwXtk
IfjS/EP54FaRhXJjT7MaP12FGMBMwA==
=S0fk
-----END PGP SIGNATURE-----

--mvYeC9R5N7awIAkarneqMw1ccmcRATMMf--


--===============7037129374281347691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7037129374281347691==--

