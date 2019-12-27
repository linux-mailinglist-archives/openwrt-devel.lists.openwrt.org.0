Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF1712BB11
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 21:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RYk66GN4HoizqRhqkshWOjW6efyMrezF14jDOZVvh0s=; b=kz1IJI8fP1nFuUJ3YCA3gXLx+
	DspJj41mzxVpTgy+TTiMJvfzz887Iv3SYn6YBg2AAAS7vEIO0H4AcHVvhlgG3LPE8BMb/BvLyKtmO
	HybmMl/53C77yiUEYk5BVb0Q9l+JSJRJt3Ds3gtO77cKTbDY4AZaEQtlbGNi3MIaiOy1fZIO9EvGQ
	V88XM0SMylBZN5iM5fquJ1wXYxgimuDiPCfbIEEUo0bB7wm/84BBSgdUwmboRK8B6dmfW/R7ZS3Wx
	CwaIu+1HL5RVxvWDraYcFY3varPLyCmAuVhe1boYayUhvs4tJYVKLZKZ+w5y9r75LOFsBR8NJ3yJW
	uGaSbrW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikvsO-0004Jp-KZ; Fri, 27 Dec 2019 20:06:24 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikvqD-0001LY-5N
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 20:04:11 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mduym-1jIcQj1S0U-00b4aa; Fri, 27 Dec 2019 21:04:07 +0100
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
References: <20191216123110.22741-1-freifunk@adrianschmutzler.de>
 <b3565dbd-88aa-2346-3f7c-7db8183af98b@universe-factory.net>
In-Reply-To: <b3565dbd-88aa-2346-3f7c-7db8183af98b@universe-factory.net>
Date: Fri, 27 Dec 2019 21:04:06 +0100
Message-ID: <04f601d5bcf0$cbc02d80$63408880$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJb7OaunkCQNnyZqjrNtQtaEiRmuQHAM0W7prQFppA=
X-Provags-ID: V03:K1:dzz2eGHAPvzNzaQujziRBsI0MNpXSrBmBGbGckv/bY/oXXZ4mhv
 VXCfqfToATz25SOMpBPYxRizpXNZ3yUaSBpD2uGAoRE3d3XhAumZpp1YQIcOQrZ4i4bWqHy
 zUXJdOnnrxpzp3oeLOPWvooBQluvzoE1OUZkBI3iEO6+ttoWaWr/v0PubarquNM8a/5ZNwQ
 loI9XC80cE17oyhxtqebA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JxPoBWrkpxk=:Xp1ydnDbFl0IcNHPE10BQf
 Pk9wdcBgVwx1N1awPhDV+1RuMCCHWJ6SYvA5ELXYIwbf61gDzyOuecWHSC8g+6nduzyBkCsS+
 FfoWxAawvT7bXB6jEvUQHzgpklviDl52Mlu95hnYS8H+mHPROTiRF/28SekPmNwW4V8hcuO2d
 i+Dr7sktmPyF34O7dxja2rSImOG2Pq9UeOqwA5xAUtLdZEPhVWI3Y5VMxxRZhgsR0pvhnXGLB
 a4WYOa/kl3cqZZutTpKV6jJfaH7N2YWWID4BZo6bMItLHLmY7iEUjiz7YDnXYif0W0YnbXxq/
 k96DTrZb8vVcZ+KarxGT1tpB/N5UUUKrkghV+W2Un/BGreehUBFKaVMuSXsxMNsFJ9sFmI6g2
 F7NBx05mW7wRHs0kytDjwfUuXwwcOuBO/1FV2UUWegttLBo3PpV5QivTocD5d6lOLV0s/wdbu
 +PeB4a+N13BEdcwFj76sjuAsIYqnATiwToPxgjYG/T+vHLc60o8s7ui6IS3lN0x4zfD5oJQmV
 IwQ4qCuYSCm4wpVdd/ZRO0bmTV1to5xs0ARqHu9xWCQrSTc5cgk2m5tRfTNbIHedekPtuxay4
 rjHJAzLHFRcCJioNES4MKOAh/oKZeYL5sJVUgWF5Ul1wewQO4+k6jPmJIxg9GdXR81jg3rEkP
 L+Z4lOBAplOD+KOTRD3yafmhCgH33O1fWmvr4rBu8rba5D6jeyBRNQGHec8eJzvhTyUoyetxr
 eYO19/TB2L75JdOa/3TfaktugIy0S7/JIy1X3SfPlU9Rr6RDwWWE7Ic1SEZUjreMZwVYlJG1U
 l5AR9M57mY44btyOnq/hNE2T0VGj6lORhsJoMFdk8sdgt4Gux+SK6Kd7gEoMSshncja052evZ
 k34Qma/xVKS8sgY2bMfbY1dy4ojZuOo+NuKlVU2Nw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_120409_532086_068F919D 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix port setup for Ubiquiti
 EdgeRouter X (and SFP)
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
Content-Type: multipart/mixed; boundary="===============0445338132337738264=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0445338132337738264==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=m8ZXJi+gHdrCnt=-="

