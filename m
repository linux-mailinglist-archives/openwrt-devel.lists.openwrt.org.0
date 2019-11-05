Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EDCF09BC
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 23:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qoeqgpo80Rf4rR2rLvA95r9IR96oo7P8CebgunQZa4E=; b=tNP1oC3uKdYRRzS4SxZmhOp2f
	o2y4D4r1LjfuFm03mvVs/HFI79tz6fBRsNAS2nW9nBdN6EDsu4lbH+3UdSLFDBmIMlAAWDg6ul7Tk
	lDdXk9sEVqNLelxDyuwFfqdWOwCBE6dLwmDE1/2w/IOeh+Z8H212DCF7jgH/BQHJk29/sgzAmbYT0
	Vs3idwK0B/d0XeoGJ0ko71isPn7G8lzKYP9aaCjBjRSjD/l5iWdOjaM4w0d96KS5AzKdUZX87QiVy
	SXQLhW4ULr3kPD3wvlomYLsiHjcKFcrya5+monhOvfb1YtJSqZyRYsKgKSRL3ux16Q+9ij0SrzVjJ
	jPbWtnDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7Ze-0005cO-D4; Tue, 05 Nov 2019 22:45:18 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7ZW-00050u-Ft
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 22:45:12 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M7am5-1iZWUT11jx-0081od; Tue, 05 Nov 2019 23:45:08 +0100
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <012e01d593e2$1ced66b0$56c83410$@adrianschmutzler.de>
 <25f488ab-9cc5-8393-8273-542b431a8368@david-bauer.net>
 <7389DC3B-0AFF-41EC-AD75-04370E606E7E@adrianschmutzler.de>
 <e66c76ac-b2c7-076d-9231-3a71e66500d5@david-bauer.net>
 <27e2d868-9dee-6112-142e-b1739c32cd33@david-bauer.net>
In-Reply-To: <27e2d868-9dee-6112-142e-b1739c32cd33@david-bauer.net>
Date: Tue, 5 Nov 2019 23:45:07 +0100
Message-ID: <011c01d5942a$ac9c0120$05d40360$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQITeIS4haWPB2gGUedJ+rG5YpM5ggHuU2i1AkNYNxYBw/n2pAJ+0QDipr2+yZA=
X-Provags-ID: V03:K1:l0lGLTpphLdXFROrRanpGKjJybBTpoKuOBsDA4Vr0vg/3bfFOZN
 k5ch/E19QfYLIpPT6e786yMzkVG8SH8g4gR7YLjqfEpYlYDyh8G38o606evqnn4miCYu0VS
 LfyaWpCgqJ50RAF5JlQrP+b3QUIVZDKD4Xib0uv5jFasTMBhGLuVlzCBX1iZ7wXNcKPgp4q
 Z+zCXNMPJdBIAYst5oXuQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4f28noLhuB8=:2FI9k6p9au+svrjLm2Oz5Q
 fT/UvLOo5CJUc7KZeBFkG+7m9RKxMmHuEOQ/P2irhD0CKZZUb5S8us+EJZoi5QUUZc/ytBOnv
 hYLvOIqKN6pdWnyNptkddpclWoSc7RLcziDRLQTi2et7VM8q7L4b2xuyJltE82vYk1RRoRVDe
 9EYsOUvarr2EX2oeccaW/tz74BwG/0ZYbHRQlrA2RbUNn5/WyyYFudTislfDGJjItNnwJhNOV
 5b6GemyqsrPhUwbxemH+PbylnxqDlGwXc0hJBINHL2hybLFTDZfj+sErLR3kHdSorT25ekVY3
 qpBYzPkv8otxs8MLQDPSRRdzXjGqCogpCG5oqc0NMQ6aQXjmHEMkrwGqaLPypx4ULMz8tTgCT
 tlnHkBWi8QQX2BGi06d1s9Vyfvg7fhLZlO9Rz2T3Z0MKwD4w5zNJXzN2olxn9Qk2PE3RCkGys
 Yd80kAjSw+qXcneAp+4BLFoId7fu27lZLl5/isqvD78eVPRKppeWdGswLmUOzdI8Ya/b7oLeZ
 eeq5ZfhcxZaRY9WFlvOpiyZ/QG1xprWQ6FCxj15o8jgEHb9JdyE3eXOnqdspNt5AEKU+mbI24
 F6H+1ikrXI7kF8WgckLXT320u9MVlTR8wKKSUhBvuemjWMCCDQsgYA9TAMouNp8mBwd4dVGsa
 lOccnEJdL5A7hm3idv7HQdaEqiuQHE61t248cNKD4CnFtyo7dUNG17VWQOKSq1KY+h7BN9QX9
 JRfi4YJ6zcoFIX/Uo25vLFwvu69MRuPOi6xAtQHforQo1QxfzI3FWHzB0KkdysfiHBPHvgG0+
 QVUmDwL2Tu0H5Dw9OmppiOQBHM1EgOe3JD+7C2LBWWYBXJzdQFE+wSNdmxGAwWCXcYOWqUJvU
 GfGEMHCQfICjXnaOEnWGpQDbXF/HqkSEgGcWn3AOs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_144510_835814_925A0236 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
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
Content-Type: multipart/mixed; boundary="===============4126290204868036410=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4126290204868036410==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=wc+ZxfiliMb0Hl=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=wc+ZxfiliMb0Hl=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

