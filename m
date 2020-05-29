Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C091E88F0
	for <lists+openwrt-devel@lfdr.de>; Fri, 29 May 2020 22:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+MQItalhmhZaGV8Hs9MfcoKbP8/Z4pRAsFibLhPkQ+M=; b=HWxtp/9UoA2TDew91ygbMfA9D
	9NklFxy+im5JbZgeAZQw89BUTCfVhtUmV2Yl1+SYRXquxi0nhLFOiV2QLN3HTP4lgDoPnxkdd/34g
	jmrJ0ZdJW79TJIOKmG8s4DWNnvHcqpYlYGvIb3gA3n31fgAEdxJyclsSvDmXqk+aVbbWh2/CE5GsG
	mmlDq8m/gnCbvKB/lD8b4OhbmxcqsmJsZuvYF5QGRzB5fGUa9q2oISYHAz0I6qVeFEukIjc1N8g/g
	WlTh5PqqMk7R/YJk5V2z060zsGEEkSkVfKEkxD57idEWULraglp0gzgT7QHURZyjjaVMAVvK32cr6
	cpPlWiXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jelfx-0002tp-JG; Fri, 29 May 2020 20:32:21 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jelfr-0002sy-0b
 for openwrt-devel@lists.openwrt.org; Fri, 29 May 2020 20:32:16 +0000
Received: from desktop ([188.192.133.27]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MK3BO-1jQxsb16kQ-00LUEP; Fri, 29 May 2020 22:32:11 +0200
From: <mail@adrianschmutzler.de>
To: "'Christian Lamparter'" <chunkeey@gmail.com>,
 "'Matthias Schiffer'" <mschiffer@universe-factory.net>
References: <20200529172238.43399-1-freifunk@adrianschmutzler.de>
 <013d01d635e0$f9f72b40$ede581c0$@adrianschmutzler.de>
 <4a068b9d-1c65-496e-b367-ba1b22920284@universe-factory.net>
 <4387301.q58QSLrZPZ@debian64>
In-Reply-To: <4387301.q58QSLrZPZ@debian64>
Date: Fri, 29 May 2020 22:32:10 +0200
Message-ID: <01b601d635f8$3b0ede40$b12c9ac0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQExd1SFNnzajrRSninYrjkPzRaXTQFd+sXJAr2ke8oBeiC20qncUnXQ
Content-Language: de
X-Provags-ID: V03:K1:2MvaDhXl+n2SMbJiW+gP6mGnUSE8v1l+DBoSb5ukfcy3fqmNmi5
 M7eIupSPErEVqYqwwWzKc6SGB2NvUgqppGv9Bs7tawxpqosRHhSsZ4Sx5I+kYeca77Avm4+
 18Ftk8Zh9i6MVals/5/juEineo/WHdtj9/lhoo0L//XG2QTXVTO1LsQvZR6LfGWeR0bl1rt
 K/g+mSzqLItAE7FHJPwOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ycEXMasstaA=:hmQwT9k1IwdNTj6VOi66z4
 eSCHNyOJvrCOYfWTrhZizFJe0q4NJWyUy2mOcwicJOTfpM4VieLc5Q78JICyslXgkxjPlbXgn
 kfOqEhWg/+3XCgXVBnQCRz/QsGXK+fKi6A2GbcR4Ka9InzSYgdIcoa/se8Xbt34rWk2czce25
 BULKaHmtP1hyS4jO7E9RPH0gAW84eEl2eyruETgWYY0ev5sMUU3PUWto6SKv0o8aALYLKDOKZ
 VtzVsBBeYxbhI12nCA5UYkcGO0iS9uwZwyMiPyA6tgqwYFli/HuYvLqJc9Rl0syTwP2mVloJP
 kPBxF0OjfpvO0chDgtmplM9e9HT00VxDRbpeCG/UrrxRVJVfoHPGFSgmKsNu4ZAWVGP7HcplN
 x9cIetGzNXfFl7SsdvIcEMrj4WjPJYvQxEo2VlFBW0q2UuhrHSRZ044jT8aJExab+69BN+8hO
 nx1R3K2wd10SX9JqEmaG0ymjFl3ZJ1g88lxVRWjgCSWMvidoKnrV3gH1x2Rd0hvtacP9brK0L
 DyZfVb0e1dT8CGpUTE7ki6r8wDjV3CEwWDLjCKj0uqMvbuUMxqFRAzJeD3w2Xr84V491hYueU
 klfGbLB5GLOIasvwZLkygsaIxgT8Dtc2Vehc/rMzJnGEYhKxC0l7pe3rJijBFcdU5v9+r2bbN
 NpyJpEUz1ERDcbRFcCwBpLlarmEhiwJqs+wWvUdvv/HJclTttwz07RGwLANhf6NySgn/Hk4RH
 JqPPYjcvlgR4+cWm7U0clsCaXNrB4Ygk8bkerwcyG8BrR+VguYV506jW8ygojld/VqWOB9S+T
 18JigoCzS97J1KPofJm79KvK55fW75p6LXtqDLN0aP8QB0lvMb72eV7d0ymg9CAc8RkrWGE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_133215_352354_F05D41EF 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] treewide: drop DEVICE_TYPE when
 used as device variable
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
Cc: 'Linus Walleij' <linus.walleij@linaro.org>, openwrt-devel@lists.openwrt.org,
 'Sungbo Eo' <mans0n@gorani.run>
