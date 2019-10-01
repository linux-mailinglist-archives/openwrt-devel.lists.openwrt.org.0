Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3858CC30E6
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 12:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7rqEKPblkV1OoKSRnted5+4vOzdy1VoXgFzODPEQo7Y=; b=ECrMwFNqtKKTeWuBYNA2dloFY
	zvYo1l8QecMF7SC2lTlc4tVHvQlsLroSQsmzSAGAin46fMIyXYhifybQS+UXvSGyJU2/qaQ4RDAJ4
	wUR5BaUIx03Wh1ZbYfiVjxOt3P16NLHT7PRpsELbzZAeLGMiMbiS+nhb27CyezXH6jcWavNkDKj7w
	39Qh3F2wsNpKXBb+re10zo0d1Zo4j6o+Mm8XsLnaa/QGA21F6197NREM7utbdd+6KNtX8gHcCi694
	AvChIoY9oKQreIOR/lW0fEJX41gAiMycZ8DeygjMGnKkhra+riY9kElEdUy2Gr5HpG++w6qAyTaCt
	OzolwVuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFF4T-0005rI-4D; Tue, 01 Oct 2019 10:07:53 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFF4M-0005qo-5Y
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 10:07:48 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MN5aF-1iXjFs2jVV-00J0s4; Tue, 01
 Oct 2019 12:07:29 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20190930195425.28617-1-ynezz@true.cz>
 <002f01d577d1$ccf77fa0$66e67ee0$@adrianschmutzler.de>
 <20191001045015.GH40628@meh.true.cz>
In-Reply-To: <20191001045015.GH40628@meh.true.cz>
Date: Tue, 1 Oct 2019 12:07:27 +0200
Message-ID: <006001d57840$08b18770$1a149650$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJ9fJfkzozzshFSdva/zMqLIcYurAG8ZbflAm9ctkml1CPVAA==
X-Provags-ID: V03:K1:zlguGhQof/shciNy8hBo+VaMKAWLYIqM3r9VmUvIbs91AdE/mW/
 xVWwilG9RGF8COStZJvKGXz5rQAVnDtb43blDP0PvSCgsI4nXlVGMdmnakSJ190I1M8iZ5d
 8VEun0eAn5xdAAcoDSIA3WlNamBDI0pELnvP9dKguD7hcTYOfYMP4S7fYekNEAXzZP9MUQT
 6J0GcCLlYrWNqVcIk1cIw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RHrRSdJ+5Fo=:3jXZdWMBEh8RmRzRxItNp6
 h/7RQO2HwN1g7WG+XXJWywNYwCA0bK4g/pVEdIdkp44iC0PeGyP/ykJCKefVCd1F7hZIIxdTj
 lAVklJMu5jgQvuz6NUY0Gs9Gh+XGRIAtApon7sc1bzwgavmkSWO2RjEMiC1zdYpN5TIWm8Lu9
 pFnLcLO+Rj+7GBsEERBxw7n8IKnL3WWX3vqBdP+2pSGpJEpo2UeG3Ps2DKPjHWUru6xiy3CAn
 8CKHOqSGElEP80LThnPqThaHlqLRzQplbbZ+7JxlR1VXePJK/TYyNzUgJy90iJ9YOAX/BZZmc
 rsXGVvJuuzfJKqLBDwsMMtNE7DD3qNm5F3KVsW4tK/3f18I0LO7wRMahxpHgsHTSKa+SWlFJc
 s7gxhkVFLOMPCzq678SNkHwHqLAgeHkcEbP9SW/QSTPkXWYzsx/WKrg8iMPvMa3c/dsbIwzCU
 Dd4k8xd03PgJ+oupigLCj/QJwMyMvA5s+17oiWlSbXK1OhlZsxMChdf0fdR/f4R0313429rom
 XZBXtIL9XWvyApumQTq+8r75m2WE26oNMVEUKpHKHxKT8Jz5eDvW9PopLDMVO1yO+bEkjgk0v
 VwtuSXc0OPZgvJ1cA3clqyCuzgbFD6zlrLikX9HGHJrOv3ia3RPtTwrEhmBkSuwHZRqJ5c7CM
 /xvOUhpMCUaRhGeE15aTq04WfjW4BOy+0oKQW4qS07cYgxDFQx3lR6g/hml5Lc+OyU3bmPRfz
 UFx56lFMvmAgEX5sbM7AiH4/PJCp4WhucXjRjAOQX9QdFYKNlwsUCyZgyCD4v5GWwBNZzVw6E
 Y9Ik1seIMJ9hXLEUiijc/PUUohUZr71K7XfraaH7rpmFqVhr089KAsm4I2YbfapasKqyZLic4
 hra32qBwA8wOqrGwrziA8prh/+Hsaqm6x83njlCwI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_030746_507623_5A09A4F9 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79
 for wndr3700v2 and wndr3800
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4676628886163416515=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4676628886163416515==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=kZ+1Pyi0MPTQtI=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=kZ+1Pyi0MPTQtI=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Petr =C5=A0tetiar
> Sent: Dienstag, 1. Oktober 2019 06:50
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath7=
9 for wndr3700v2 and wndr3800
>=20
> mail@adrianschmutzler.de <mail@adrianschmutzler.de> [2019-09-30 22:58:22]:
>=20
> Hi,
>=20
> > ar71xx has so many similar cases like this, which nobody ever cared abo=
ut,
>=20
> well this case was properly reported and I got simply interested because =
of
> the proposed `sysupgrade -F` "fix" in that bug report.
>=20
> > maybe it would be easier to just deal with this in ath79 by setting
> > SUPPORTED_DEVICES?
>=20
> I've looked at this option first, then seen different NETGEAR_KERNEL_MAGI=
C and
> NETGEAR_HW_ID for those device and I've thought, that fixing it with
> SUPPORTED_DEVICES would just make the mess worse.

