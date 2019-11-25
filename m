Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F38109217
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 17:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ioKAXMG4ZmCF/lZf13THWK22BhUPG3B9H4UTCw/UkW0=; b=RACf5R/9CE3MvA6dJeN7cKmj7
	o4whKwtA8AlN78zGiAMl2v+AYpCvMuuilf02xEhy82+7BblmsHuRrR7vr2K/xex1lRd8tgKTLsf5m
	jtrUNiTqnbAtlbBJV69oAQ0FHowBzG5jKZR90/xGfpHNwGDJzg9lqgkBAybOuOZcHWCaGlesLq56O
	AXeD66ncqzYzmTo2C47sZEcMQWkMG38j+eEhlWniZ3XnLS4oOcHESSo0JQvBGrtc9CUJilCWa5yQo
	bMc7afFKdM+eizgWMQ8F0Ug8n3sUoU7yss2ufu/zayXED7LTDIgGfxtq+Z1vg6kVNP1nCe4WG8qcX
	frv56U3lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHUW-0001vJ-2o; Mon, 25 Nov 2019 16:45:36 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHUO-0001uq-Ta
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 16:45:30 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MFb38-1iazNO3yYg-00H4zv; Mon, 25
 Nov 2019 17:45:20 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'mans0n'" <mans0n@gorani.run>,
	<openwrt-devel@lists.openwrt.org>
References: <20191124215301.1424-1-freifunk@adrianschmutzler.de>
 <8fb7aa97-879c-4826-aab5-f089c72d2bc6@gorani.run>
In-Reply-To: <8fb7aa97-879c-4826-aab5-f089c72d2bc6@gorani.run>
Date: Mon, 25 Nov 2019 17:45:19 +0100
Message-ID: <033901d5a3af$b9d31380$2d793a80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQFyyBRUU9F+zKqzWuRgj4uHdVuGPAMQiMlGqElIqUA=
X-Provags-ID: V03:K1:A5jHuvdVXCPoGjTvdUFdOn81iiaGkk667hiVHOZeeodxiTip9zT
 wzwicrv0UXTajF3CKvsIYZPFk2PuJqFGbLC9Gz8cic04NmEZG09kCvpA2f+LL+Dc/DhY6bq
 U7jKOMAivzyvA7RhWzeVvstetgbT7qWy5iz6UoV3mi2eMGQZqPZNxx5b1rlvHUBxFrtE+Vf
 dVGgnjWNISstcsdQy+ulQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7+dglQWd7zA=:KwSBXB6C43ENjT8jqxF/gK
 7vSAaiBzHQbPmpH0+0mHyQV/5K+t+cEn+SpUc0vIGQ64y+VijDmLGYhSQLsPX04OLWflHVb+O
 wLfn602Ay+moBpzS2V1scSj3Hro8FM/qf0d+Mbo9TGp8okxYbFBJY01ndFmlXJa+laeneTugG
 sUj525YhTx2BaR5wfiOTxoo2f00lZ6g1mRZ2NY5kPhnvqdsavA4oP+sYS0OnajXgbexl9MhxR
 6+Cd7Dm8+rnU8gWhZCTQ6k3Qrr/VWA0SzrG5J0oX58LmyVVY5zM8PQE8IYYZDhq5oZWsUF/ZX
 iE9Q4qOodQwtXliTZkrEQ3/PtncLS5GUYLz4YN9pIDRO5LU+1uAHfBshDLFre3vs605Nf51Le
 0ZBAQBR5Mc9fuMzeTxAtyZNKek7avaLhiub+PjexCt2GwG5/eda+MqIWZs3bbmnMIpGDZxEQd
 WGGpqYNnUAkTJV0zXLyuOfs0g7OjWc0BbIKf9FRHa2YonU6tXrMIO6ucISQdkCjsMJ1Lp1pZj
 iL6XGnORfta2/h4WpREpU0gS0ifllM+g0klG+Tt4b8z/bfKukSI2cyQPIj6BX3nwY+X4jm6bp
 ZoWoqLayTS8WmYlvusHDwYCRuyaZGbpfprTf2KpDGusXIha43Gyb+ms4f4pkdDW/N+c7ZK9mS
 g/wLKxWyQtaLBJqXeF0tAoZXQ7tBC/l0RWwtv5EKsN7VBR0yCJnfHR4G293lADtkYXOCT80u/
 g4PTlQuUwbCybOzmlp7+RKQaarwj3D3wqkt/1BVEk48yMlWt4tI5UmsBNLm5LqIaMfFH52x9f
 WpApJxAINXJ4eAxK1VWzEGx3dy+BR4LYNRg3zTfT4wZfzRp9LG82akgW+XW5mY2ixsk0gJTCV
 ZDBrOF8TGZYyKP/My+4IMVv+VfT8FR0mRHjo34EDQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_084529_247774_367F7837 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: remove dts-v1 identifier from
 DTSI files
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
Content-Type: multipart/mixed; boundary="===============2016995516905025963=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2016995516905025963==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=3xRz2kpjINVocr=-="

