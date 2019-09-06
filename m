Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB8FAB8DB
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 15:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d0vvKglJLW8itGKi0GyQTrovHIPVcy58VkBgGfKI7jQ=; b=P5+JAqa362SLQyBmy2L2ag1lr
	O7aTe0cbCi+OjcB3qsQUzL4gBlOL4iiY0LyjFzyndD6h7j2L85hN0BGL23fpIN0SYYu1Y4qcMgBF9
	eIi24nd1RibKralGJCElOwD55gZpXhNtpFzRhxlEjZMJCAXW6YwH11AkZdd1ZOWPSwsPb31xDsGx/
	jbCKJbDCtM+phhPiA0KLasNcAE3QWjsOk2MF3HhX6wQaPge9lldTBQHtWdWDKYKbjVthvDVZcq31l
	Cg6hNRlX0UyINL/TtciIKzZkO5zmMZWACw5sjjjm0skJr9FAQO3Rld6G0J6iOheTO19fQkp24mcvT
	xkhSkPe1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DvY-0006az-3x; Fri, 06 Sep 2019 13:05:24 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DvR-0006ah-Ef
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 13:05:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N0Fl9-1iKIvy2mLH-00xK6n; Fri, 06
 Sep 2019 15:05:09 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <zajec5@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
In-Reply-To: <20190906051054.18311-4-zajec5@gmail.com>
Date: Fri, 6 Sep 2019 15:05:07 +0200
Message-ID: <007d01d564b3$b63ea4e0$22bbeea0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQECTHRMTCLlI68ZA+Iqs4F85izFNQF8ofV5qLjo6IA=
X-Provags-ID: V03:K1:3xTW2QBPtQ+ryuZ/b091QboAjubE61vHkdT67qjqGLRh+Xokf+p
 m0ZIAf/3nawrj86DukNttq8geIoMEISxcTKngnsoFppL3WBQsTneSQya8xqvj/8l8eIzHjb
 CbLVCx7lW7uGRC6H7RwKaudrmZJulnHSn3OR8LK3/t+DrOeIpfsOcD5rPeex16812PWfUyv
 GTOXgXoogdxj2exQfX8DA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MlytP6kDePs=:D0b3FYCHFOWtN8d+0fo1iR
 THXORps/ntteqQH3efBkVVTsYSZ0pipOsQjssT42R4UcqMto565xcTXyF7WxTEwzK05wNSFum
 NIrkiW7QVFYGTzZXpQkxRWa8QooZmNiNMekJbnkOImJ2EwLnfSqCXGWxhyZKxiUYN+NzuL7AA
 +2PmshDiSWlqsNxa4KQrCwny+EaNRQmy4eyPG80PfI8YApONsYyGIjJw6czXu/uGK6nwC26nd
 MhxvZGAMXfPCRCTO/B4rsnk4fDITNhQQVlR4KBi27Qlh19TSGRpHOH6e2fNm45ZPChru40SES
 Q9rKgRwFTylW3QvG20QrSjVG2Pwc0OT8euxdJHqNyTt9Nb8HoLbGuv7EsH2EierQTm44DjQCk
 DALkGB1mUI7zvCCplBlO3iyoIL5n4U7WKkBAE22stxumGilkxWmT+GP/woKA/OnR5vOn4816k
 NqAbzbm9WhL/yC00LRtnd0j67CwRE+FWn0tsM/X5PVndheb4I803VDrtb+L+zqh3P4MJcIHQ+
 4TILLdMeNOR3zrd4uYk9w27CdFdYwgQtfcNtBvvCJzMnEC5zHsXjYBlXj+lGoe3nouUw9h5uD
 w6432/RmIcufjFYa/6XEqfjmBz2LmuUbmpTh29TDMk4JP0Ok9wSUs6KQgj1mESX4ogzpkoKcY
 Y/7rvMKpwum2bW2X2e1F36MXuzKyyICAKmKGu1bMIQV8+wKXUwWbcgcpKLjtRHVffjn+fIn6M
 MN3pOE6mA24lrQDjygciB2Hkq9Pmwe/8IRbbhFFcFBGOsr6vmxnpRkzwSFfVebvAoqjtJGKyw
 kYlinmQHp+vU1zrWQfrdJdXYaTxF+Vv7RQ9m3JluqhgM6smgjs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_060518_391710_F92FF7F6 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use
 $UPGRADE_BACKUP to check for backup
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
Cc: =?utf-8?Q?'Rafa=C5=82_Mi=C5=82ecki'?= <rafal@milecki.pl>,
 'John Crispin' <john@phrozen.org>, 'Jo-Philipp Wich' <jo@mein.io>,
 'Jonas Gorski' <jonas.gorski@gmail.com>
Content-Type: multipart/mixed; boundary="===============1168337452205209163=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1168337452205209163==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=wE60mmTzLLhQeM=-="

This is a multipart message in MIME format.

--=-=wE60mmTzLLhQeM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just a nitpick:

> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh b/ta=
rget/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> index e313562017..8e02186eb8 100644
> --- a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
> @@ -74,7 +74,7 @@ platform_do_upgrade_openmesh() {
>  	#
>=20
>  	# take care of restoring a saved config
> -	[ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && restore_backup=3D"${MTD_CONFIG_=
ARGS} -j ${UPGRADE_BACKUP}"
> +	[ -n "$UPGRADE_BACKUP" ] && restore_backup=3D"${MTD_CONFIG_ARGS} -j ${U=
PGRADE_BACKUP}"

Any reason for the curly braces here?

If not, I'd consider removing them with this patch ...

Best

Adrian

--=-=wE60mmTzLLhQeM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1yWXwACgkQoNyKO7qx
AnD8bxAArKPtymPVJLuCNvxyEO5qYYat+wUL8HmLNiDZyliO0Ba4rHPChMxkAMmv
SKIXTT8r9sp2kDGztQgFTQL5vQoyYktGt6prRk7okvyVr9Q3cRvS6U+RIyXTEaIS
2Zs1qEhNdmHasR4kx98w7HDwhiWP7OExr5l48GL94YUsAWzg1AfVadG79NaYSI42
GOGRq83BvVlatgVOEtBl/DqWQSzz5Wopi/3dNKWNPajM3NOuo0BJbq7yGkr1ARde
mpBMgCRVktIs4wLWG/0+fHU00HO72YllcaGUISUdPTmqY0BUa5OY9H8o3Hxv3Xvr
LsaVPbJ1mtDeMvkQg/IWn/AGTwAvW8R2XEXxL1ZRmKpu8lqqs/SP16sRPexI2t0n
n4FlTlmnDJCaLqaF/heBxs6l/AQO0dfnm/jkUvulcFBQY1qn+RAaKr8TOBcCVDPA
I4Kh/DyHeH3usip9RvpnSBdyK4u0+/tb6NTnMaaYQMxiGf29TnqKUFgdlQCQethv
7nnmoY8ldP0UpO82dnHLuYzcL5Q0tih3Da6Z9i1YFE1mC/+820Q5APtT/GU8SvUz
N7l96Yz1sqygouAR3wXij0GsSGNVZitleLAr1VJu3BST7HGBf0QNZt8qMtMS1xQz
ut5gF16YdnN9v6Ftiwt1DpUKhlTfnKxvgnmDPdqvDAwnvF+eYjY=
=MwWw
-----END PGP SIGNATURE-----


--=-=wE60mmTzLLhQeM=-=--



--===============1168337452205209163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1168337452205209163==--


