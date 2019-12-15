Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB72C11F7EA
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 14:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gaYiLCPzMJcGpCptctjop5ZynZxlm4RtDH0SRlHnmng=; b=oPW
	L/QDs44M+AfymiHw8TL0g7cN6S1eFuaKg+pCIaVKv2vETDdh//5k+rKGYwGwudr0L9189DFgnl8j5
	64MlIxN/YCIIooJXQ7Wd4NOuZnUcFqBhhQCfaCaZd4ihBSLNu2BypRuGLVnNkmFfEDahS2YPyAS/q
	mDKCeq5/60msqfeIqnVCCNreih/Y7b8YmazRNZd+IkqJNv/qEhn62xgeuj+LABY5SU0eCx9cLHtJe
	6TO+UYJJQMmuEiwtY95/bA/gi9NE9sU08Bd6wmG08mahdN1NSmLXiM985JhYMu+zbC9IJXV1b4VHx
	0oAF6UUYjTsMADR7B2Cx4Y14kp5yG7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igTfL-00015Y-8l; Sun, 15 Dec 2019 13:10:31 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igTfA-00013a-Ie
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 13:10:22 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MQvH5-1iJAB72RCJ-00NyFp for <openwrt-devel@lists.openwrt.org>; Sun, 15 Dec
 2019 14:10:14 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Sun, 15 Dec 2019 14:10:14 +0100
Message-ID: <008201d5b348$fd4eba30$f7ec2e90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdWzSC2EhfxglOydQGup37geeSbXzg==
MIME-Version: 1.0
Content-Language: de
X-Provags-ID: V03:K1:3a/W+NXJSkeMxIAPwMfyRG5NaB1t10HOn4SurB9hHTYCZStZIHG
 J8vt8G86giErA/h9wTV5MdI4/sCkmutf/SiMFl6nCsXCZAFt6Y3v/bjsjmX0Yz/lRNugVO0
 w/llfJdv9z8Sfj+msY57jQMuefIbX+WMiEu0PtfK4VRz2H22xeB/59kFd+jVSpViKHzAILu
 ep2UnGY8QD4D2X/wTN3BA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pnm6oTNxLyY=:MqYVqmowg6vcZWSP1KzDgq
 JalZmWvEbW4ZREieHMiNA3bF8kgcGQtj7FgTy9vlHSgV9oJLNA/KseDxgJUVLMBSBjfwSTjmg
 GWlDan3fBl1/2Zrmk3qHb8Y5cBdx4XluUECUJvznS4pfxGgeiTl39CfDaeeLGOySIFyUfXYcb
 IiGs5hmxy968A/weKdPH7StbsdDRCrpkCxov7hAFH0XrjyGvSKqq/PBjQ5k+S7i0MtyHqT9ke
 tMpp50Mb3OywG4FfQlyaxbPkPs7peQUnhy0MK/D+eXjPr3FcN0FASHwUfrDwssMS91YkWgpMM
 4BWoosD8K8UmqcYdDSeZf3ESz8SwpmbWH4z5M3duO/N1/PRmbwGB5b1m9AjNmb2vCUSpKkFDS
 yucheCISNbFLodX7BYdsLGHknbojxKpZd7ZWmCDNIPSeYGUbR3IUPXevBhVcJPzsXGCImUmpM
 oFPUW97nN2bWxGBguCXaAf73qwHCB+kmiOXXzb0y1NY5DQPVeBweF21r8RCi5UhiONZQYTBs1
 jiXg57FzOkH1lsqtjwI+2CzjcH5TJojC76OrkQf2aUmTDz/jbplFgFoqRF8VyxsbV5x3A+ctk
 CHhkpjrYC5knPEwdFUDzxsqdoeXt2bK2pzr/hd2YnFxZSB9/T9+UQirrkt0X0CkRsoPL6DNzA
 W3rS6wVsG6I2zLO0bshWYuE7/wbtnACBS0coiVVpXTKlQ5VDFChnYr9mgPTckai0DyKxybgo6
 SFbff4kfOkYbt5nogXqkK9dFGQ0mFJLWAg+oWCyS9zws25w8Db7PBJ86hdiBfhhJ6P7/01jcI
 zpj62p7YPmQFQtucdcwJ2W7E2/f1Xns668bpzWdgbhSPi4Qpz0z8ujE9VOC92t67yz94SdNK6
 VDhvVtG9Beg5srZAAGLLHFee1I4xhV+0d2Ud4R+cQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_051020_916182_FB091C5E 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Lantiq DTS rename
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
Content-Type: multipart/mixed; boundary="===============4325458239079454298=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4325458239079454298==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=RtukI5+SblDl80=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=RtukI5+SblDl80=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I consider doing a DTS rename for lantiq target similar to what it's like o=
n ath79 and what I did for ramips earlier that year.

However, I wonder whether the "soc_vendor_model.dts" scheme is useful there=
, or whether it wouldn't be better to just use "vendor_model.dts" ...

Any thoughts on this or any NAK in general?

Best

Adrian

--=-=RtukI5+SblDl80=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl32MLEACgkQoNyKO7qx
AnC6ShAAl8q20ZBHZ1I2L7/P+qcCibbkHoVzawclhvW9Hl+G7eQITLsKRYWtmFwe
GQQ4KUPp6iBZE5KuAUEtToJ7H0nbSnaRAJ8blNuMhr1AY+DmC3ORphcgUBX8y8Nn
PZ7F6BLy8JFtIPwiiPbdOgn1ZPkrJ3T1weGl3LERXXaAOnrXnN6lrQLzEE0ofEm4
rGNFyxiMox7RNsVd9rJlY8//+zVVKFUeKzHKT4IDgU9gEhJR5Dxj1Y80Ic5sD5nU
8LQkfBDb4eGJ5RihzUJlY/d8jQA3ylYQNM/HeNcHaxCN8DTlgIXvyV29FXDSHAHA
BghR3yR7C3UfCJ7moQWFNENxuHQzfZx8sVaNLEVyUoLPhYvq9YikiCrxlibbAgFK
nSbNl3xYN6WPO/AiWjGyjjQBt1cqPQa8Kpb2oryViHnWxLwAhRrx/SMMHrE34uwS
Vll/25sEcwre2HckUubUQetcV4LNdrnywhVgS3rA6K0YKjghH2bi+v9kME+zfBiR
9PZOhQmaq4hc5bddnSmJ+8mtZGrQzwdUed+eGjPyzgX5bALGStkE+qvzTfab5cNF
m7xsBUkR+QCLMEcxXeNCXnn2YuKSKlOoQQ7h+BIko5UNi9u01aeo2wuj5/lN/l3+
2/AsSjYxOsBymAT9K4i3Ub9zN9qAZSO5Qd3S4bNqTtOaNAsfxhU=
=lWMJ
-----END PGP SIGNATURE-----


--=-=RtukI5+SblDl80=-=--



--===============4325458239079454298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4325458239079454298==--