This is a multipart message in MIME format.

--=-=m8ZXJi+gHdrCnt=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Matthias Schiffer
> Sent: Montag, 16. Dezember 2019 21:25
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix port setup for Ubiquiti
> EdgeRouter X (and SFP)
>=20
> On 12/16/19 1:31 PM, Adrian Schmutzler wrote:
> > The EdgeRouter only has LAN ports labelled eth0 to eth4 (plus
> > unsupported eth5 for SFP version). Thus, there is no reason to set up
> > one of them as WAN.
> >
> > This patch sets all ports to "lan" and removes the unused wan_mac.
> >
> > Actually, stock firmware on the EdgeRouter X assigns a specific MAC
> > address to each port:
> >
> > eth0    *:f4 (label)
> > eth1    *:f5
> > eth2    *:f6
> > eth3    *:f7
> > eth4    *:f8
> > switch0 *:f9
> >
> > (No data for SFP version)
> >
> > Only the label MAC is stored on flash in factory 0x22.
> >
> > OpenWrt currently sets &ethernet to this address, so all ports will
> > use that one in OpenWrt.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20
> Having a WAN port by default is extremely useful (and necessary for easy
> automatic configuration by OpenWrt-based frameworks like Gluon without
> having to special-case many devices).
>=20
> I would prefer if we could always make one port WAN as long as we have at
> least two independently configurable ports, regardless of labeling - at l=
east
> that was my policy for creating new hardware support in the past.
>=20
> Regards,
> Matthias

I received feedback from two people about this, and both were against mergi=
ng this.

So I will not merge it and mark the patch as rejected.

Best

Adrian

--=-=m8ZXJi+gHdrCnt=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4GY7YACgkQoNyKO7qx
AnAaLhAAm6Z+hbpUvyO0b7gVH88sFvSzrghCHmdiNC2p2QYU2kQ3mbkx2LZCdHZv
6SuKTWOouVzP/JqVUqgWXM7545QUA4Kmx+F4SHG4NSD+bOOGnCmOqkoRxDt0FHNo
jSNg4ZO93TotSpxiC7TMQLWQKzWnlDhkSmIQN0E9VordiVyhzEEbIfvjO8311Z2V
/TZHeHfO2moCKI4yC4/4VbLc1Kfiw+TzIws8dwBdaa4Nmm+SP0kV3M5Hnm4O6evA
GbSiA2q+fwQTT9XFYd56EAUcQKS0zx/MjgoEyz5WdRUYptPCPZEgV6P7fm70Ocjs
RNCUf2YUjvITZD3OboGaDERNy1QAkXv81yXzPVzkePHd342hbqoXC5sB7iAifUhO
epXkbzGlm0/HaW410Ze/AKky8RkL8nNLcT0zsHWbE8eL7wlx1LRluziQGEvo1Pet
WivuWnCoOA+M8Hcy0l/M/PTvQ92umwIBLlj6XhSnc9lTGu6cUKd8MXaoF94rZ+qP
mTx4PA3Ef4d1ONpt1OXh7Bor95Oye8gfNUhl5rwqxxnMAGJRuD2yl3UogH63Lgif
e29oYovhOyfGOAyWdJLfx+IfMmuOCeM/pczsjICgPD14NzzJ3L3dBcIMX9IkolXA
brwVDHGvTnGHr8JpaR3JGxafde8W/hx3Wi3+wr3FeFAwNXM2lkc=
=X6Cy
-----END PGP SIGNATURE-----


--=-=m8ZXJi+gHdrCnt=-=--



--===============0445338132337738264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0445338132337738264==--