This is a multipart message in MIME format.

--=-=3xRz2kpjINVocr=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of mans0n
> Sent: Montag, 25. November 2019 17:33
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Subject: Re: [OpenWrt-Devel] [PATCH] treewide: remove dts-v1 identifier f=
rom
> DTSI files
>=20
> Hi Adrian,
>=20
> I already read your previous mail two weeks ago, but then I was not very
> familiar with these mailing list stuff (still I am). Sorry for the late
> reply.
>=20
> On 19. 11. 25. 6:53 AM, Adrian Schmutzler wrote:
>  > The "/dts-v1/;" identifier is supposed to be put once at the beginning
>  > of a device tree file. Thus, it makes no sense to provide it a second
>  > time in to-be-included DTSI files.
>=20
> Three months ago I was totally on your side, but while preparing for my
> A3 PR, I noticed two things:
>=20
> 1. The kernel also has (quite many) DTSI files with "/dts-v1/;". I'm not
> sure if this is intentional or also a mistake.
> 2. AFAIK documentation does not prohibit DTSI files with "/dts-v1/;".
> And DTSI files in OpenWrt follow v1 syntax (and not v0 nor non-existent
> v2), so I thought it would be better to clarify that. I'm not sure if
> it's okay if the version of DTS file is different from that of DTSI
> file, though.

Since I received no feedback here, I went to the devicetree-spec list.

https://www.spinics.net/lists/devicetree-spec/msg00893.html

Based on that, having dts-v1 in the dtsi is discouraged when it's in the dt=
s already (though not restricted by the parser ATM).

It would make sense if it was _only_ in the dtsi, and the dtsi being first =
include in the dts.

This is what's currently done with qcom-ipq8064.dtsi in ipq806x, although I=
 suspect by accident.
I actually think about removing this one from the patch, or moving the defi=
nition to the dtses instead.

For ath79/ramips however, all DTS files feature the dts-v1, so the proper (=
though pedantic) way to me seems to remove the entries in the dtsi there.

Thanks for your thoughts anyway.

Best

Adrian



>=20
> That's why I included "/dts-v1/;" in mt7628an_iptime.dtsi. I don't have
> any objection to this patch, I just wanted to leave a comment on this iss=
ue.
>=20
> Thanks.
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=3xRz2kpjINVocr=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3cBRwACgkQoNyKO7qx
AnCnYA//U0FIutKirLMnfYvi3RHF5uRR54t5T96xpEWYFLPm8cgmmYlqNffQ9PSq
U/7OK4sZncwfyEtf2smaQ0KA2s01iP1uKXcp00jfsB7YVq/ep329XaEmIYMQrarF
ksisnFoeViVquWbfRkR+N90Y22XZYi3Q+TP1DOo5P/7Hjl/AgeIyCGVqtA4YSDW9
jNVDB1XO01T/ja9EmOn/aiF31TveB3SNcG07wRwV5C8SsPTK2F5W9G/AYT9kcTaA
pZkhEMGY33jW/MG0UGapfeyH2IJKtihgJR9MD07C+tPkL6SQcP14WMcL8/Qa0SHB
bIlM5XMsdp3ABhtV9AlS+9xGhj+ofd/w07XTKzOAi2Zf9BNqg5yOHxivvD6DsIRz
Ec5Dz3xENfbmcbIKMRgCLlp0NlGwLLu7jH6Yrfy66AvTfb/NsznvXziNoOnS7D2M
WlS3GRj18/FeSj5ySnXchCcf3z41lt5pBET8kOIDxgQxUMpF7i4CMkDuRuv6yWJw
hluRs2xB2q8k9EFLzenPIHXzgfjGewKetfxnE5KNKAMf3L9ZujsMeMQzBh/GFYZM
Px6aIv6TfhLCF7Of6Wy5QLmZm80XNdBsisOjafVP5LIOBuV4q/M240D6YZVGGR8d
y2R5dXOxiMXHfbZd6Nh3DR7j9eBeXn8wgaCEKYWUlyCjfBzz95g=
=6OpR
-----END PGP SIGNATURE-----


--=-=3xRz2kpjINVocr=-=--



--===============2016995516905025963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2016995516905025963==--


