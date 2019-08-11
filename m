Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390C891F8
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 16:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GvR0ghg41tuHbC6NYRvzwhyZ2uaOl8P5g0MjydqKbts=; b=pbRHAov8z226ArRj9uhCED13D
	bNV5TRC0WdsxPgLPPuA0zPSGvbOYeGHiT/EIQ+jHJUu5UV3TXUNT+RHbw2T8mVg3lQky0nPWptt+s
	fChWbOwlqSa8pSvcJfGzH5SpUn/+ul9PZUncVqGiy+J+VdAqbXhqG0izpAPaJPJA5HiZoC9sucUy6
	U0XEciI8bGMYC6GboOqXdRCjhUDFAxKuR+9SMjh6ozFTMr+Bz/IC3ccJT145eZhPJSLYQe4ipQBtm
	UOSlkZeFWXJywzRgGZVltQciTiPwGDGjnZXAjJK0j5kORO4AcmQZMyUKDyp4cK7lfbYcBP++P4SbW
	F2YGMM3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwoWc-0003Fj-1G; Sun, 11 Aug 2019 14:08:46 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwoWS-0003FI-2b
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 14:08:38 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id a937af4d;
 Sun, 11 Aug 2019 13:59:16 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 13e221ea;
 Sun, 11 Aug 2019 13:59:16 +0000 (UTC)
Date: Sun, 11 Aug 2019 16:01:48 +0200
From: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
To: Joan Moreau via openwrt-devel <openwrt-devel@lists.openwrt.org>
Message-ID: <20190811160148.6d3b5a17@primarylaptop.localdomain>
In-Reply-To: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
References: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_070836_434018_A4821A6A 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
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
Cc: Joan Moreau <jom@grosjo.net>
Content-Type: multipart/mixed; boundary="===============5328180217194058402=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5328180217194058402==
Content-Type: multipart/signed; boundary="Sig_/RUhK5zFI9PYnNQtJm7PJs2f";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/RUhK5zFI9PYnNQtJm7PJs2f
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi,

I've a device with PowerLine. It's the devolo dLAN pro 500 wireless
plus.

It has an ath9k compatible WiFi (2.4GHz + 5GHz), and a free
software bootloader, which is an old vendor fork of u-boot.

The PowerLine part doesn't work out of the box and require a nonfree,
non-redistributable firmware to work, however there is some
documentation on it on the wiki[1].

A really good way to fix that, and integrate everything would be to
have people working on free software replacements for such nonfree
firmwares, however I've no idea if anyone has started working on that
yet.

There is also a tag called 'plc' (Power line communication[3]) on the
wiki for device with PowerLine.=20

References:
-----------
[1]https://openwrt.org/toh/devolo/devolo_dlan_pro_wireless_500_plus
[2]https://openwrt.org/tag/plc?do=3Dshowtag&tag=3Dplc
[3]Note that the PLC acronym is also commonly used for "Programmable
   logic controller" which has nothing to do at all with PowerLine.

Denis.

--Sig_/RUhK5zFI9PYnNQtJm7PJs2f
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEeC+d2+Nrp/PU3kkGX138wUF34mMFAl1QH8wACgkQX138wUF3
4mMl2A//a/Or9WgxjZKP6TkEAx1kn+PwRkJTk2/+cbxXT7ves3A9dlxsc9ju3K4i
lpmL/CclIJStxDkR/xsj7vUXsgqAuvmjkpZS1JTb2HJukOjtyteNypiw+G2aPZDQ
yrcY44bzx5vCbmagkU3PaUu8kDz2WETdw+fECVMsh53X1pRIwp7/qFHszczBm93d
JZe3586dI/6QcPUpIx2OqphCOUA0l4nW7IRGTDfg9ujcct623Icw1L3fQLgi6sRT
8wotLQubOBdptM0/CioorV0WnJx+M0xlONCxT2CBjpxIK49DRH+/+gDxmEvUmgUf
Nh2bGN2YVjEqfVvUHkP6Qtse5taS0FcapqBUkhctPcRnTgPVDg00C+3/WgBi+3VD
HTBbDmWeZpblFk5NF5w/UeNkuE6zWOE6kBDqAjxD5FvFxm+UEj4GevNRDY0CDA3n
dwCXPHfcPQ6YHQYVSM990tQYToXeph2iV7AQgqIfwlQFutB+H7svdk9jNrCUXE4m
TLU4oQsnUake7RYq7fkHGY+X3Sah5l5tN66/IN0a96k0lU6AlyMdE/8Ynmofhpaa
Awi9Sc9e9zZ1GGRdcQ7DubIrO/kecUfJT/4gslhDJpbKYWxJLFPXespnZr0ne2oT
7FKAPh9q7eT9r6AlsHl744y1+MKvcvMxBtmVmvcAkhWj9N8hsGA=
=qFRy
-----END PGP SIGNATURE-----

--Sig_/RUhK5zFI9PYnNQtJm7PJs2f--


--===============5328180217194058402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5328180217194058402==--

