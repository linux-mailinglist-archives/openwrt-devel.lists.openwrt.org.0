Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5827D12E808
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 16:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8GMYQgf0f6HutKSUfqN3gHgZMCO07Fl0PO3zvUtFXP8=; b=T/ZZOmmYMDLjnchmvYamLiQIZ
	V4G5rqMbv+SNSvqD9xpMbscO0YoCqrvTlzHCOVgPFPaUnuxvxEM0nAsmGBV73WxHx5121ZZtf1qdH
	zLKcaMPTysNJQ6miVC5p06Dtm7/WduL3prDCZ9Q6VKnkbtjFiQXbley0kLTcntVMQDROUNhlpoB7k
	JSRVmTpZmiC1aR8dBXNvnM5LhxsStyIDm5oRQcRWEXReME/rKDINPLjvrqKDY3SbGTfMQvqvnCanP
	7YIY+IPXLOZPJ0/87B9jaJdzhUBFwC6i8LVXZb7M3kmV405xU/iOQVs+IMvL61Er0VR4Q7HqJ+naO
	tHM/5DECQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2Lr-0004If-Va; Thu, 02 Jan 2020 15:25:31 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2Ll-0004IN-In
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 15:25:27 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mdevh-1jMe9L466L-00ZhP6; Thu, 02 Jan 2020 16:25:23 +0100
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20200102025452.59863-1-mail@david-bauer.net>
In-Reply-To: <20200102025452.59863-1-mail@david-bauer.net>
Date: Thu, 2 Jan 2020 16:25:22 +0100
Message-ID: <005a01d5c180$d9ba2f50$8d2e8df0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQH1AYmgDHdlQyaS8vnrz26R4C0iZKeY/gPw
X-Provags-ID: V03:K1:GWfv9ZxnSgY69xrT50PIoFFrtKel4WcsgmELpibMWQ7nFwTmbbs
 XAOVtCD6YcQEkUM7BgUIVgPANQ0TWFG/jY7OZFaxw+Uz5LuGnx3kYXUBoQxiJPPkU+JJXCP
 2D8bLLCIstYmpnptVhBBQWoIU78DFrVH2PmSEA0BQ25Ce5IdiD7m5RZZhDUMB11EjbIs6VM
 cyeWMyKQZbkLMcN4tbPOw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XEqS9qwfubc=:hOrNt9tGLr7XXgQ4bRNYv0
 CLAq2JMyS0B/rjzQUpxtm8yjalbIFesB4cIbK/PiUo5Z2v993Vu2oTXFFm53oJ0GNRmbAdZmH
 pE1UoQ6/Y1vuGRTa/fw1QAGQbNPbR87PKn06gMGKNd4KQ1bKM5f2tDoH916r86zKYLMXQKtEc
 IT/5rspfHCWzBBI7iCPBLqfV8hRabpAL4MKEXl7bCrp95BUJCMoNPjfufgi0kzusUV8LyFzUJ
 A7ssUNlb2Pv9+3/anqpuI6ch0K0aO1O4eQUfNoapIXRmXhnXFpXPpyObl4f+gdD93XGDnMEM5
 CVMAjROoteE68xthPiHScGU/NMXRjaBHIxFVQ+xTjk3ce91Wf7h0wvMbRn8oHMJA87v94hlsf
 Aby2oLpszXmY9UH0NAnrR7Ai+AWVG7ZhfKiVjqtUs45ituen9jpRRiC6U4bOgT/fKOqFrcN4E
 rMQLr+khzCvDeNL4EL2P28rF3trRSO5QCB8Pf9tSo9aTTV3/kHmU6JC0nDq+A55sjmVB0LvLY
 vyKH4eXpCHe/+V5fY6IKTItkMnxeXlS7iInPEq2I9PzwzgBOX1WVnRCF57gaYpSqspvIxzapz
 6kya1AjUBXqxIIm3/H+xP7R5GO6Wa7Bou5Q44k0IG2TkEEfc0Uuw1TLJg60owIdOStqryw7fC
 P7s1mBXyYeflKNs4673f3SwkXDuK0+GapsY1k1DKBmUxaBzEWTl7+QWLmkS1kkPuVY4z4MA3P
 1D8JgbKIm+0fD+s5QXlo1I2vqqtADMiiY/6a66gc5tq7U5BqfbEQGeuteNAUcp+z5PYeDMVHa
 WeAIl/7ZaHBGtKRGx2vcVXJewItZE/xYjcVkMZiSbfrSHstL8GhbzLQn1NBTEUn7fmlHo/2OV
 MH8CbGVUgKuESsbp0jIZfG83SySRgETMgBbrz+UHg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_072525_912744_1220AE6F 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: convert TP-Link MT7620 boards
 to tpt trigger
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
Cc: achterin@gmail.com
Content-Type: multipart/mixed; boundary="===============3161076558317669282=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3161076558317669282==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=ezSNID7LmfDa9J=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=ezSNID7LmfDa9J=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of David Bauer
> Sent: Donnerstag, 2. Januar 2020 03:55
> To: openwrt-devel@lists.openwrt.org
> Cc: achterin@gmail.com
> Subject: [OpenWrt-Devel] [PATCH] ramips: convert TP-Link MT7620 boards
> to tpt trigger
>=20
> This converts all MediaTek MT7620 boards from TP-Link to use the now
> supported WiFi throughput LED trigger. This way, the LED state now covers=
 all
> VAPs regardless of their name.

while I appreciate your patch, the choice of phy0tpt vs. phy1tpt looks stra=
nge to me for several devices. E.g. for C20i you are converting a phy0radio=
 to a phy1tpt. Is this a mistake or a misunderstanding from my side?

Best

Adrian=20

--=-=ezSNID7LmfDa9J=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4OC14ACgkQoNyKO7qx
AnAVfQ/9FzcHkisQ2dDZnRO019lH7u9bs+aGqUt7w4P80xLgi5YeJsxSpbxwCcqh
tqZ2Nd9L6FrB6hbAn3VE3Lg44mHoZLOlWbpIu9Z+YHGIilPGBmTd+8amvMe1BIK7
A0AQoSESYu+pNGhmW9etVUrg3ZybrQez+JcHbpJ/NzU0RJbyScUevYl/Rtj+nIvp
/lfZ7pfI3A0dKm9bS2nvX6n6qUnPqNEaeWYg4Os6mABbSXWPNsThNWJdWCjVDP+8
a698/haCOWUP2YFXspR+q+P/mAhXpvFZV6pYgCmBSh9uR5SEzh9P11qqbBO2Gj8h
0ytmx7Y++gkWCn+Q2XQB64PBhAipTUucT1Gf0L2P0OXQMkiueAF3sZUtUOOz3ozB
FE1VjGrxO8oFyAOXD3k92oQcg+fCuor/odY+TcbwWM9YMzM15nu8dB8y6mJZ5wkM
sMpBNUwJr3yxW/H1tSqm0Emao0ozaTehUXjMU+jydd/wNofdFPl5c4QEtFgHqKmN
i9UNu88cuhbrJgDguqQPCK2g06nRERWZUYIr5BuBQLC6AbM1MM2hKj7FAGHOXFyB
LHQkKraQ3rYcwD0LKzkafhGcMDZnMpZEmmia/Kf77GEpV+kQuSCQJOfPby/UBXL2
aflrPOSDREvBPeNQTYGPlC5SjQrehGyEc80P0rxtx1zRfn9Ja+A=
=+aVK
-----END PGP SIGNATURE-----


--=-=ezSNID7LmfDa9J=-=--



--===============3161076558317669282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3161076558317669282==--


