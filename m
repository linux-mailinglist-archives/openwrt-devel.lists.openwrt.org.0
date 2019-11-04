Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179B1EE488
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 17:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nMK/+KEIJkjOHwQlPvjzJR2f9AdBqFAr8QJv9M7oEOM=; b=je5ILkXTDGh3aSKlx7ivvP/8x
	RMDnspDyRomaUwtyxZuMlnuRUQ1hzAqZDJNbbD0pb5aL3m3Ug2CZuIIAwYUW8/dJRjKRugbUJcrVz
	9JWhWxT4TDsbB+qQdASuG2A8lzyFdNz4iwR9a/FHoSvzHWaabp2B65ZLhd/WEMxO8TOLEjA28boBA
	urU7nKIPMvXK4tLwnjLpNaLaG5pAenbedMnfi1NelP+7B/cetC4n05FXorIOALk3KAdkgmgQ9FvQZ
	U40X7EGxNlrvaRNHA93XGRGkULMOCf8MN2wTunqYyO/aZxaVrC6AmaDNOcDMhYjtRNRzSMCwSqVdv
	KctWsKKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRf40-0006tG-Ci; Mon, 04 Nov 2019 16:18:44 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRf3o-0006sk-KI
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 16:18:34 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N17cq-1hmVTg0A7G-012aEp; Mon, 04
 Nov 2019 17:18:30 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191103113905.GL1190@home.paul.comp>
In-Reply-To: <20191103113905.GL1190@home.paul.comp>
Date: Mon, 4 Nov 2019 17:18:29 +0100
Message-ID: <025401d5932b$7efc2bf0$7cf483d0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAHY8tm4qE0GJcA=
MIME-Version: 1.0
X-Provags-ID: V03:K1:B7QO1F7zM5F2WqJXhV1XyvwmNDt435uAwRTxNUK1l+/JWcor12Z
 VK1Ue6ZeC3kPh7tZ7eJ/6j61WCmdUYPWppQX0pT/ifyPPikE+AcV8RxTce+4P7zMM4khJI2
 GCAoKQNkwF/TVxYmaarR6hUOeKj/YovZj1oGoJGS+4XVHmsCcN3VcHwB8dd0ii6xdvEl0b4
 sjAJ2l35FLcxdDbZhz99g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BSN+RTzWa8w=:KPWpGMILvIQeWAWMl+5OQC
 Fwouc5ReFHlJ7LUkqLuC9dzGL6r/fTn4dUUsoaoZAnskhwfTVpqrzVn1mz8ELyGUXXoYThlB7
 x3HSNelF1quKN+QwFRuEYrIFulSQ0jOZx+wDss0qUAbdfadEOcsHKm+WJKXYFr0O2EQGVJ3kD
 fzKFmggxU0OIP+8/cwYo08fSBIUFCkK+mrHLMxycrzn1ZbJQTI+z03XJTvYesMoMACDn7RprK
 gYTA/MfGtELVFId7VGhxRuHpXRDxv/zM2wvY85A96jI+ls9Pr5LJsz0AEPaUNP5CYq7llv42H
 opvQAZHh3C8D3yco/1LQ5yBtZ3H2TLr3ZN/zlPCm38yV1Do3B38C2BbXBJG9fA2g7s8rb2lPl
 mZHSF2Tfq3enGQCpTiyz6cBi02+ASpqNuhX7mhZZng9wmCLCcq90/GflAiQ+Mw0bzlBl9G7T4
 fFntvNfOZ/7gDCxYxWgpwXmRTg09HLN66kqjvR6OMsvi3G6hlxLcS4HPqp4wlDZNSRshWa50M
 QBb5Pl9K6fNxkw0zDWdzIdpiG9iTd+6Cq0inhygtmDn4BICqKaUkmIF8it9a8xzDyBIg+d2C2
 BV1K8+qpB1Xi9CykSrL1cU+W4GarVORz30GpBwhgfPJ7MuN0zNs3o5B/NNLOFOu9VcLcP+sLv
 v9wEAzbWDJeJFbZxw2EVOH9/jCFwwmtfqzKzp6RZNkrQ3abNIz27S4mg008EDhqQs/AUIWHpm
 VwErsz/vTNAQTC4L89PUoMRkF+xmJuSzhzas8ltXbFcW8zjn0nIbClMbXWg7it2jwlmbTqYz2
 MdGPeULu2+NvqHIHZ9IuFq14Uw7OiUUaJMhqA7KF9cMc6VjLy5IB8PfQeg2UbJHzC3GQQVzfj
 c6ULLum337guMgg2k/5h/8qb/FyhTTR1oOm37KeEc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_081832_962383_7FA5B016 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
Content-Type: multipart/mixed; boundary="===============9199238046033492430=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9199238046033492430==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=GMmJ+26YtVXSKX=-="

This is a multipart message in MIME format.

--=-=GMmJ+26YtVXSKX=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > +	dlink,dir-615-e4)
> > +		caldata_extract "art" 0x1000 0x1000
> > +		ath9k_patch_mac_crc $(mtd_get_mac_ascii "nvram" "lan_mac")
> 0x10c
>=20
> lan mac seems to be used for wlan as is (without +1/-1) by ar71xx
> code.

That's not uncommon, however you'll only know for sure if you check with ve=
ndor firmware.

Best

Adrian=20

--=-=GMmJ+26YtVXSKX=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3AT1UACgkQoNyKO7qx
AnDVAQ//Z51JcQMbODJV9G0WIvM9+zAaMDtgWBeBPAdaOqI0khyw1fVmBkmnFvJR
ihUu9FaLZK2ZO3JR112RKdUr/EBWZViOMhtEXivcs46bYkquy+sNKx3gaZXr28eh
QNjoYk9L4V+bVV3gcScSHoPhoMHPlXw4onPFbvsKQCcDdHYEvNJx+2airPca7mKB
Bu3E9RX2/cVpl56HNDJ9Nil+4CNrtDzv6j2qDk1Kpy0TtFNcpVAii+uqZDJ/lXDQ
/xaRteAk3h/hVFMytjlkwonOgPcACSR4EWViasnuzd+gupz/ThR5ivHyA5uYIakM
4AayomwFWsYUd8H1FhyjHM8D2hLtwyqs9ycW3tc65INs93RRYRqc+ok+47cyMHNV
SojKykdGcnxqp3hw0DD9gOv8S/3rG7Q6PwPRCIi4U/ZyUJBUTIHrqX8jVQeUQOHG
G586XB+aeEIGq84rjuMTSlSoBqrqyhkHWvCPh4SoDnJsBnuGM8A7Lm04PVefLYvU
372Sfq6M07hdYK0dbSB8TzdQeMiIkjeZzP/VmNZYlId/qBQISa8hLOxffY70+eEk
IndWx4h/abusM6baDk8YpFS3C2DHh0zHhpJuuv8Rs+C3LLPaF8Mp8PjRQBPAqPwD
l1DzisLUyHMyVix4HDdSMb3ipo60wgoP2lDPgv9q0pqSCsJLX+8=
=tjs2
-----END PGP SIGNATURE-----


--=-=GMmJ+26YtVXSKX=-=--



--===============9199238046033492430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9199238046033492430==--


