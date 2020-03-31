Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C18199BE7
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 18:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vWmtuvR+6TZN7BBxMMEOmKBH0IRlxMTIBRzb2gpX0yM=; b=k43
	ChNwhsjUjJp7betcCTX9DsUEzcYKriCclkYtMyxUOuchFnB/xRc2YUuAsHPAIknnAOrVPMflN6z3A
	TLYIduTtrrElcDxJFy2YK3Sjtg2iyalc7GtfdjqVBBxloPCtfMizlsH6MJp3PPCTBntB/h8/Sxi1V
	Poo92BaceRmA89vTGq0s8K99Nf4Aa6n9ybKdluGb4A9X36p+01lHa0SviJYVJycvOrIErSt33RSVi
	/5bOoC+K+22fnvefReQZK02ky62drUU9YdSt038aI130Cjk/xzzUlWh/Zat46gIeofOvx7q/h9Qhw
	V3+7HH+SyLqsEM9PYqIX6cvvO3aXaeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJxV-0006MN-Cj; Tue, 31 Mar 2020 16:41:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJxR-0006M5-Nw
 for openwrt-devel@bombadil.infradead.org; Tue, 31 Mar 2020 16:41:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=gVLOJlCDLxq26ClA8c+fELU5qrVYEzMt/mnkEtFlf54=; b=TlpQyKhLHnxZHn8xUXPG8np14E
 qAnX82PchPRnJm2qpJ+5Eq+hINCWy6LR8f76BVWUhFYRvR8VVxMFaZfRNKuDjnVi8lU45bxbKsGef
 /3e7hCpSnyWZZPwLUanOjwxhsAfxgxLnZh8Nx8MVTPWS6dYIG6/KpNyCmJZjJTCtyEXgcj/VXE8kY
 FUWUjJheJO/uI1yj3CRxcPfpekcdw8FYC4fgvYJvWFjLE7DNPmImEBm/Ib9HcOAhPUByXIomossLy
 BY7Cd8sa5H5e2F6jNDimvdmIPahTHvQQat4TWJn/K3PFf8KzotdTBDVvcas9baiNHuyeIuxP9iOG9
 sngT7gpA==;