your patch is resolving the situation at the CPE210V2.

I successfully performed an internet speed test while connected to the CPE =
by WiFi (and the CPE connected to the internet by eth0).

(I also successfully tested on 1043ND v4 (qca9563) to stupidly check whethe=
r there is impact on other SOCs. Unfortunately, the TL-WR841N won't build a=
nymore, because that would enable a test with previously working QCA9533 ..=
.).

Despite, you have a typo in the in-patch description:
++		 * Some vencors have an invalid bootstrap option

vencors -> vendors

Thanks for helping us out with this one.

Best

Adrian

> -----Original Message-----
> From: David Bauer [mailto:mail@david-bauer.net]
> Sent: Dienstag, 5. November 2019 22:51
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Broken WiFi on QCA9533 rev. 2
>=20
> Hello Adrian,
>=20
> I've prepared the attached patch, can you check if the situation improved
> with it?
>=20
> Best wishes
> David
>=20
> On 11/5/19 5:20 PM, David Bauer wrote:
> > Hello Adrian,
> >
> > On 11/5/19 5:14 PM, Adrian Schmutzler wrote:
> >> Hi David,
> >>
> >> thanks for your response.
> >>
> >> To me it looks like qca953x already uses 25 MHz clock, or am I looking=
 at
> the wrong value:
> >
> > Yes, however ath9k does not use this value but tries to determine the
> > reference clock based on the bootstrap bit (see first link in my
> > previous E-Mail), so the value from the device tree is never used for a=
th9k.
> >
> > Best wishes
> > David
> >
> >>
> >>
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts
> >> /qca953x.dtsi#L27
> >>
> >> Best
> >>
> >> Adrian
> >>
> >>
> >> On 5 November 2019 16:46:59 CET, David Bauer <mail@david-bauer.net>
> wrote:
> >>
> >>     Hello Adrian,
> >>
> >>     during the CPE210v2 bringup it was discovered that the CPE210 has =
the
> wrong bootstrap option set
> >>     for it's 25 MHz reference clock. Because of this, the device was o=
riginally
> not even booting with ar71xx.
> >>
> >>     On ath79, the reference clock is not detected based on the bootstr=
ap
> option, but set by the DTS.
> >>     The twist however is the ath9k driver, whose OF patch still reads
> >> this register. [0]
> >>
> >>     On ar71xx, the platform data was always set to true for the
> >> QCA9533 [1]
> >>
> >>     So you can try to force the settings for 25MHz reference clock for=
 all
> QCA953x regardless of the bootstrap
> >>     settings to keep the behavior in line with ar71xx.
> >>
> >>     I have no device to verify this, however it's a good candidate
> >> for the root cause. ;)
> >>
> >>     [0]
> https://github.com/openwrt/openwrt/blob/master/package/kernel/mac802
> 11/patches/ath/552-ahb_of.patch#L237
> >>     [1]
> >>
> https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/pa
> >> tches-4.14/620-MIPS-ath79-add-support-for-QCA953x-SoC.patch#L260
> >>
> >>     Best wishes
> >>     David
> >>
> >>     On 11/5/19 3:05 PM, Adrian Schmutzler wrote:
> >>
> >>         Hi,
> >>
> >>         for quite some time already we are struggling with broken WiFi=
 on
