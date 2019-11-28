Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A841810CA7A
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 15:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wcSLfYoEe0AHnR2P1BkVhITYs3tEx9f71/7PNrKynW0=; b=MMxizTKA/A+y0rZqdDSl74jSX
	zUW5JUzx97lwoQekE3UgiRKhRwDlc0+rDLBo4IAKidJfgc0iqjfqxmm7Z0kheaFvGrOMRzyl8FhBc
	2M/PKP0b1FiKL4qyX1QPXyTYcW803NenIwBh03wypZvfKM7utxhje6aoePocKEOzHMvQGXSh27fnO
	F+O4UCrbWEEYAoRntUIg4JyJYwcmOT9RwAQZVGSYrn6C/7J4vVhwjxnGRM5fRUsiiPBtBEiIwM1J5
	kLGRmD+JbRI6fSK0Qq3kXnalAIpJFRxdxA07fr/qZAzhWu2UEz9vcZztuByUfXR+uqkqyCSMf6LSL
	86eOGLY1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKyR-0001kq-QO; Thu, 28 Nov 2019 14:40:51 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKyH-0001kA-Ho
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 14:40:44 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MGQWr-1ibARp2gNJ-00Gn9a; Thu, 28
 Nov 2019 15:40:32 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 "'Hauke Mehrtens'" <hauke@hauke-m.de>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <20191128120459.GC61235@meh.true.cz>
In-Reply-To: <20191128120459.GC61235@meh.true.cz>
Date: Thu, 28 Nov 2019 15:40:32 +0100
Message-ID: <00e301d5a5f9$c9afd080$5d0f7180$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKHHZl+c6tYe6NxV90oTdPoalDB0gD+PJJDpjXEHcA=
X-Provags-ID: V03:K1:YpIhcg99Yp/8hlmIqyALA6MYrtwZhz+4X2/FzwDyL4ME6Q1kIgf
 FoLuSVD+iu8tBNFwsaA9xOvaLrJD6B3BOG+VXP9QKvNZ1nZkbl2rfLUi8NOKfEQCywfXFmO
 zxCILOd3tYNGXxfICsKky/lec8lNkMJl9Oh1suZDnBEbOv1s5Xf3n1FVX5NB9YqtTh3HXqF
 yy/cC8cspus72y0blJVlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bC1nYkvaW3o=:KpJSdiedioAN8iSrpmZDad
 6yrx2dKq7KDOPyhTriLokPIPl55X/70nhG4Wul5dqAAPZuLLj+Gzi+g0cyLGVTf6CoIuTcnG7
 mGUESbWpYP6WuQC7YeOXH+2l/P1HUmFqG7bnilAA2ynJp37pMkUVN8AbIlndc4m97k41YGL++
 dUBasSr/QP84OBeVbv4aJJZf3yYwxZieIZAFwCdx/I3HAWy+lWw28TAmujF5eueuR6Es7wB93
 Wgh6SICAULuQXF+aikFGCBWzFYklIs5iMgZUfCGpBbCPZfcPdm0d1XzzCR7kZJH8yDO8qevLC
 rtJEPF/Os4lyhexiXw58Y7Jj4z43tqUm60xiLPPCdtLJgmoBGGADCz+c6bBKO5DpFNyAdEWU0
 6RiaXj9sCwSKnLTpg8zNdRZjmfHMBLFU5Pp+M3bfpQbZTmwlFovVUQWTscTvEu6MOUc+go3fs
 U2a93B4o/qobUXrpwKa5I8G22iM6eyLU/Oyo7sG6/s8Q4yvz2Sf6r1HZgtX2LF9qF8p5kXsJy
 +GqN+4VmKB/llQ34e04Xvykh36q/a4ZSUw+2eV3N98QPIptG8KeZo0DLssCcIkenB6OgOyYhu
 XmgB/qxXwWGtsHXOxXjnxTeYK6ADYNu+uwCdOFuwhapUzUe6NJAl1eG10D0A369vCohtIbl60
 MXaIfVU6keR3hmkjp23flPMZV/O3Lj3628DmY1oNsOJCCUtjY/v1QZx5S/HkE1tKwdRfgvjyE
 Pw5nKeA1ontDlsAdB2XxctnLh/rqx6wwg8vZ6qATVV2JaajYx8M5aza0+/2NH4InZr4Ga/uD3
 yLHTjFJgwN1IThnLK4aj5QmFCPgIi7ufpwUOShEWTHSY9OXmXT1O7a8y4yOAXzeyinl6G4aJP
 WyNef9Ewv0Jxq/yiVNUTro1vwTmEvGX81Oi5W0zjY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_064043_668002_5CECE6F3 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: multipart/mixed; boundary="===============8613110064919980367=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8613110064919980367==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=JKBb94Po2y7UZN=-="

