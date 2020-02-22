Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BC0168EF1
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 13:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wfVE6vqWscqXl2ZfjZYk/6xKVzJ9sgitYqZooAyg/6w=; b=K0MhHtdooJt9z8mQZ3yRmv+jy
	9F/vAm2ar3w8w8viIuPlx8rYXVYurBJsbhFtHRdHgMgsRYGAzukOWtN/Kjy8CvGdQxPVVLpbamlWo
	fTh7RUgpHPilIwAuiECaQJVg0YN8+DVCqIn1aN1m1B7zKwrcizcKm2kxT/JzsmvCiP5kB48Ku7PBT
	Cf5gUS5okzZrlW45NQjgaFp+sih+f+0wd+nkEWYtQgW0aDafskTuazYBv7LtKNTIERNa4gcM0vw0/
	fxUmzGYGuv635T9Wedsj1FJzml5L+lF6rOOLDq5cskei9OLd32XARKqAD6f8zAktYjhqt2dmX4TQ0
	UaGcz0BRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5UCv-0006Qs-4B; Sat, 22 Feb 2020 12:48:33 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5UCo-0006QC-JL
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 12:48:28 +0000
Received: from desktop ([188.193.230.10]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MRmwM-1izTgW2yAU-00T9dA; Sat, 22 Feb 2020 13:48:18 +0100
From: <mail@adrianschmutzler.de>
To: "'mans0n'" <mans0n@gorani.run>,
	<openwrt-devel@lists.openwrt.org>
References: <62d2bb46-dc7b-17b9-7ea9-b7f65ce66750@gorani.run>
In-Reply-To: <62d2bb46-dc7b-17b9-7ea9-b7f65ce66750@gorani.run>
Date: Sat, 22 Feb 2020 13:48:17 +0100
Message-ID: <007b01d5e97e$5b8631d0$12929570$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQLB1vDMSlmiwzOJu50/xv++QVTg/KZPTFKw
X-Provags-ID: V03:K1:jpqcuek6DvVjzZh5IHhFF5XFyrXjqxcpxWzsfppGCp8pExqQcGp
 z4k1LaF6LzUz/VurXPvYSBxD8mcviYxNZzBd8Km3QfrtpEoEr/WE1Wt6o6qGSJrk9S2RJgg
 oSn6kFRBgj4tJ9eG2/7ZCAUEG9kU6xFJxyMqS9canXM2nv6YAgi7NYYA6m9E06P+dRnknhV
 ymarMo25scDo+slzGhXxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sbp5DXO17tg=:b+k/ocLVyIgyomMm30He5y
 Lq602iojhIvjIBoTJrOLkZvLua0swoBPbgmXZoR36qB7YhA2UJLTA5gR5GU1Ir8HOJxCQmXJV
 JfuYOYKg6zwfBniH++TSJ+JFD/ia4YI4QbtXxT4m8+fparB+YL39SeE7KnkES886k1sWOSV24
 QcQytWtY2CiQ9m4/8JGXOU+I1PolJMlg5nOveW5HUti5bQ+9AD6IvgphE5QLNLmJfjS9rkAIL
 eGLQ0CHVOwBkt932DAAc6Ge7cZFw8JVeTysLt1djcIpO51QYDoQBeOyMqRcvCi21SwLtUtqRu
 5ey2Q6DvWlHNCcysxXUJmAMZN3WHMxrAeSh8UBP17LAFhVItfy2VSVWqpUFA5gHliQq1qtx57
 pKbj6m+Xu5jv4UUmVsmIw5Png8mDY469mOyVpNTGspnA4yWkLSK0Nf+N3NEaqYb2HKCElmuQv
 czsnyShe+aAkQ3r6zkFQ0vEJvPwGRCKsQM1tYSwnPBRm9OtreO2laDckQ/X7Qd5v+kDVZh07/
 MK3CLp5ij64/3gCe8DyHueYZliMijHApyEe6xi6EXGjVkX0LfGqnXd49SM2+IEi73MKRQcI4C
 95Gain7fLCP2Kp9iaLcbj2z6zEWmyEdxYpCU9CqFoHiAMObiD0bI8C5iLFLTM+YWPv55swTt3
 kX1Vge2s9twFuWNYsrburqApEjR/K4vo2d4O9NAPnPfz4ac3CR5ZoTAGII7KXinWUmo1i9VJh
 KMoUNnO3T7G4SeicNcUFxzfY5RG+H5mAvNMuEIRLdLo3zFErY1LYLhGy8i5RunTJCYya5TLzg
 6hdH++Xu45UTvr084CN6m8gyjdURqyLwMPF0dkNm9aTs+tTqDVBin7l3vdw0wEOy/q7yzt9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_044826_928838_C7D8CE5F 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Some questions - help needed
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
Content-Type: multipart/mixed; boundary="===============4405497552063781734=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4405497552063781734==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=TYoOL1FgZ9XnKZ=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=TYoOL1FgZ9XnKZ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of mans0n
> Sent: Samstag, 22. Februar 2020 13:25
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] Some questions - help needed
>=20
> Hi,
>=20
> I can't find the answers on my own, so I'm seeking help here. Any opinions
> would be appreciated.
>=20
> 1. I found that currently four devices have set DEVICE_TYPE to nas in the=
ir
> Device definition.
> But when I tried defconfig, none of them actually had
> DEFAULT_PACKAGES.nas in their .config.
> It seems DEVICE_TYPE cannot be set per device, it only works on a per-
> (sub)target basis.
> Then why DEVICE_TYPE was added to these devices?
> https://github.com/openwrt/openwrt/commit/7a1497fd601d8803f60845034
> 4113db2bdc470e7
> Is this intended or a bug?