> some TP-Link CPE devices having QCA9533 rev. 2 (QCA9533-BL3A SOC) in
> common.
> >>
> >>         I'd be happy on some help here, since I've exhausted my debugg=
ing
> capabilities.
> >>
> >>
> >>         1. Symptoms: WiFi looks up on the device, some TX traffic is s=
hown in
> ifconfig, RX is zero. The AP cannot be found by clients. "iw dev wlan0 sc=
an"
> returns nothing.
> >>
> >>         2. Affected devices: TP-Link CPE210 v2/v3, CPE220 v3 (all
> >> QCA9533 rev. 2?); no other QCA9533 devices known to be affected
> >> (specific to CPE or to QCA9533 rev. 2?)
> >>
> >>         3. For a certain model, there are devices which are working co=
rrectly
> and others which don't. There is no known indicator to find out whether a
> device works or not. The state of a device does not change as far as we k=
now
> (always working or never working).
> >>
> >>         4. So far, only 2.4 GHZ-only devices were affected
> >>
> >>         5. There is no diagnostic output that indicates a WiFi
> >> problem. dmesg/logread look normal, there is no difference when
> >> compared between working and not-working devices (despite RX=3D0/scan
> >> as stated above)
> >>
> >>         6. The problem seems to be present from the beginning (device
> support patches), it just has been overlooked since it's not occurring on
> every device.
> >>
> >>         7. The ar71xx firmware for all devices works flawlessly, so it=
 is an
> ath79-specific problem.
> >>
> >>
> >>         Other findings that might be connected or not:
> >>
> >>         a. On ath79 phy0 uses irq=3D11/irq=3D12 and on ar71xx irq=3D47=
. eth0 uses
> irq=3D4 on both targets.
> >>
> >>         b. The following gpio is only found on ar71xx: gpio-495 (
> >> |ath9k-phy0 ) in lo
> >>
> >>
> >>         I currently own a CPE210v2 with the bug and can test suggestio=
ns (if
> I'm capable of implementing them).
> >>         There is a device support PR for the CPE220 v3 suffering from
> >> the same problem: https://github.com/openwrt/openwrt/pull/2514
> >>
> >>         Despite, further reading may be found in forum discussion and =
bug
> report:
> >>         https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2333
> >>         https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2478
> >>
> >> https://forum.openwrt.org/t/ath79-tp-link-cpe210-v2-0-wifi-not-workin
> >> g/40666
> >>
> >>         Initial support for CPE210 v2/v3 was done by me and
> >> bluelineXY, both already involved in the discussion. ;-)
> >>
> >>         Thanks for any hints!
> >>
> >>         Adrian
> >>         --------------------------------------------------------------=
-----------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -------------------------------------------------------------------------=
---------------------
> -----------------------------------------------------------
> >>         openwrt-devel mailing list
> >>         openwrt-devel@lists.openwrt.org
> >>         https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >>
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >

--=-=wc+ZxfiliMb0Hl=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3B+3AACgkQoNyKO7qx
AnBS6w/+I0du/WJHXH7FwFn3BrnhAUej2YcxLHiLZdR25lbnmkUb3FfN1sNqqHbQ
Oxhim4/RwvMUc211fRJZhd1E9KJndmqEVg9P23HRS5MotPUU74grzP3Jgg1+FHJo
JHd97d0DUPvKHryO0MTeVZQvXge6LFwVLC8qVQpgCIHlP+OL/7vXYxA0gbGAXN21
GUo50zEvTee9OvJOw7/WKLAqNfYxXeezvtetNXWSjoWz0qNwdc6sF3hv+LqicAMQ
C2C/TKcjkN8LxWJWGXyhEEedEOBde4Er2cYKbr3dmiRT2oEhrp+MnHiM/rk4JiPv
+o8LDTZF3M3FwCQUsKzMDUTFId14USoTtuda+Wa8Q3xCy48KodUmE9wJ+V6oRUnR
58LPAdOs3pM3tE7Zve76oZ5bxnevOXHYVVUZde4kyRyQYzfc2aB+9KdD0VtCCG/6
N9Y0nfGUAwcmaXXNwzc0P/0mOqVlXRF1szVOelq/6FEuHSGFwm+6n9asXGemeGp0
qXP8TLefHuZhRTTYoGKUjo1Quqo4UzVpGpot7HpyKfHFNnyUpuBmMrGO9FY8/Qpy
NGlPW5znxrLPE8lLCkv9BCPAodocHtCew5QH07M4YtyFQGIt7Xg90knmUn2PICv1
E0uXtAVTvJ0kCQ3nfFfi9pRWYGs0Hb4YjXMVg9RxU8OVdHsVz8g=
=CyrN
-----END PGP SIGNATURE-----


--=-=wc+ZxfiliMb0Hl=-=--



--===============4126290204868036410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4126290204868036410==--