Received: from mout.kundenserver.de ([212.227.17.24])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJGWe-0000df-6d
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 13:01:55 +0000
Received: from desktop ([188.194.85.158]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MXYEr-1jqXai0L8x-00Yz5E for <openwrt-devel@lists.openwrt.org>; Tue, 31 Mar
 2020 14:56:39 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 31 Mar 2020 14:56:30 +0200
Message-ID: <010901d6075b$d16bf560$7443e020$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdYHWqGiCxcu8UQ2R+mOXKK3hHcu4A==
Content-Language: de
X-Provags-ID: V03:K1:tEBMy9AXmHHkwSyUwmqegx6MOeMToz0wqE1Oknzy0axX0g2cx0X
 dT3ioav90REhOLw4+w1hQevu7tsMK48rPoeA0OhDexxOm18hH8jkiN/36uOFwo5r2m+oa6Y
 JnSOe9ABJ/xTXT94SSGfDg0yoidQ8VGSz5DRDuxrRCov7a9pfw14B+t9w/Wskaiq1nvKHO9
 mtCJuvJCILi1tzKxwAHcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UwJP//ZJLU0=:liQdBc5FCmJR0XT9jPM6/i
 ArZwRmeu43hNXHRMz26PlvCxil0aGhM3/7OpWeD0FExMGoj+JktlYTH1GSbzjbcVKDrUzfMOP
 3iuwrFXLQIer0lT+n+AR9PgCj9bLhkGGkBg1piyL+KHTUUhQkktLG/Cv2MomSsNkwe8fs2y38
 K0940mG538BuGzMonML8xVydHk6bXGjrohi7quiuG8R9cybj4ILa9GOlxpUUdxFWlL6AW4EgS
 FlELPBLf02IbWoOPO8NPW5igw/WcVsiYLWLAmEdxUHqdOgfZ4JbVtBhKul31+XRmiAfNCdfB6
 ROg2Pt89xaTxc7cmfUgu3eyqKVT62O8yuAiRJBrfKvG7BgdYcqkWng6huKYrO7hg7RhYMJRjE
 lHU4C76vt6kMHd+eqbsgWvt6MjFjCkD94idYliAHNQ27I57QlGXk07RCB7EB2ZTZOCNbM2WWU
 Sb5XgQVkAOkOWHclBLiqVFnQmtDLSbzgA5WTi9aFgTVdoOtebtuj91/vB7stYmxXar4By7N7B
 2L2/r0NzA/qwTYHKElHMUCYMWqqMuLtAnF+nNS+W5GQ9zROB9/krf9lLZtSJ96YH9EsoeIKsm
 KLktresWo+o/5yTALmgEzWoKfm8rBblxRxZysbLPFktnqo2QYws9joiq6+Xtb+kOkpIozWvkc
 5CjdQJepjVElMzWfQdwathjnKPYCL6W8sH7ro8W3npHMQoBx+IdTnYTOn64fi1+v1pB2ickNj
 lqswasDYE90ASjgzr/0TqmahL6+OaKykYmGuQ86gKgH/iiO2NQnqsJ3rqsrpReUIL9kgBHwi2
 Boc1QCLWKQb/+j4fFa69KqG8svBuo4DD49lIyTsBsfJIyGGoTtmkPhSyH3KSGHcq/ohMirN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_140152_531616_9B553F66 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Remove generic OpenWrt copyright spread through
 files
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
Content-Type: multipart/mixed; boundary="===============5325984367692510761=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5325984367692510761==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=YrsuL5Oc8wKO9t=-="

This is a multipart message in MIME format.

--=-=YrsuL5Oc8wKO9t=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I frequently encounter files in the OpenWrt trunk (both Makefiles and files=
 included in images) that contain "generic" Copyright information like:

#
# Copyright (C) 2014-2016 OpenWrt.org
# Copyright (C) 2016 LEDE-Project.org
#

By "generic", I'm referring to the fact that this claims OpenWrt copyright =
inside the OpenWrt projects code, which seems redundant to me.

Examples:
https://github.com/openwrt/openwrt/blob/master/package/system/opkg/Makefile
https://github.com/openwrt/openwrt/blob/master/target/linux/mvebu/cortexa72=
/base-files/etc/board.d/02_network

In the first example, a similar argument applies to the license, which is j=
ust a repetition of the repo's license.

I wonder whether it would be appropriate to remove these "redundant" Copyri=
ght/license comments. To me, it just looks like a waste of space (in case o=
f the board.d file actually space on the device) where it is not really con=
veying any additional information.

As I'm a young member in development though, I'd like to have some opinions=
 on this one before I do anything (including proposing a patch).

Best

Adrian

--=-=YrsuL5Oc8wKO9t=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6DPfsACgkQoNyKO7qx
AnDobhAAj8E/vcMAtEft+jPutb8qo4baSQ+KwWpX2DdFmlGuiPE39ZGSVFXBwYBe
o1Fsz7wkQQThoNIzy8zv6NuHRA/TIzsQPOOU58AkXT2gdMRibjBqfJZ0C+QIr+oL
cGXdVBK2AS19JAtXxTNJlkGUn6WxgN8GUz5KCjh3TwXMZEXhi7eHwd35yvaV9ULH
sgxLARDSeOL29Mt4/bIkCFXF4TTjGi5AMgKM0IWJVv56xi/ja8cu3gdkIc9iPCmD
kUag7c0oX5dNuyUtzUjOU8Yer4VnZ15xtqcD5nOaZGHY/u1No1glp4nCXkf7SjdS
vzLsGA/ykwxpfFDsQcJEyBPoPhn3zMO7v+sAqGK9Fuk+QRZnJu+KrHETDJaEOw4+
JblxkCx7WA1yf1HVuqZrfXcFdMxaDYoSpF8GLhit7IKSQ70Gxel/WfyoIp8dnajP
zD16BXgyodnwPqOBl1hJHvphGE28llVTx6mngQCVL5Md9KE4vpTFvK7rX+2DTD79
xzi2YEeNtZt0B+8v3j/kDgBfMMEECRy+mrRH5p18E/oa/gxrMmbd5LSBhGkDwB4g
HVB6cUPKtNRnzjqZ0tQyQ9I/AN9FmTI5286DAhsKc2yPVJkQZmi4bcKIqGWq7Uy4
wWAxPZM1GQIBwEXd6eOgBTF9h4cYklk+oFg38bB7lRq6x84QAEE=
=gbcK
-----END PGP SIGNATURE-----


--=-=YrsuL5Oc8wKO9t=-=--



--===============5325984367692510761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5325984367692510761==--


