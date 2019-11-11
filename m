Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B19B3F80BA
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 20:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1fx/kQ0L9orVhbz7y5P2l4MH8Rx2ZtBkSEQSz/jTgrI=; b=JBjMVtMkt39Fo0KYgApcIm518
	2mzQ/Nh6g+7KzM8Y+MI8bHGp+lamjYSRCETuFFWxikWZstLL8pHsij1Q1B4FzhubZ5gA6Hoz/Gggh
	RKESKduVuObScTDD5tmFCPimIoEWO995p6m0h+HLpxTcEos6KoCbjxgYRSDwumH3S1+P69kKUnAEN
	1V+yI8AILbhNwfRpKB4ueC42dqO14hI2oBc2FY5+PK7HQpiFt/+W3FJ1ODRG+2PHun1UyXY1Y7UR2
	A760opsM/m1kH6kNKjgv9sK5oFQnQiXp83LQ2W90pqpdM1wLlEi9X1AgL4uROneR4be44MZK/8TgK
	0ZJbD/Fuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFpC-0005hW-U4; Mon, 11 Nov 2019 19:58:11 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFp0-0005gY-6O
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 19:58:00 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1iUFor-0001LD-LX; Mon, 11 Nov 2019 20:57:49 +0100
Date: Mon, 11 Nov 2019 20:57:46 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <20191111195746.GE1230741@lud.localdomain>
References: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
 <2b531a3c-60a9-78ce-508b-1069adbe1fcd@gmail.com>
 <64E0FF73-6AB2-497C-BB00-3E8DED2BFEE3@gmail.com>
 <a3731671-cfc1-4000-0c99-e2277b3be547@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a3731671-cfc1-4000-0c99-e2277b3be547@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115758_412132_01EC440A 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] wlan factory defaults
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
Cc: openwrt-devel@lists.openwrt.org, Ivan Baktsheev <dot.and.thing@gmail.com>
Content-Type: multipart/mixed; boundary="===============7017425454062424121=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============7017425454062424121==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lkTb+7nhmha7W+c3"
Content-Disposition: inline


--lkTb+7nhmha7W+c3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On 11-11-19, Piotr Dymacz wrote:
> On 11.11.2019 20:33, Ivan Baktsheev wrote:
> > How to put this configuration into device? This is not a question for O=
penWrt developers, but for people, who build customized OpenWrt firmware. I=
t=E2=80=99s definitely better to customise build using scripts/configuratio=
ns in /etc, than changing /lib/wifi/mac80211.sh, as I saw in some builds.
>=20
> A custom 'uci-defaults' script included in image, using './files' approach
> should do the job, see the Wiki for more information:
>=20
> https://openwrt.org/docs/guide-developer/build-system/use-buildsystem#cus=
tom_files
>=20
> https://openwrt.org/docs/guide-developer/uci-defaults

+1, I was also messing with /lib/wifi/mac80211.sh until recently, but
using a uci-defaults script is much easier and works the same with all
versions of OpenWrt.

Here is the script I am using: https://gist.github.com/zorun/86c825c80599af=
244bcfce742b6b3ba2

I am writing the Wi-Fi password into the image with the imagebuilder, but
you could obtain your configuration parameters any way you want.

Baptiste

--lkTb+7nhmha7W+c3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl3JvTUACgkQvgHsIqBO
LkYx2hAAsw4FA/lwRgyeE0CylJ1nnpgJbjXkEpvaDfo0bMZmqhrgKMXeNIQacgHy
BI0em0Smasv1YfeUnZGAVIxtsxjsO5/6h/NCwcWH3Z4MCUzzcWNkZeLvfMn6iOVh
OpT+pxhtT0LbStjcZhULnWYodMecCnVi6U/ndr5Xk2pC0OtDc7JfAR1SFUd8FmuS
6+R+00MnvQu6upIDq2umcuSUibd7XkO2iRLPXOB61wjBdq/2Brh7Vvs42dJP1j7j
OOYTky4xjX5oRYMQ8Lv/LVdLVBfIZmhj6GKEKtMZ/cjOUVYvyPIN33of/94znB/V
Mw+0C99Dumzc8eTj56QWEX4+47nfgrq2proU/txclQ8VvwguxnWpMUyu5DvSbjnY
5WpxR2MEEN65INVpu2bzxF/DjFzY7RlzMalAKh86xnnJxgBKAr8Y6YzP42gvINSs
RrU8HLh3QTLsF4cGkbq419WVChpNjab4M7wJKVaHpH2tR4QMfIS5s1yMs0aobyoD
yWXVFmfd3K5LjmljGg5PmIFQIE41aEyp0jIR6zjSLD03cBbaZm43i6GjpsQRcuUi
vl4l05CVBsbyZpSNCoV+l1Ksy9HajHvb3cGjyq3s49KFU23nKcVhXPrZ3uWXURUM
V8AJKwNzxBEq/OcMxSw1d68om51wlsLsNWm/YbR60QrlYr4cgvM=
=FkWN
-----END PGP SIGNATURE-----

--lkTb+7nhmha7W+c3--


--===============7017425454062424121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7017425454062424121==--

