Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE15F217B
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 23:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zdMUIRk4taLTq0BH2EDDrPv7iNDBdwRNOPeSoiNuVYc=; b=SEH
	NThEfyUY+MePhNHwGHL72g98MLMfCU7PAIM9ISZYCIshhbZ3A8VZPeoppt7ytJ9BS7tKS57I1GyUu
	CuMc0aJ6TnHf5Gio+uKu8kqY3md7zozqq4hofB55REOm7ZR934Ut5DbD5/5ENLCxSBoC7/pQiCjun
	q2YO3syzEcAvAmfNuk5uqbeTcn+5UBu7DZBYRXWYYLqzDpDdiCetrfEEDhnpyl7Ebc2vTlubHtyf5
	UnamlKHzh1C/tghGxLHmkeXw/mEBzCf8TiCRPvElyRkTBt45EEixyqYsn4uFiJjkuCNwzFx1n2Ykm
	AY8SaEzhVBSMN+HxRNKBOMLaEEjWwSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSTbN-0001AD-UM; Wed, 06 Nov 2019 22:16:33 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSTbE-00019P-65
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 22:16:25 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MtfRv-1heEA60FdX-00vBiZ for <openwrt-devel@lists.openwrt.org>; Wed, 06 Nov
 2019 23:16:21 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Wed, 6 Nov 2019 23:16:20 +0100
Message-ID: <00b001d594ef$d188b670$749a2350$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AdWU73JgqgopmG4QSlmNT8GDVlutyw==
X-Provags-ID: V03:K1:Yu3Q7vUTl79/aJpCWI0u71iF5ZSKuPCE1oWBizYxC2GfEPFswyb
 sTBI2gargZ5fzJsfU/OreerXd6BxN8mIGF2I6vjEu2mXHtVeLQc80RZe1XxJXUYtQi74eoN
 Q4T83kDrhFZn6DvZfFNoTj5VxtBmRhRUQJNp6w0FsxVBLi2nAW/1xiAxRGyGvh9i8TUwJdf
 UIaNVqyOzeZ95Wx1B84rw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bWgFO2lOh24=:pBG7buZe9Lzs+Z0nZvX9/o
 M1+ODLV6X/eRtUN+KeA/7jsjVW1lKUxWnSF6s/OIjG4+1Vf5qKRJfw60XKbV1bUtEKabtNmn+
 yUnaU+U3tDxSaYLd/0fO4BhcLewJunpILZsm78ioP/1Cb+tbyoOwJZYIAe65XV9XYENG2Lrnv
 YMIIGwldKlDdDw9xjCxc/nbZGEXFv0LxhFiFyEMp7vlln/Q72tJtJzem0TqOfaVKQM/cTjcfG
 IzI/I+MDufDOGR2J7qwtmLZhuWuro9AreGvimXfEkiSF6icuRlq16WjpY2ErYD7wIEgkd0RE6
 cRW6V8i4q9ywDO8n2Cu79YcSUstWFdThwa/6x9gXNHuOFaOrIv24EcjXZ7NRuXIKujGFD2CdS
 SDXwKSZlATAqc7qdctht1TU79UzdMUPLFuKjM0FtKiVoAURMxMLx+oQOWz+VNB6yV6U5WoXzm
 kaOAbQ/tcKMrErzy1FO5B2fAumXuwpkq4T42lZePA5jxsZSv6NSUGULNtb+1yGx2z5cGn8TYB
 mwTVdu2MleNCjJo8ArWSAhwCCiOher7pakrmapEt6QlnLmxOMc6M05eoG3Fo65cI+c6BxrxGs
 bDL7ygaJDQ7EDNUal/OMv75vE8dEqR3tSjQnjE5ATA9mVqJMAbdTjYQ3KwHp3vw76fB8Axv3Z
 Wx9GDZ9XpqFNw5alCEIG6jAChdHUHRqveTMggvXUNx/20lU6IzlErRV1ExA8IwoERarSF6Aah
 OEcDF0ZfsRCX8/vOC1qtrmfeLeF8ap1IyNmFo8BJe5DNtZvetjUtdWbmOuDsi4qjj2uPk/L7j
 tE/R+b/CuPolRC6YxQQX12B2PRRliE6i3X7H6JnnBXNxHKZm5RYGGq4xpxVHG70WMGkXMFvyx
 pe2uqrol+7k1qB0oxrGW8XOeD4B3DK0QvHAto7KVc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_141624_516710_9725B14E 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] ath79 QCA9563 channel 52+ device not supported
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
Content-Type: multipart/mixed; boundary="===============8401056988980160370=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8401056988980160370==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=AUx7qlRoBMWpLH=-="

This is a multipart message in MIME format.

--=-=AUx7qlRoBMWpLH=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

for the to-be-supported TP-Link Archer C6/A6 v2 US (QCA9563) there are repo=
rts that 5 GHz channels from 52 to 144 lead to "Device is not active" messa=
ges and 5 GHz WiFi disabled:

https://github.com/openwrt/openwrt/pull/2470#issuecomment-550444362

Since 52 is the first DFS channel, I wonder whether this can be a DFS relat=
ed problem. I have no experience with DFS at all, so I would be happy about=
 any hints.

Best

Adrian

--=-=AUx7qlRoBMWpLH=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3DRi8ACgkQoNyKO7qx
AnDCxxAArx+b5R9hmurB5alWX8xL3ufVlKzb94T+eM2X4tpLhU1tlCEg7YPZPTq/
TfWAl+cfQlsA+u8CT7d914/oXIFxAJoSyPEgCQsuUa+vupXAcGCCCjbkH+FNSpyW
+BdvtHShQ91+2kDq/uCmGGgGuEAPHzsVJR9XxoF4rwOEgUJWa5oAVg2nahtfA4sM
oCi35y1UetdYWkZC6RcVPSGbMOh+TUQ3sQWFt6taRo64F6TqBKJUWAe2rK6uV6Yo
LT6QVLNqR2dAwQV4DxiPv0k977VKIUGju7GEZFmHftzBnS3M87lnTzplRwfDeuLa
bA3KNNxKWFTM+7gjo8OSbVK7z4vyonU91j5LJEarPTCaQx9J6CJQ4rAlgMTcUbjD
fGIXcoPfAhaU4GclHTD23eXB1+tMZVlrjrQvZGFbqmvqNYB5XSCeiCoGFdKT4RSL
hlfYzolZzl4CFIElknexQUonLxfP2mY6zOTiBLvxmxrXpUvrg9A5jYr/HWHMTLYN
LWSp844TmibuPKJlNmj+ysHO5OM5pIHbslLbxBwpDjZKG7OHedziXZpkFUf2X8Jq
CtXE/Q+uS6rHHb/zyQIOAilam8ZgH7iVqdPaleC13V2zoV7EDF+Ob2LSjvtz2y4b
tw1nIuoAp5fvcEaTyt40xX3Alhf91K9/vV6eI+cSzUjkyKxXVLc=
=Gcgl
-----END PGP SIGNATURE-----


--=-=AUx7qlRoBMWpLH=-=--



--===============8401056988980160370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8401056988980160370==--