Content-Type: multipart/mixed; boundary="===============4033633401491666336=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4033633401491666336==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Gd36vGMLM/2MGX=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=Gd36vGMLM/2MGX=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > > Or am I completely misled here?
> >
> > I believe you are right, it seems DEVICE_TYPE is not evaluated when
> > set in a device definition.
> True, question is then, should this really be called "DEVICE"_TYPE?
> It's not like other DEVICE_* variables (DEVICE_NAME, DEVICE_PACKAGES or
> DEVICE_DTS).
> Because the "targets" of ath79/ipq40xx/etc... wouldn't work if they all h=
ad to
> share a single, common DEVICE_NAME/_DTS/_PACKAGE.
>=20
> As for the MBLs, if I got this all correctly, that DEVICE_TYPE could be s=
imply
> moved to the apm821xx/sata target.mk
> ---
> --- a/target/linux/apm821xx/image/Makefile
> +++ b/target/linux/apm821xx/image/Makefile
> @@ -251,7 +251,6 @@ define Device/wd_mybooklive
>    DEVICE_VENDOR :=3D Western Digital
>    DEVICE_MODEL :=3D My Book Live Series (Single + Duo)
>    DEVICE_PACKAGES :=3D kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-
> usb-storage kmod-fs-vfat wpad-basic
> -  DEVICE_TYPE :=3D nas
>    DEVICE_DTS :=3D wd-mybooklive
>    SUPPORTED_DEVICES +=3D mbl wd,mybooklive-duo
>    BLOCKSIZE :=3D 1k
> --- a/target/linux/apm821xx/sata/target.mk
> +++ b/target/linux/apm821xx/sata/target.mk
> @@ -1,5 +1,6 @@
>  BOARDNAME :=3D Devices which boot from SATA (NAS)  FEATURES +=3D ext4
> usb ramdisk squashfs rootfs-part boot-part
> +DEVICE_TYPE :=3D nas
>  DEFAULT_PACKAGES +=3D badblocks block-mount e2fsprogs kmod-hwmon-
> drivetemp \
>  		    kmod-dm kmod-md-mod partx-utils mkf2fs f2fsck
>=20
> ---
> And it would work as expected, right?
>=20
> Cheers,
> Christian
>=20

Yes, in this case this would work as expected after change. Of course, this=
 assumes that future additions to the subtarget would be "NAS-devices" as w=
ell.

> True, question is then, should this really be called "DEVICE"_TYPE?

That's exactly the question we are discussing in 3/3 of this series which w=
ent to the openwrt-devel, I only Cc-ed you for the 1/3.

I personally tend towards dropping DEVICE_TYPE entirely and separate the se=
lection of different subsets for DEFAULT_PACKAGES from providing a config o=
ption for packages like busybox.

I will convert my patch so your solution proposed here will be included.

Best

Adrian

--=-=Gd36vGMLM/2MGX=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7RcUQACgkQoNyKO7qx
AnAQEQ/+Ifqu4p0vw7HNP93JC74u7kWB4lFDDsvZ82INbHF+w9O/SB6zmXbGHIvx
wskH0z6MnYEd3eV4IJNQTweFzGowsb+A9RctBOwBWN1RsJwFVG796e8cIjHtys6Q
bZAWmNQMKfEQieTs/CfjMxPDCq4ZwoCG+oIJUKDhVJkHROEnZDpkzRrvrPkoTWaq
/5YdNBc2ALMM/lQu7tlx9SeyvK0DzTAOeYLjAopxI/4B7v6aHR/Pvoz3ca4XCyi0
Zl+RIzc7pX3GL7ARWbnEcHEScSFjGNwrYwRUWEo/pJ82yv+VpiJQtkehycnAaAtr
nkJLx5ottrq34PRdPcomvCz3ev0Q0Fh1JSOyGuGq2YykREHwljrZ+fR3y+oVRnVs
L2wM4U5pRvBl4LTH+5AlooGeOjlP4gg7SSAhbSReYQGJX7IV4BHMxj6cn7OzIK9p
K9n9V0c+HMP68MQFhx3F08oTuVE+8iv5yBT44ApmH83/OneyxtQkaQ8DOmBZGvnd
xabUwP4SSQXoYHrTL8oDxZzaxbRCondT7R26+xqnAM7pU3A59E8wHxGFXpFiOdbf
Fk4T/pUGr6JTusKm2Bl3nK+hpHnDZf8aApRXVLkcf+VabAQ7Dyy9WmZAB/pGoYLX
w+V/ayeLHhVHdgHylv1T8h9DAdzSAJIxKPgQlfDdkhwMVSAQg8A=
=FD/a
-----END PGP SIGNATURE-----


--=-=Gd36vGMLM/2MGX=-=--



--===============4033633401491666336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4033633401491666336==--


