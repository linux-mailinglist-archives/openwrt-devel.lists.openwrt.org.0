Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3887C92D1
	for <lists+openwrt-devel@lfdr.de>; Wed,  2 Oct 2019 22:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3+4cjRmKoo6AUno+S7oZqtnH6rmyaMdc2uW5Jta0098=; b=gmFM1oIcIpa8MqbNbaoq0b8yB
	7lTYEtlnTl4rhZ1aNZOPhNlMuMh3BTvA3Cwl+hGKqTGnJ358+MGZzWfLArVfQ+3YGGN8qhMtxdXsD
	FeT1xkBZ9W3tf53vgHLaan40CgtPcvEzWeq51okwnESS0swXUj2BCL06mZSWE0E65jF+44VuB8LiR
	n7JFva1uMFPFe+3xBaZWwpvAIFRGLaGgRFqb7gAv5qZTv79Wns2PBKl6js+gIFLU+TuQf/px12xhs
	OOa3FWyqbed4ZY07rp553QZ326s5pJDjw2Pbqh4ysl/TywgJa8wlsStXk01rssyhaPCXHpzM+nPIt
	Xx2MdEArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFl7y-0003Qe-NJ; Wed, 02 Oct 2019 20:21:38 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFl7r-0003PX-DI
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 20:21:33 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M7sM0-1iBvMi19KU-00529F; Wed, 02 Oct 2019 22:21:18 +0200
From: <mail@adrianschmutzler.de>
To: "'Jeff Kletsky'" <lede@allycomm.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191002190618.28828-1-lede@allycomm.com>
In-Reply-To: <20191002190618.28828-1-lede@allycomm.com>
Date: Wed, 2 Oct 2019 22:21:17 +0200
Message-ID: <009d01d5795e$f2b2f9c0$d818ed40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKyzb2Vd7GWbTt/W8YY2y7hkRAn/qWNIjFA
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:1eEG1krsMApiGp78q0x3NJHbeSVpThDsaxNAmj1eu4FnlgfZDEf
 i3tSETYS+MgBL6G045QKf1fjuyyHBIDKmO4bTT3goz4OLreG3H5RX8GlVbRgqd9BSO0ATwN
 pAvGoxOHVW21EDzk9KHDZc2Qz8kcK6YDxYyDZJ5UI8RkMOACW+UPIc23l8nXY+bdHDX9InG
 6h7HA8sWT9XJywv2S6p5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5ZJTNrqA2hs=:G6tTqcAE+y30Baxt6DT3wm
 E/7wKGL560bpu1k4H45axcupZCcDvWaAlC4CLSao8/fZXiGgSkgzX87SEHTuuKrSOdWEIPJfW
 b8A3ZPO866tH90/2xBmHZh7aFV9Hf+kc9/S1h9HqEerqlQYKGHJDJF3ZSkV7GdOPNyIXfwLRt
 AonIkNMm8yXZZVHqPMtF/Mh0V46uADHTDGDZ79jYElhS1TlAW5itMRRfntzS5wtr2xm9tNsQt
 wzHg2RiaknFj14+6K7GoDEtVgiYuMc4Cd+9kLbMHIcyTcGzVTl3LCWsbZJKbXRvoit0IzbQPr
 kipKFWe66CL5smNZrkw0YJdDEtWiQWwxxjM1N1Bdlgx4AYQIdaS6+fkcVraokmOjhiCJnb2SI
 lPg4+XggXFQyg1Qpw8AJDfDmHuqr8FZ3BRSRvcS9RG6cxap9SR51SZHDse+Nij9kWLVVybxQa
 7U6G1YSvPWLhFUqF6a1ccUGraStu7PrGvkHCipm0cZG92T4GQ4KIXS/pkoTMe1ut+CcwbfrAY
 Vm/j26PFtBGgmGvVCvCDWbAJoochgS5FQ3IgiaRb40aZwBPWIa6HZwgkVdR8LfUNrqikkZF6h
 nEtygiFTc0oCl+TFs0FHkLb+90J01Ju/cF9fQ6ASKaliIEivWUh3oXndFm3wwo711uVVp7qLy
 AyA2M5p08u7DZ+Fpzt4KTxvLhXBoeNDRa/QbC+uDj0Xd/QJ/MWm3xxX+RW3+llOHU+vHO+4+M
 EtnG3OYqGN0eVXTiZwTyfRpIIdGRrWzdIIE0rOnYisPnayEqXequqSyQTDxRpwaxYBYCmCEAF
 JpZ8DNkCxNvgGcYmRtBHfmQexuN6/5A2AHDDrkqvub44IgnpLFTqE/kVxYqR/vHLVFqdF6ZKC
 3KtWpIt7d9knMHUSqsgJmoc7vEXNNshDlkr+cWF7k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_132131_749555_9BB5BECC 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Clean up GL-AR300M DTS/DTSI
 inclusions
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
Cc: 'Jeff Kletsky' <git-commits@allycomm.com>
Content-Type: multipart/mixed; boundary="===============2965070539628795485=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2965070539628795485==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=UL8W1F7TNJKcbu=-="

This is a multipart message in MIME format.

--=-=UL8W1F7TNJKcbu=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jeff Kletsky
> Sent: Mittwoch, 2. Oktober 2019 21:06
> To: openwrt-devel@lists.openwrt.org
> Cc: Jeff Kletsky <git-commits@allycomm.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: Clean up GL-AR300M DTS/DTSI
> inclusions
> 
> From: Jeff Kletsky <git-commits@allycomm.com>
> 

Reviewed-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

--=-=UL8W1F7TNJKcbu=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2VBrgACgkQoNyKO7qx
AnA8SRAAmshMXIZHB39+2MzYsQQiz9StIcg42SeiqFg+LkmYGQTKyKy5GIHw2laF
MxztJcXgbHldUWGX1RT/1K2+f40iQRj19D7XeGEu4OOPgJjSeJpkwzR+mJXg6VTn
La7PvNUAM6gQa+O7YJwFb4hloyxQQsgID3v2cNAGB/82SBrSavUXnGfuv6raPFXZ
+9H96XohDQ79f/boAjlHmA8guOJlqzGLxQRSekXY8WD8pQrdVm0PcdPG2OQmGo8f
KQiTKZSHo4pQZB9JUzdS1RDHrH9csJ/5AKJ8E28AYW6hv8xE0A1cUPsVmleBKjEw
tWp5TTGSvZDj+e6CDt2Lq5nQR9j4xydz3qfiwca6C2X+nJaEuPtScVlgAeY6eGkq
9TxZ4Sy0vGBmX2ZB3kNJCo8hpnR5KIQqIXNSWDM5FYqwWGBUDTfo/gAoiF2SFSG+
H8yTlrXuatL68BnvWI2R9iIx4AjhcT6IQ7EADcrHmvBcqAmSyUawmhqicL2lRjQo
LUgSkfXHAOWFcyjzQM1ciiHyvAMF8M9U8vLHNOC0NviMA291ItkfgTnpY1kF3ZLa
sqL42zuYplpNaeeNR6igZ8HNkpbJdZW/QAzKFdK42J8LAs3gNI82zzN834n41QHs
qB+D0GRplMRfJqJyUkru2OnaP3eBa7pXkNBp79ziUjWezCzafNE=
=Ftmr
-----END PGP SIGNATURE-----


--=-=UL8W1F7TNJKcbu=-=--



--===============2965070539628795485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2965070539628795485==--


