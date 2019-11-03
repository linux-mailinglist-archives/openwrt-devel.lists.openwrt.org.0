Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D554ED386
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 15:15:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yMDzx84iFtwbJKqmrx+3w98j6lqxiw/GgwrfG8KUNB8=; b=dHr/bHuxcXXs7ZoSJihI+xq9R
	LPwNJssU659Y3lul0bV0kfaCcCcq33NyAAUZJDxOQ6uAdroslPeOq7z86hBCWkUZfpEfPjku1z0Ri
	Lp4IoimSYdi7hKVtFqynK1hdPw1BtD1JNfx0XPidcUWtdOLh/sedYMC129FU4/Tn+lWOZJoW1lTLN
	PnFBkg/knH6aNiGblufo8G7YlEsuj7EFdJjzb2Ah1E7zuE6ce0n3i5b/ZcTApF2EQudYBzZlixS67
	MVn4j7CMW0uCihGKSxjtzjG91O/U5XlZJy9hL2T8Aq6E0J1NE1ESuSDPnAF+3ZFcrZWPdVEyYlf4M
	szhUhu3rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRGez-0000ik-SV; Sun, 03 Nov 2019 14:15:17 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRGeu-0000gr-9A
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 14:15:13 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MhlCa-1hnY7s3jCC-00dm6c; Sun, 03 Nov 2019 15:15:04 +0100
From: <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
In-Reply-To: <20191102141855.22192-1-kristian.evensen@gmail.com>
Date: Sun, 3 Nov 2019 15:15:04 +0100
Message-ID: <013301d59251$16beffc0$443cff40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJ9EmdS4FKp2ArqG7hizcaqLuVA1qYqfSxQ
X-Provags-ID: V03:K1:waa/ZvHFl1qQuHMzABf/s47nQuSeLSWxfBamMtcxCYv8b+9g0y1
 uFrunel3y0QOhs3hR4aifaTWTExllm3V6zFnWfZJhItOPo2WMJdsik33tDMlsFOP78//i7U
 Q0BwDl5UM9PIi/dyxsa9XGys+aELHftS8KwsEtEfILS8XzrDJ/hlh5rXYO2oLIc8QVdct1F
 2CSNjkYgB7EpkMfzjv2zg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:66MBh229+qY=:I5Homn044gKA9ZaeVuPpDv
 4QnX9C4MEGYL0a7waGp3VvZm8/LCLdCXYmDWAbMmGUT0DUZsJli4eSNxWvRFZoMe1NQj8VJOC
 S3sLJ5/bD5RLHreur3NMdjD9UKwH2KdMRQ5Xq33YqeMOI1H5WRW3W0gpy+jcnkIijrD1wXkWH
 ODZ/e8x/q+7Gh7pFqtmI76d3eX6+3AjZnB6JxE/o9D9xhnmPW3CiU6peh9n4stj4bTpdgCjcO
 4bNgbRis11gbF8Ttry1/PhsuSomQ/6KoNru/MrjPjYgRnfyu/vJa6wch+P/nShq5Eq2fVcDLZ
 kQkvYNAqVmM099XqtO9n+Odb0tL7hdq/SnLs0H9exbcNNbuRLkOW70A1tbkXsuUYpwwbS/Qzu
 f87VoMRbmB0cfhbM+WdypiDgyAOU7P0UakZfCHPEHF7NtUXRGHS/H6wbhSfbWrQ4dthtBT8pI
 n0DoeyFj/sOiOnngEPPCKylxpgtdDit+HXABSnL92/fiR/DotyB0Xx7QU6ADQNq9k5Ubft022
 4cHeUJn3FEXfVugCCkTLdDUXjb7ws2WQlOL18ei/1r0WJ5MWqQqsiBIcCrVZeAZi/nU6bOpYV
 q3A67OxnmtOed6YG07R6ob36qs+EiQhJ2wRokhRh7+J+0gch4L9exo3R8qzZ7B9MTQ6n2skJ3
 B6Mv/qJ1ukkhGRnVxdTcUi4T3SiVl4NpbgT/91qshwoTlFobFdTrg2eL+IiYJRpCA+4Pv0AV5
 oUYqO3/Gy5DITKREY273VkUdbnXYxJ5EJnhIpn61RDQol48LAtrhTbnuFSE+HhfxBOs2zRry8
 HZZ+dWshYblxcj6Q5nxVATSfylEdsnQlNEjwjUtcXzDMslLQsLUlvyVfPwpwVEG3srpr2++ur
 9okPZt/vP/zkh/42Mdlgi4lfUGLP3+t5zISfbulxI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_061512_630369_F1FDD6EA 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3 0/2] Add support for the ZBT WE1026-H
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
Content-Type: multipart/mixed; boundary="===============7703240212128750153=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7703240212128750153==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=r434tV6gcO6fh8=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=r434tV6gcO6fh8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Kristian Evensen
> Sent: Samstag, 2. November 2019 15:19
> To: openwrt-devel@lists.openwrt.org
> Cc: Kristian Evensen <kristian.evensen@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH v3 0/2] Add support for the ZBT WE1026-H
>=20

I just merged this patchset, but do not have admin rights in Patchwork yet.=
 Maybe someone can mark both patches as accepted.

Best

Adrian

--=-=r434tV6gcO6fh8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2+4OcACgkQoNyKO7qx
AnAZdg//ZoMPMFK6icpGaZoZse4JiAuYI24/m2/v7oH6uGRFr5NPOuwA+3l7Ounz
OyeSN4tghkZN9WXHukW3KBpV+QytLKlY6EOpBZFhBzA3JlknT5wyUsBG4AP6qTnf
nFnAMkUmSmtCfv0baY32pT6WbByILRDbHx+btozNTRENzxVi9WpkNCPO+hIe7LGr
R6Uut2QK/V7wxrEul9nZ83Z3pyz0+bAYWM/9bTUIGnx0GgwTmAgoQ1i8DeETHxEt
haPvPGk2ewmvg9Hb/o9peH3n1BUQloSd/i0aR0BXZK+8J0mSMiAipyp9FhgQhHy8
sdalEYMPZoY11oFljQAFD6X+kpXAnTNWn6PnUCpnyoosXaDoSVg5RtnMh2tBFugu
u6RUohu34HhYCpLJhXKdkBX73qaak6FRbxh61WMrbb4YG0kBndYtCDSJMIyBlRNA
7hLUABDisGBIetG4CEBiQmKSAGCXv5p7ZSvPuVCF6BjJslTHCHq2QiTQCcAqbkH1
+w0A+uwKNNRIp6YcjKv8ZF9UmrSxbqtUGZpwIQTNwH8ewWoEZfw6Hy4Opw6yO/DN
AuiiAdgDPaIcYa2xQLzcfOYoNh4J6fWYvytpVmc3MvXscHCsiKznSggqgFh9ET14
y1Z2vskpP2Kgi5LRSGSuuWPvxjq9GO4IAlrxu6Rz2buWwliijo0=
=0jxA
-----END PGP SIGNATURE-----


--=-=r434tV6gcO6fh8=-=--



--===============7703240212128750153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7703240212128750153==--