to make a variable "per-device", you have to add it to DEVICE_VARS, e.g.
DEVICE_VARS +=3D DEVICE_TYPE

Based on a quick grep, I haven't found this anywhere.

If this is not done, the variable will have the state of the latest assignm=
ent for _all_ devices, i.e. the last device setting it will determine the v=
alue for all devices.

When looking through the targets, it seems like DEVICE_TYPE has been partia=
lly used target-wide and partially device-specifically, where the latter is=
 a misuse IMO (or in your words, a "bug").

The easiest option would be to add this to DEVICE_VARS for all targets dire=
ctly in include/target.mk. However, that would be a little shady as there t=
he variable DEVICE_TYPE would still be set in a global context, while it is=
 then overwritten per-device. In contrast, the classical case of a device-s=
pecific variable is DEVICE_DTS, where default values are not set globally i=
n include/target.mk, but in Device/Default for each target separately (if r=
equired).

>=20
> 2. kmod-usb2 automatically selects kmod-usb-core, but kmod-ata-ahci does
> not select kmod-ata-core.
> Is there a reason to use "DEPENDS +=3D +kmod-usb-core" somewhere and use
> "DEPENDS +=3D kmod-ata-core" elsewhere?
> Can we make a rule here to unify this?

This somehow depends on the organization of those options, where one is nes=
ted and the other isn't (in make menuconfig). I've once tried to solve this=
 for the same problem but with kmod-i2c-core IIRC, and then quit at some po=
int because I couldn't find the initial source of the problem.

=46rom my point of view, you are very welcome to solve this mystery.

Best

Adrian

>=20
> 3. Could somebody suggest a way to configure port 1 as WAN in ipq40xx DTS?
> https://forum.openwrt.org/t/how-can-i-configure-port-1-as-wan-on-
> ipq40xx/54783
>=20
> Thanks in advance.
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=TYoOL1FgZ9XnKZ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5RIwsACgkQoNyKO7qx
AnCCWBAAozF1DsOKoKTY2osh6Fui3QUuoYEQ+0rC8AYK20e2SD1sGyvBwBEM+6VZ
oJOg8rL6xW17K7WGduv6sZw2eAOAdmnInu+d/Ou95sQ9KpWGJnes9XTOPw85HsKX
4p0vBgUmuyVodsyPcMC+f3YyhXGU/MvhH2AwJ142sFRbo4tlV2OlFuuyPQAJqs3A
vUz2Z2sS782OOmSsC/8ikkACpKTU44ZEgO2vcsS4OF35w8gO4xUUJx1WuHCR+UYa
AEty6W9Fc5jypu/txt6oEdjfgmiiDydtXO1cga1p0vX6k+pKgglLqIE5U8mAbyos
QKpZUXiH0/IeLuq2onIpGSMAeVFtA0bGHDqNURUMGlV6wrTOsr09YVGoFDpsPCGd
457gL+7XR6k9rBCbiViqxLbpqyL9WeMetVqONbLv7rYyeg4ucT8i8m4y1XZOl1qf
NtvlnolXiZ00K9V55hEECegAHI1vi9l2SqoQNo7dryLgJnGeTsC9n5xUjqnOvh9d
Y5gC74eTYR0AEI3BAcR2pJR32zJWhF4eZVH38y0GwnriVFacu10wtoZkDnCJLOVk
Bj2MVxxqFCn0epqvTRUrxxlgDGN2T8Nt4ZtgnIPOpSkKWP+tShytZS7nFBLx+I6S
ydtDidq/VSk0SG2bLIPtfqRM71ujhb4bqV22VCeBqVngH1CMNPs=
=1HDa
-----END PGP SIGNATURE-----


--=-=TYoOL1FgZ9XnKZ=-=--



--===============4405497552063781734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4405497552063781734==--


