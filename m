Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B448719E73D
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 21:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q6N/U93AtvOvq19tc0uPnVQvsDsumtNMH6cyDrm7+Qg=; b=XEofTOxEfT7B3e9l451Tr+tfy
	lO8HEarRsCtuNS8HjLVJsi+3ITB2/8YsDaDXXzsT7pgJTpnlVVcxXFwb1lZHeL/PrGcbk8SmQiPG/
	cQQHi5S1qEKJPuXyGHWv+PT58C0CrGpecwLjm/ojG9hsCJIaDlCC1uxhAEIcXdNyY7qSiq/b7Xp9s
	9h8dWCoX1iaGFA2jUP2PZglAuahX4TH//yO/kBi1YAMItJdMOvZKPl9a7VBshYAb9w6PLQFPzvZEj
	pL6CeVgkihwiHCFZAUXzYp1BHmVcvVW1tKsUPA9vEWW64Yg4ZLHAVf2po649zHA0YzOUmFUtT38E2
	jbgGbER6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKo5v-0008TI-TY; Sat, 04 Apr 2020 19:04:39 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKo5o-0008Sa-2J
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 19:04:33 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N7yz7-1jH2hl3Upv-0150yy; Sat, 04 Apr 2020 21:04:26 +0200
From: <mail@adrianschmutzler.de>
To: "'Hans Dedecker'" <dedeckeh@gmail.com>
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
 <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
 <004c01d60ab1$538a73c0$fa9f5b40$@adrianschmutzler.de>
 <CAJLcKsH1qgQOoDiAZg=iBkKRoHkhyk75ifArKQpFjMLgJensRA@mail.gmail.com>
In-Reply-To: <CAJLcKsH1qgQOoDiAZg=iBkKRoHkhyk75ifArKQpFjMLgJensRA@mail.gmail.com>
Date: Sat, 4 Apr 2020 21:04:26 +0200
Message-ID: <009d01d60ab3$dc783ee0$9568bca0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKgKsFllCd0xooSs4K7DyG40rJfoAMbhp/DAUCZcoECMgUAd6agnr1Q
X-Provags-ID: V03:K1:8gTgyzLvLcbZB4X6n00sDwFb4SeFZmVIY6XH93A+jlCyVOcpal4
 +WbnRBOOerGtjwPNoZFSvayq4vZiAYKc8nH598efHv7OyB61JopfI9Phow+n/1ap+1T16qP
 MUAArx0EwIy8ayVFIV85H7yAGhzDKennq4s9mmhvC8hctfQpfZLhfNuIsCsBOB2SkylQJJI
 GLeQfuQRxFRKqdFvRnUig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wd09PiU6vD8=:iqeddVxeZ0WP2KIY0DEyox
 pKuo6PrtTMLE5HNsV7bpSngnOvAHjOlbS7196SdO+ZLQ+gCYCrfxGsEv/uHX1Hb5FVt9/F5t+
 qS91w3JPUQj2AF5fx3jcG+fda9XmkWCQ8do4VGfud321eZNUaJlpmsms02eVPTks4HfDg2guB
 KFYQf/BkH7lxrnJVWjbpSImp0y8Btnt5/6nze/DmKzeVaW9Sz3UWuO3ogWTO6qwz0xGXGjops
 myo4TJ+8xicatJVCEPI2uoQe8NC2EK7xL9kAln5u3MRtDlUEnnpQgMP4aeXjMTFu7Fhceyobs
 CyBkAY73VU+cJnvL8y7S6zGVgJ56BreTakjcflUiU2r5HM2bUO76Ge9XcaVAlc9UhIAAOce1c
 MGJKNig3bUesJneaR7EKwAyBfTgZ16/iL9XU4YCVk1wJAI9cUAuuVtujCI5Zh0Bw3uvatuf0L
 z+j+EmJsRJjwocIKzqAL/sekTumwdRCAlEgcnm9SPNFJ8923it7ZbKWBIYZz4I0p2LbtQyeCt
 +VZKsPoKCMf3aqotq7VUnu/cLKivSXmkW3/WC/0V7JtKPIKmiTFVtTL4d4V8XCBe607aYM3pW
 WapjmG/+QNwacgSGoB1le/dAwObyW/K0bqUb/r0PYkbDwp8Mb3Nu6nRALB50gxai5SbOWKQKU
 9TQ+NfJt5XezQIgrulS64XSY6Ei8FPBGya4x0WPaKL8B92rsr3z68JNyeleEvaKjavMagZ9ia
 3f+0YVsJKRw45QulpsVYWWzX7kLb5eUJKkc0HPwtkJhrfPvWY13fj7esIWKDNSw8zVRcj1gMX
 XrwGPUIPzt6I8c+ca9pLfMNOPkAZs0gjuOYADd5DhhffAaFt/YOKI3bsoaZo5QRUP4ktSUo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_120432_397079_974FD3BE 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release
 script
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
Cc: 'Peter Stadler' <peter.stadler@student.uibk.ac.at>,
 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============7521906468920258615=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7521906468920258615==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=2y7UZNTNwE60mm=-="

