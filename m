Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B403783212
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 15:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5uK7n6CX10qJH+MM+migfjtP+PO2IRm33FPNrd9niII=; b=tRgvRriA6gTJ4evCLIJt6MmLD
	0qGPgcXd5IUxX1EWhJ5xo96XiVcOvOvcP2Aw90YX4LOs6epS1CKO/He/HxvOnTpNzXRHMQCAR/y7I
	t8aFKcm6d3XdfRxkNP3D/rpiw/9WNZYU1EyBG3+yIqYpEfOjI/2+1z1wwA2x+p0qUI1yfpeTBAvJE
	F0fCqRRKDdXzRMBLv9x5UyQMN+tVF5XZ5q1BlvBvwXh6lC15dSg2DpnSZrhOl+u/J+ob/RrdMKu3t
	rPe+7BB4DnPlxercpKHESmsh3oDg/EwwQbo1B7NrB7z+J+KwffxsI4OTfngzpfOvZmPSvSz5MKxBF
	NJ/g98lpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huz7d-0006zu-Mg; Tue, 06 Aug 2019 13:03:25 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huz7U-0006zY-Dd
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 13:03:17 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MnpwC-1ifo4T3wSY-00pLcU; Tue, 06
 Aug 2019 15:03:11 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806125153.07c9b005@kosmio.komorska>
 <20190806130106.0d15cc51@kosmio.komorska>
In-Reply-To: <20190806130106.0d15cc51@kosmio.komorska>
Date: Tue, 6 Aug 2019 15:03:11 +0200
Message-ID: <00d801d54c57$4d459850$e7d0c8f0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIIyehAo7HOapkFG2+G66lzS5X+1QEUEKznpn558RA=
X-Provags-ID: V03:K1:Gzg1pfsisHOCyqdtnpY2k7etMPy4ON8e7DrMu0fCGflhGn0Fr2l
 TUpk1aHUGzPKtKM0oriGIX1/MSP+XzoDLCOT+15RUMyD/ymfj5RGa7Emjor79DYAH/f/EA/
 Fy5pzIzD6PhgndlNVpY3d/VQCdhTMRLolqJEbV72+QJ5bjkXXP3LfrZCK7jxFfmWtx14uz7
 6+2XCsiAZHKZO5bWTr5ng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EASRX5TYDN0=:f4vu8GWvPPjjF8Kq92DMbk
 L21NB63QRMVq+9Nwtv0Ir9I2/zAJqCfnOVGipOeFfTMXswUA2XBhi60QyINntL4697Dpsq+Qh
 wN+OaPQW5zTS41kJyKeVpp62nUJSFrPFvP5cgY+geRxQ7OzzPwsmU3fBlqzU6inCkVQjiLKwq
 piEyTw7iM8kxoyDSoHMePx9rRVj92hPsVJnA9d1j5DjjDzkO43XtHL1ERDGEESEMdw8MrHa9y
 ER5BvrBfneMY1+CsR0GywAtoR3jligohXq8hmNqIedvLUd6lEq4/jR/nhh2B75kJczkrg1tL6
 hdi4eS8bQ7fgMfHc5FTH7kUpq2D9RPh4QyFz2ILU9JNvBIVomkMGiho436HuSJghKfEOoEHWf
 Gujcc00HVW9IlJOmGzieIAOO1cGmD9cw9FjmV3EO1HlrCctrBO8h3+ogh1AV6TkwgrEHkB5lz
 o5U7o2Ih3MKDANUKNze1lRE6QQ0oSKAgHU9xy2a7lWPnehSIZr9IFOXTVYMOpJGDbAWQiFRsU
 SO5IYv7qkgaDpEKw8r5+yEFJf9hqPCuEEMbUyZ96WKZk1jQNHBGiw6am3xD37VcWJ9iHY3AF4
 YREHpt5bplaZ6o+R1ep/Z7YhkZST6YZT3IR2FOzBOQjK+IvzW6sew/QIMiw20NXzeh0hT6MsD
 XTDMy9j1Wht6c15yeDFex/9DzuMi9u+ppdm1RkpbbhMApCo4ejMg0mzYFCOs6SluCf85+Wz1n
 KCRilwq1Bwa5hIMBYIncY5OAdVdfJp2IfLVTsUzsKlpD78dOwr32JP1uLVg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_060316_752388_2A90AACA 
X-CRM114-Status: UNSURE (   7.82  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 6/7] ath79: WNR2200: use gpio_hog
 instead of gpio-export for USB power
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
Content-Type: multipart/mixed; boundary="===============1063352839292420618=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1063352839292420618==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=gQ71GM+H4zNQ+C=-="

This is a multipart message in MIME format.

--=-=gQ71GM+H4zNQ+C=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Michal Cieslakiewicz
> Sent: Dienstag, 6. August 2019 13:01
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 6/7] ath79: WNR2200: use gpio_hog instead
> of gpio-export for USB power
> 
> To follow new best practice for DTS files, this patch changes
> definition for GPIO pin 4 on Wifi chip (USB power control) from
> 'gpio-export' to 'gpio_hog'. Tested and confirmed to work.
> 
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>

Hi,

please already include that in your device support PRs.

gpio-export should not be used for new device support patches any more.

Best

Adrian

--=-=gQ71GM+H4zNQ+C=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1Jeo4ACgkQoNyKO7qx
AnDPyA/8CNMqqpydDtx25Bpa5qW3xo/SKxqOYW5y8bOUfQYlXVSAWzt1HsfCRkfe
C8hoPH8B1FAQlbx71ukiSeeyveKNCHtoXEEZGuOWAZ/eT1se/GJOnYFk8eGkpbgO
W43Ft2uOjnBoaPEcAn0Aei/Ce0Q6DJCcDUFariBo2IpIIhfrdbepRYFTLHfxt2q/
lj4Aj3KiSL31HLpnewnzEPcvTE27AoklYOZ86ImZXiumnDX4dP4uAyi6LACS98NX
UydrPHMsQ3O7tZbht2N6qKuVJWcLfD9wVaeD+mCDzQhJEcO+LATvqtGVgJ96Vnc7
E3sleXaAZXieXP5q9C19xhljdm7eu2f/0/SrHQjkvK0pBZ+QFaJZGxBcu6BOdz3s
M0Ijh4c51O8665rvICOM8Wqoymp5OwmWhbzR/Sgr8K+azibfP6fIAoCM/ozzMkT5
5FRvVREnisBO5BRvD5jcCwLqLWt0L1cM7HAKtzKizX9FUcF/fbYL+8vBBw4dP3mo
sTN+Vos9LaBxzJkGnkSWJ3llkuIzaLOp1KhIlyRU4bQcfs0wOVX3uPd5qTPJ0EuO
jOZw9bcFoj09lETHysQZ7s5+os6h3AhYdUAGpIgzMN9XOBWgIqDfIgtoUM4q/pNr
8GaIQzv+b4Uc5uALOz7XNZoC/+bCZQMY8RDzspLoDNJB6DAB5co=
=O6bI
-----END PGP SIGNATURE-----


--=-=gQ71GM+H4zNQ+C=-=--



--===============1063352839292420618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1063352839292420618==--