I see the point, I just wasn't expecting an attempt to fix this in the very=
 last days of ar71xx.

Nevertheless, to support older devices, you would still have to add the "wn=
dr3700" string to wndr3700v2 and wndr3800 in ath79 ...

>=20
> > On the other hand, if you really think it's worth it,
>=20
> I think, that we should avoid promoting `sysupgrade -F` as a standard upg=
rade
> procedure for the obvious reasons.

Definitely. However, I just added the "correct" name in ath79 for such case=
s, i.e. TP-Link WDR3600 having
SUPPORTED_DEVICES +=3D tl-wdr4300
etc.

I will have a look whether similar fixes to yours for the TP-Link devices w=
ith similar setup are reasonable or not ...

Best

Adrian

>=20
> -- ynezz
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=kZ+1Pyi0MPTQtI=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2TJV0ACgkQoNyKO7qx
AnCLIg//bn43jp9IMM+nq8pRkwcp8YxIHk9Cw22/PL1psSV9OMhKNjD3D+ArWCNF
o/gofijpOHDznjrNZBb90kaHG8vom/icYZhEGmCVtccyAEZWIr/DWPE452l7W2en
S0VBmuut6A/o05i+MDzkaN+4euk73kHpk41L4jxoLrBqiGZpZRa6mgBevUQwbKKB
IpifyrU7GbrU++/9qKqq4YBHegQ3a418UeAo9e9kCymQJuRXTGALHxzB3swsDLg6
DKI4xRwvCsFCm47f5nbanAZDKeQbMueBnCmFjAzNjC8vTQfQcvM3MtSvmKrVFrdG
Iv0rHW+f8xkYHofDq+cqMKUEZqDtQVgczwZ66t3tCQcvsPKTl98z8rauyW06E2di
/w6Y2DOmT7ysjmYSs73/H2loaINDov/msJJ64KymqID4wO1vmUGw6t1OcM6jWsCg
GCZV8gpGxs8GbxDdPMOYf8N5i8H6NzG4dkOh/lDgSx4uyEGdkdy/7S9YTTUhWi6U
veQO0CPrrE0K+ofF1UBZ0IDO+b/ZAgaFF7mKAL/sIoNifTDEmdX/u6NB5iTI6YV6
JL3iBzn0inUWtXTIx8HF10NWlViBgSMFDJzGuKDKU3dNbVtAfDsGE9IfAifeItkk
1dXRYabWXFTz1dsP8sKEDi0k74ZocLw2fxEffmtAzJ2DVmCBsLg=
=Qhur
-----END PGP SIGNATURE-----


--=-=kZ+1Pyi0MPTQtI=-=--



--===============4676628886163416515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4676628886163416515==--