This is a multipart message in MIME format.

--=-=2y7UZNTNwE60mm=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>>> prepend 'uci' to 'commit network'
>> Can you explain why the prepend of 'uci' is required ?
>> In other words what is not working as I fail to spot the issue
>
> I think the author is right. "commit" is no command but an argument to th=
e uci command.
> I've tested the script and it works fine for me ..
> So I want to understand what is failing ...

uci-defaults "scripts" are implemented here:
https://github.com/openwrt/openwrt/blob/master/package/base-files/files/lib=
/functions.sh#L256-L263

As you see, after all of them have been sourced a global "uci commit" is ca=
lled anyway.

So, after all, the "uci commit something" statements in uci-defaults files =
are actually not strictly necessary. However, many authors prefer to have c=
ommitted what they touch directly in the uci-defaults script.
This is handled relatively inconsistently across OpenWrt main/packages repo=
s, I once had a look into it and found that it was about 50:50 back then (h=
aving a commit in the file vs. not having it).

However, I'd still expect the "commit network" to produce some error anywhe=
re.

But instead of adding the "uci" in front, another working solution would be=
 to just drop the line entirely.

Best

Adrian

--=-=2y7UZNTNwE60mm=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6I2jcACgkQoNyKO7qx
AnCuZA//VM+r4ufP5Ura6j5TCoSJkjkK1qS8+m2wImMY5vU6IiABPCT0RDUFONHQ
FCvDdZMO1Sr8dtLODuUtvhdn7AnXUN3CbskVQWeXJGwAnX15AfF0FswvdEhG/ICz
YDNjyS9aSyv4xKepXY1yrBvBj/10YpH+RqWoeYE78IxiUTC2KcJYApFpPy2/JXEj
dWUs5My4LLA6e7Lv746IYYHV7wkMQT/PvatNQcz58rb5lBoLJud5PFaic18HhF7r
jWBB/AgVwKtOuswnuObyri+3iUL9CsrA4UFQf77p8lFMDBb7FthMea1MwvNLU0hg
GRw0OmR2DasrXxDPWqlwEt1ehL4A7sZsl0iVpMbX5UvlPMfUY9AiqBzcW0HcTZGw
YZOCl6KMLVM8UbZiJ9t7JfmgiKh/ak0tEK123pLIGLQmMtR4PwXfzyKOz+c/Surp
E4QbvoJTJ1MEqJI16tVApIYLlr1YV2125D4+acDmb/iDSLloOn16JZAF6nXPO/wo
PT7yQ/9Oj/YVTmaOQ37muwefpIb7xzZMcVxb8354PUlEH8AGij3dwltobDMbcXLP
9AFepizbot8/AFD0Zr+JrreoEHRnbV+DkL5vzmJIXqM08Wv+vykTlRis8cBKR3Tr
C5+k1egefa/hsVGjbzTennKXC7hbaDV60PlkgX5zcbAPuQ8dr6w=
=spaN
-----END PGP SIGNATURE-----


--=-=2y7UZNTNwE60mm=-=--



--===============7521906468920258615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7521906468920258615==--


