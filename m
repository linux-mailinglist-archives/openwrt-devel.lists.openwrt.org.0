Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA95D167E29
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 14:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Date:Message-Id:References:In-Reply-To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ileHxTgsTfWHCU4aUEs8hYLvYYZRMfS72o66tEWvjsg=; b=NQB7XiBVb2zm4VJMj0B/tBX6W
	dZRmR2yzkt9+UKzVrkCoHotVMdEVOUPB7sq++VNugq3Gp+9gzbWNz7PJLIK+5H0G0Os7ELi0/iSbM
	AHeYrXxKVJu1Gq+KZVOFSUlTTTBou0YgLeIblGR3xO59/lCb43cGg1ZXHMkeRdPZUjaNHSH3oAwzQ
	UrBa3iEWCHGE2VawY6Kbou0HSARUL13bKjew0xNdjH27qZhgXuNGr9dGaUhAPkTyIL11/17H64DdB
	U04H2EK3tnWmVcxAKv1dsstAJMmZe+8Vs9phFT6tKKEKhtmEE3JC/cujctbW5OhpU0g8iaQ+cjhQE
	EXC/iGR6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j588e-0002iJ-42; Fri, 21 Feb 2020 13:14:40 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j588Q-0002fd-L5; Fri, 21 Feb 2020 13:14:28 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 567FA1FBA8;
 Fri, 21 Feb 2020 13:14:22 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
In-Reply-To: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
User-Agent: Mailpile
Message-Id: <VNk22yrjERZnNLKDChfJ9jzWHV94cthqSmXyFavD23c4@mailpile>
Date: Fri, 21 Feb 2020 13:14:29 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
To: "Jo-Philipp Wich" <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_051426_828397_FF38E04A 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6766348053368634524=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6766348053368634524==
Content-Type: multipart/signed; boundary="==SMBJrKsDnaeL9Zu77wG66UcNdMzhwK==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==SMBJrKsDnaeL9Zu77wG66UcNdMzhwK==
Content-Type: multipart/mixed; boundary="==sYKxT4L38kpMFmAwL2qRKwCqqtTRto=="
Subject: Re: [OpenWrt-Devel] Next maintenance releases
From: Karl Palsson <karlp@tweak.net.au>
Cc: "OpenWrt Development List" <openwrt-devel@lists.openwrt.org>,
 "OpenWrt Project Administration" <openwrt-adm@lists.openwrt.org>
In-Reply-To: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
User-Agent: Mailpile
Date: Fri, 21 Feb 2020 13:14:29 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
To: "Jo-Philipp Wich" <jo@mein.io>

--==sYKxT4L38kpMFmAwL2qRKwCqqtTRto==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Jo-Philipp Wich <jo@mein.io> wrote:
> Hi,
> 
> I'd like to release 19.07.2 and 18.06.8 sometime between Sun
> 23rd and Tue 25th. If you have pending important fixes you like
> to see backported to the respective branches please do so ASAP
> or mention the commits in a reply to this mail.

I would very much like to see
https://bugs.openwrt.org/index.php?do=details&task_id=2833 merged
(it contains a fix and tests) for 19.07, as it fixes a regression
in behaviour there. (umdns stopped working)

I've tested the fix locally at least

Sincerely,
Karl Palsson
--==sYKxT4L38kpMFmAwL2qRKwCqqtTRto==--

--==SMBJrKsDnaeL9Zu77wG66UcNdMzhwK==
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

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl5P16QACgkQGai1D9TV
yvaKbRAAimTMNIlclZZCkuVIl8hRlEfVU34JdStTchBSYzD5Wt9tRg1Zf6ybqnvf
PsYVp6rUtNZtLfudEUCzbvUtF+d9Z1+HPAsM68tnkM0MfJRpuPwMU9lbPWqpoRkj
C4uxd5agvUZD9W9tr9U64LbxFroJI1UdJk3k5nFQdsOpWIvjvsaAD3L10NcJ1N31
UpLQD+5E93G9wOjNcOp3AzGEt9/9q1r8MVgnvxgRp0uv6YqMIbVoFgMnZbBg99sJ
3Svq5EH+YK3WaWTimbmC6Z/rlneEEWaLmtUPXoR+gqPjldFFFN64BkFVa5VuJ5zH
+nJNqV/mlzWfNJWKtMJpgnixklfKuHOuXErTlf5X1F73DuUscZ4nE2CpWpmp1qul
o7eLVKc7C9YjD2pGto+YLvjKUnm0b+YFmTcJ2rIDWtgXedRtNuoIMFEIlO0dH4N9
5as6qH93Yf58uzm793nzk68waTZsL4xUmVL50DEATEs3ZwGcdajFvK9iSJXWSs2p
dpS/yelnvFBgo8E9vp49rWocN74Gv+nHedm+JPZG3Lc8nm/J5mZBDH3qziBsDM1u
apBU8/xFg2vRvAtvMaqt4quPcbCnWS95hsojeADGV2symVBXj0S9fetpdNDiZNGL
tsBkxFXez9eAphRPVMDkjWUMMo6Y2z946uBYLvubq+4anIrhvF8=
=52Fu
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==SMBJrKsDnaeL9Zu77wG66UcNdMzhwK==--



--===============6766348053368634524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6766348053368634524==--


