Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668631E5BB9
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 11:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pr08UyKcn+KPa8QXxHs7PteHCOtpnHIyctjKHuGU3Ks=; b=U5K8ryAHYfKsCInod/iBmwhXG
	0LTf6cVjxMd2KCOVy4VH0hD8ipx4xAaQV543om2tQPgYB0ZaCHjKRn+p0dAZIhz2dXCQA6fgbJbuA
	KkIw8XXfkRz6tQVn5bMfCp2UZyYwZhuEoK8E1fFZ6oVMEvaMbgg2rnp4YjfIyXHJGT3Xx93As7Cs5
	avYaavbXcowcapC/1cfHdQtD83OKX4KB63LEBZb7VmzhUb+CF0xmq7GhTjKKsfOVAYaQiDdntQIPa
	g6uDS1q8NW7U0fB+wSi6mEVwo2XkL14lg/s3HIMaujhm3RkmUUNxwpIN9awx3hUd2SUzTEOscFiYl
	1Il2AvA7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEjp-00018h-7q; Thu, 28 May 2020 09:22:09 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEjj-00017a-3h
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 09:22:04 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mbj7g-1j13tQ1ODG-00dC2B; Thu, 28 May 2020 11:21:50 +0200
From: <mail@adrianschmutzler.de>
To: <luochongjun@gl-inet.com>,
 "'Koen Vandeputte'" <koen.vandeputte@ncentric.com>,
 "'openwrt-devel'" <openwrt-devel@lists.openwrt.org>
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>,
 <332ee2d2-3a6d-3607-a472-7a7667bb3e5c@ncentric.com>,
 <0c828486-4933-e7a7-bb58-469a73245ffe@ncentric.com>
 <2020052810425792218654@gl-inet.com>+83FD15309B855B11
In-Reply-To: <2020052810425792218654@gl-inet.com>+83FD15309B855B11
Date: Thu, 28 May 2020 11:21:49 +0200
Message-ID: <003e01d634d1$6b178100$41468300$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQI8KFJQncMPzNJEUnXTrI7FbcNghgIdDLfSAkbdZcwCXTAzxqe7SAbw
X-Provags-ID: V03:K1:kXMoW+Ef0Q8RXosrHgO1fPT7QfoLnLMWkPcYosYAoa8M44hXijq
 tcEJ20FNS3YW4ROTJu+wnuzN08/ebpk7MbGHzz29+5bjNbWU/pxx01g2jE0RbD1J6ZRPjNf
 y7fFZt3t3nRCDzbPdnA/LIw+ccgQ2VgofZSvLoG+demAk/Wn1FkxwfPsCXY6k3alnKnuW3A
 1JcC6UkAi5AgsasZBcsmA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VFOLzhbE5rU=:5a5EH4OXzuPKUz9H7XxE9k
 n2R/JLVS4of2hZ2n/2QekwN2zquRq8SCaeCfznFILf69q0fovYdjdVjj26INmuP574cJA7AP9
 M+/iMuA/Et7K+Iy059iGJUQixwBNAv8i1WHih0+1CKk28SKP3LhOwbRl/D2/7ZcyJk8U1G0lO
 JYSTGB7VhqkVPUgYV6zhkuFZsW+oBMgIU46RPX9SySU5kq3nFp8GpD/oG1xOcCcAPHAfYtPsC
 jPWPL2mYJ+Nr1D5hfWkXwWc+t3EHsHod81K+TLhXk0inV0pPTfONVgiE0HxPI33vtj1cQIzuq
 0cJtO57gcw/qladw24UaFmlxcvhQZxCVWamlcywnp6HAnnI6cNnAmOOgSwL0F9BXEe0rDtSBI
 M4EzcN+43WXzpwpikN90mQLdHUyjXTW0AxcIiSApMLEjqi4l4yUW3i9Y63lKgr5NhgrDN3tJb
 lIlZVqqpqkJ9FbVxHf4kBLrZqfvr+S4FmfF6F3CRTZiiYeLKHk/kUJBajhUrZrQeB0JJweF3B
 P4oTaDZcuof/7nmKjLjDrwb6sKUAqzfeNHuyTMw+gtp+GTDrlerkTGpT0+8HK/m/fPx+ZG/eo
 0KZBBvsuU4/o8DNkMGcH1hGyU6Ebg8AWaw67z0HFH2rLKJicdZr01YBw5FYaDMb76EQR9fTkh
 zZ8aP6XLvsIZx+Z30Q5eN8r7nu1sfqOWy3sVUmdPLaR5tPnpSQviUh9/EBjCMufpnmS7cJhwD
 hpvj9gIBiNPmI/nLSaTwogOLTXJii16JAVOmiv8YXEfW98RQEepW6dVNpC9ERL7TmWLW1E1/f
 C3Aw+VNE0/Y3eDvAuWW1AUe649Ry8t49LowXqsKk5Hn7pqnmpelW3DbXrVhXE7hm+BkigIi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_022203_445842_A911F4AD 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Cc: 'Gianni Stubbe' <gianni.stubbe@citymesh.com>
Content-Type: multipart/mixed; boundary="===============0136112728817809253=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0136112728817809253==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=edcWyymdwEPK3C=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=edcWyymdwEPK3C=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > Tried sysupgrade --> results in platform_check failure.
> In the original device naming convention, E750 was named glinet,gl-e750
> However, in today's openwrt, the name of the device is glinet_gl-e750, so=
 platform_check failure is prompted.

But SUPPORTED_DEVICES should still contain the string with comma: glinet,gl=
-e750

https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/image/Mak=
efile#L65

So, either that name is different on OEM firmware or the metadata is not pr=
esent there, and we need custom code in upgrade/platform.sh

Best

Adrian

--=-=edcWyymdwEPK3C=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7PgqcACgkQoNyKO7qx
AnB6/RAAkdGpo+xF7PePnYgKHFhxlGoLAZF7EELiHceJqL4RxP0b1l3RCTKzYfsm
kjxncqPxv02huN+ZQYPkLRZQLIQ8rLZ6/TFjWqnfAAmR0ou8LSOX9yvkDLzuZOBo
QmAgdtx+o+BizWr6vSGjQBP13umucYJJSWuFp9o2/sSQnBttGOjZYLu3ad2KJNh5
yVKQMgI3wxERfhnVyHR3SKGputOlPns+Jmgrkv2ApoWhYYOb5+mZ3LTVckh9PWNn
XitU8VplrykCgqmmYjQtf+a4h9caOJq37Dm3hrynnpiPI3813LH/xKWoLs+4NWQl
o3snSC7BBhtB+htMLrfPfpA6IhMUmC4caNfccG1jiT5waS88nPsMyXj3dAy4G892
XY/GDyVI31tepuetmBETgNTHKJCiLrYpDflcqNh7CZntpt5yOcIIlTb8F2UAA3tg
IxmuR4jvmt7faD1fpicyPmLhWesWfz2zMrJhKIeV9eEQFQ9V0Ob+2xDunSUdVYu7
fLORaoUwVS7YSTUhc0nKQb8lDHjXF09iNLBN1LLrr0X6wBiSvJ25kcUVvHYtuvwF
eu3Oomi+0DocLisplkPDCkuOBtatT14r1ZXIXN0zVo10lAmLoGOxYzzHUg2O4eKx
lljTmhL+2Hu3+5Cn/Ebmc+XB3z4duQQqDknjtpoboYpclzha704=
=yjJm
-----END PGP SIGNATURE-----


--=-=edcWyymdwEPK3C=-=--



--===============0136112728817809253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0136112728817809253==--