This is a multipart message in MIME format.

--=-=JKBb94Po2y7UZN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> I think, that it would make more sense to make a releasing process clear,=
 make
> it predictable. So perhaps rather start voting about that? So we could ca=
me to
> some conclusion, release rules? That way we don't need to argue about this
> anymore, it would be set in the stone, unless changed by another voting i=
n the
> future if we find out, that it doesn't work well.
>=20
> So this is my view for the start:
>=20
>  * new release is branched automatically, 1st day of month, Y months afte=
r the
>    previous release
>  * release.0-rc1 images are being built immediately, automatically
>  * release.0-rc2 images + 14 days since branch, automatically
>  * release.0-rc3 images + 30 days since branch, automatically
>  * final release.0 images + 45 days since branch, automatically
>  * point release every 45 days, automatically
>  * point release immediately in case of serious issues like bricked
>    device, security fixes etc.

I'm not in principle against this, but wouldn't that mean that we either ha=
ve mixed kernel releases again or would have to throw out a lot of targets =
for each of the stable branches (which might be always the same set of less=
-cared targets)?

>=20
>  + claim official support only for one previous release, any other option
>    would need some kind of funding in order to have dedicated resources f=
or that
>    level of support, otherwise we steal this resources from other parts o=
f the
>    project (one of still unresolved topics from Hamburg)

This might also have negative impact on the "slow" targets, as they might q=
uickly end up with no supported stable branch anymore (unless there are mix=
ed-kernel releases again).

Just wanted to add that perspective.

Best

Adrian=20

--=-=JKBb94Po2y7UZN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3f3FwACgkQoNyKO7qx
AnCzNxAAlM4lOcR2TAPpM8zbj/NXlfursdm5amUdy61fKN7umQOq/7qExVZALU8v
h+NIDLJQaPBY/Y/S5Tpd1PUmg4xgOEXEF/G6ikXJKqtfLsCI1evpOtjpKQ8XU4ra
TFjOUA8wahUpYQmbJ7Lm8xxE7TljIxTctPPDTY6oGaBcTjdmX2CjV1OsxvFre3Y2
Ypbte08qB+hGzVRCx0hioRmCSBCVw5yInPLmj/appUtoqSwfryob8UZ1ZUv4WV0L
KP0U8mHYAQRouSCqkfyLhe6IR9YL4YybZZT2uctnnQZrpwqKczbWQbyuMq/d93a6
/Ro9vK6RC2Scm6RUfQFh0g1yUqcc7hL5z6lkzGjXNHTv+tLKepwbGXb0McHtqtVR
XrRx1QQicuApEHEz6/rMkRh6rlnoepA8aBZyxt9Oo4fLAleEPqvME+5JiXc0zNnD
NmVIRNAjNxiDjUbGsmPpSrVp8IBPFrM+lIHSkrVraYtTorF83BXt/tJm5cEMU/3H
dR5YWVSe+nFG3wrmm0M1+Rwz3glo9HxHmCD6CNwq+ibkBI0b0c2BYDhHHUJmsEXb
WfyJ5NC4wb8Pv/u3o0CguOdGtrk/dyvAawZtFopkV/YHaKgGesr1QLvO2eEmvpuG
Fn9z+GHZx5MD/v+NLzVwr0fLVpoKl7p7kBkcVh7QnmYsJo5vgdY=
=KC4N
-----END PGP SIGNATURE-----


--=-=JKBb94Po2y7UZN=-=--



--===============8613110064919980367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8613110064919980367==--


