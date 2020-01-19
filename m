Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF72141EE5
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Jan 2020 16:42:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vf4D/gm5qH7sr4AH7UVhzRl5mW8Y2LbrDdnvU5i+M8=; b=KAT5Mw3RTY6VvjLDbuEvRF2fE
	qQbvB59I9w9iVfFQ3wX9PdFe26zdmc0xf678mqR0oD2kOtZIW2FRO37gvUau3cYdUZ5AuxlGkE7Cn
	cUHdRhmvG7mh78hIMtCNiCW8cJQTND5qAx7E8Fy9h/2b4NTsl6hNeE2ctaoEh8WcnKNyZFUjwVpuI
	MALYWN5usMbSy/Hw5cGhdijK7Fd2IDcwxunN1HKFA9FJV9azEhhfwzaXNi4cg25OhAoIGHQnEm9h+
	uCjN2U0OYcRUHJkbqpdnwkmo0fU3Fw7b98ecj7e7Rp95r1cZLCm9ENnggVANtFLvpVMfB3kRCsFgL
	s3lAWG8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itCid-0007i6-VE; Sun, 19 Jan 2020 15:42:32 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itCiU-0007hZ-4J
 for openwrt-devel@lists.openwrt.org; Sun, 19 Jan 2020 15:42:25 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MQvL7-1jEqh81QCF-00NvdP; Sun, 19 Jan 2020 16:42:13 +0100
From: <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20200119120816.44406149@kosmio.komorska>
 <20200119121001.71dd8822@kosmio.komorska>
In-Reply-To: <20200119121001.71dd8822@kosmio.komorska>
Date: Sun, 19 Jan 2020 16:42:12 +0100
Message-ID: <002601d5cedf$04f87bc0$0ee97340$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQITlEtO2KKapdCkBxMYY4pO7XxT5QJ2eOh3p2LhQjA=
Content-Language: de
X-Provags-ID: V03:K1:RkgdzLRRAOip+DXvjY3yBr5/7Oh1ORdXZxh88B4sk5qmzwCpLFd
 OTPlmagwx7ldjZgJSU0DqzTNViXYBOnIzuvFZFWtmkThe1hhm+tcbqhT/GGvKyz/+EN+n4t
 Fi5nALV31nNJzazmexkWfg7kPTc8JsghPDmA39Jnk4tD8DMBTuSAibouTb+5x/U83L6xeQJ
 7Pf+tAw5psiYQ4QhZ/chg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cgFEHcgvTA8=:0/oeljgW3dDHrfgFov1pfC
 48eHPe8JJJ19tqTZLfA+kQnK4c+umnGKdn+y6zNXAnlUoRL3N5q0YMYYCDfVujDBPfVyXr/im
 4Hb3tJwHXjihMsF2sI5BoXeNOkMaLGPnYVbqd5Y0CeCFnzuH3pwpYwLqZFee2gzzv9BFuBS8a
 l99SRDlbTx391c3479AeVHOm5Aqs5P83xBSXBHmCl0dBwRlSjiapHD0Cg3g8PeG+engGtDBRn
 84wwzbCWUdWi0lFWq+tCnlc9xsMvAXFzGPeEcdKO+zRYCp8vKRMJZDF89fmmc8/X3/oQldNb5
 CyJZGY9Ekl2XZKmuKbkfLVOC67lyVSRF8jAUV50F09fu9qR/R3OlybRrkc0v3mPz26twkdKBL
 xqkkzPY0RsSEd6+xY+vE0IxwHkFYbiIIHKygQ3KIn7s64zJZj8xP++aKDEXyxMCZxA7WZJUGJ
 0wGdh8CH/pdI7YlrkhqNaylWR2Gz+mSuwzqQ2HEWgVX5Jd8X2afx/pM854DEOeW3mIIWwuAo9
 hYYpJXS8CL419RCby9CEP0lMBSDhCD90t273wrR0cJqEvgASDnzWtJveKdtV0snJz55vie5zF
 yoQKDozmLDODfmfPL29IsNUtogJQXniYmfKR1WlolXLThgysTC7hiVQQuAz8odRAPfloqgPYA
 vQt8TQoN06jAupsJvUNoCfmho6uRJE2TQo15XMJsXVli4TzuDGafi+FEGBKKrYqRHC92x/e7k
 cJEluCiWi3zPrApTGceQOyrU2rWl/3v1LONByuXN9Vw9Vs25B+PsQ3UeBQuIsP+WWoPHfWKMZ
 L9me9m6Y4ly+/LjfpVVYXMJ48GswnWAqiIMCxd16eIheV7C+OP9ECsTIRD3PmN6vs1mpgTMP8
 JjSf+jnDZtWxnY3PruB2g0rSOcR8cncDgeJhS+sv8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_074222_467327_8C536463 
X-CRM114-Status: UNSURE (   5.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: WNDR3700v2: add dash before
 version in device name
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
Content-Type: multipart/mixed; boundary="===============7963553844062194488=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7963553844062194488==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=PUyEAmQrEw3y7h=-="

This is a multipart message in MIME format.

--=-=PUyEAmQrEw3y7h=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> -  SUPPORTED_DEVICES += wndr3700
> +  SUPPORTED_DEVICES += wndr3700 wndr3700v2

That would have to be

SUPPORTED_DEVICES += wndr3700 netgear,wndr3700v2

Best

Adrian 

--=-=PUyEAmQrEw3y7h=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4keNAACgkQoNyKO7qx
AnBXWg//UET1hdjWs+VSb/EU3M8LuvMZXj81egVbeB3YCn5tfXmRHv3Od0UPMj37
pnRtbD7MdMt7MhgRCuVyaVHGZgo+kF+jZ7QRAJqlajHx//3X1ccQaIYJ4KRnG1Kk
y3956x846kMxxgGkp4YVeYuMNsiDXOUmZYGeDEDOFtbru7U461PmjmFuOFhPF964
PdBnwDLvbdq3G9FqKKRsJdGZ60uJR27hy8A5mVxeiO+VWfwqrycHAMJJ+jrG/pJq
wQ8p0tZ6ah5r4gAkbx3z2z5pgIKDGxIGS3htibbwRVtuE1tWafvHn0ZRGuqgcCQM
vfq+0oAs06a7jr0So+ifYUIPWPJ9QhkZv29l62MyDuWyS2DQQRbpDRYXBzTwAbAa
gs3gBhIcYnIxFf5MnL43Kzcp7qKexAJq6Akh8u8/ZAoYekD6nNcZipKDHbTZzURq
4mX5LYPJKYiUZXH+AQwrvvmoU54LEJwhVaez7iJO3hONh2XFMZCl2VPzIzA/NjXZ
BkI/KPUcyZ84CudQ8d9nO8a7T1LLAW5Ym1+6FmfX3i5T8QR/shHFuJv2FsmL3/g4
4hc4rFe6RoEwARwrwxFVEHsDZyV64a5RtA1Lq5IYfW/IJcz1pqUQfqRu8z6Xpz8r
OolTH/NUX2ceYDE5j6KtvgliFP7mkqWBc/cK7uitq1E7TdBaWdw=
=vqHp
-----END PGP SIGNATURE-----


--=-=PUyEAmQrEw3y7h=-=--



--===============7963553844062194488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7963553844062194488==--


