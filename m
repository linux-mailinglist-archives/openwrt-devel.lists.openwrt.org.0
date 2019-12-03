Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BECC710F3CA
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 01:05:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Cp9zuSZjpOYNPVdYchMfbl92lAwSRr3bdPSYURMJxw=; b=TrqKTtJT/q6mWY9sz8BnC2QDe
	kRdpNTXh7U02U8I7D8vlQJK8JRdlWHSFDM2jFri3JaFTrhHno+ZoZIS3A1Qvtwq5+DQRrZuXaZDIO
	rGBeAFJaK5FE2ycxxZ6MAFqRYUSWnrgCHLiVpJFzQFFJ7oyPSpkJm/34vh6JiiL8J4LJ/mR4gJcvJ
	LNR1xoHX6saxIeOzQDlmA7xz083BrI7CBFLSVn/AbVcwlpaWANuAnwmiZDDVldlQt+VyJxewyPz1H
	K68/WHVHGz/EnfIFmL1+tIFAPh2s9RXqdFH9bW/tiOazolQIlSTbWmi+20Fj5cYpybob4Y0mq+Og6
	b55tiibKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvhI-000895-Jf; Tue, 03 Dec 2019 00:05:44 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvhC-00088Z-54
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 00:05:39 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MQ5f4-1iOof11ytM-00M0W1; Tue, 03 Dec 2019 01:05:27 +0100
From: <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>, <openwrt-devel@lists.openwrt.org>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
In-Reply-To: <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
Date: Tue, 3 Dec 2019 01:05:26 +0100
Message-ID: <000801d5a96d$5e3d4220$1ab7c660$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkCwKX8CklAfcicwCoB6ickA==
X-Provags-ID: V03:K1:QOe+BcdKyf0DhEzqS1b2uyaiUeqxp9M2dtRc0kboVnz4hmpj2LD
 xn9O6w+MKPxx/KJvQ8UItK8K3USuvI/epbajC39yFeFivETFonIHTUNL6nxbwoEOqONWrUo
 EvTNlWlreP3Fgrs6a5bovU/GssapA7ntGZV2nZEY/LD1F8zLPoH3tjzoqq9ZgGKCy+4PF73
 H9/o9UOIcyMcxC+bekH9w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sd5FIQJ1Ugk=:zhSNzdKe5qq2q3yDaUe4uh
 Ps1gLL5ELAFddatZ2GqcfXB/Y9cVZ5fDXvb0UV9rzjt+I6r+/uSKsHebF7r4nn8Y4eI6Naohc
 jFyiMdF2XzvIpPsxN6u2keKSz6cIg9UVyo6riBUMoy4hkuzmvugwJCSa750TXcl/jCJxAY59p
 IGPgoS2x09aX/sSMgfz+G01874kZ7JqNba202l4ca08mERUYE2cOLd8Dr/hHQuc/U8oGUCY3I
 Egi7O6CWN8xXlfTEHUbbuFc1hvmTOOtToK31GBIldQkihBWOQHlGYflkozni4cFVH0p4gCLCu
 ThmFYFKbbMSzi3XxXdWSeLjsBjvS477adOVu9taIT4YkAl1SqjKI6Zlcp+ips/yKfhlqgXtJd
 LJWVew36Rz+Om98lJvBu+0/aZIauy3n2PNqrOsZcFaT9pw2GdbFxCm7ROqQVWku5bkQVVfV9c
 voNZeR1FUCBS8padTFCNZKGshdL8C92wBXUylWP+dzD5j234hRk4wNLWFZLJ/EiI5HajtAF5k
 IhL9Aqj2nuIAeVPx6of5fsgiwGCiLbBVH2XhiScAxK9iPZ8rGgr+V0sUuGAFMocYKoy9A4ujg
 5lLkBJQ8fl9LxfpM9Zzg3Qyrio5s6Er6O9YqdY2PoK9YoKW8/sp1uZ6jgjgrpbEZ4vawWPf9t
 FdV34LhS5aYWne7bnvt+bapnMM+oY4RQLPRst778Js79iIOMi1+9sSEyhF7wRbqmtsB2iZ6di
 UmOFCFa4AcaJjsoMz/4Nb5caXwqf7IONtxlTkiZ+32wNfPJT89guvkKcZ+cZ8QpWA16zl3S5B
 /ElsbTj7CxWOsfI/qS44/b6DWbJ/gN7t8p07+7FWUkolUyori6Pz/sZImPLAsHTlK9SHupwr/
 Wzc+DpfUHt7KWKudRQzQROwqJJxAbBzIJ+EBvYUFg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_160538_485541_16F89B5B 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: pozega.tomislav@gmail.com
Content-Type: multipart/mixed; boundary="===============3533143825564239196=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3533143825564239196==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=2e9JctPUyEAmQr=-="

This is a multipart message in MIME format.

--=-=2e9JctPUyEAmQr=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> -----Original Message-----
> From: Stijn Tintel [mailto:stijn@linux-ipv6.be]
> Sent: Dienstag, 3. Dezember 2019 00:58
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Cc: pozega.tomislav@gmail.com
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
> LiteBeam AC Gen2
> 
> On 3/12/2019 01:39, mail@adrianschmutzler.de wrote:
> > Hi Stijn,
> >
> > does the device have a MAC address label or imprint on the box?
> It does.

Which one is it? (eth0, 2.4 GHz, 5 GHz) 

--=-=2e9JctPUyEAmQr=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3lpsMACgkQoNyKO7qx
AnBcSA//UyRpnTFBMjhrdmnBb0Uz1v0+9nwi7rqx+R7mMprThl1BuPrJpKtbTW0C
8slpYkz51tC4ucSJeVy6vSi305lH9imvpFa5hlvhItvVmsKEqdlfSrkaAGD38ymb
TQ+ZIHkwpiNXLXSyNzV6UhIfr1juZBGGaF0LRBiwpwj2vmtGmRIi9sPaMcaC5Bdb
rKqu+SEnedUqV+rIrV5YTuTJZS6OGqIO5eljT+BSopYHMG5wYXbcZZAfq8pxJiGe
jyqe7Cb5wn2fxZsmzp58qLqBkOdeH8QH7nQ2Zl4kdyPXCLi7V8AB+GOozxlY8Fh/
oPEdgrhOhb5CIORsZEJwbv4fWuTONxmS7mtfjl7YjzTdj/THvUoTz2h1NEUjwDnu
ZWgrtoSqQs5Td7EfVA9l77d0Z7ljpehVkmGXGCIFlK2lUmib3iX5fOjmxlIGVvt2
rrxU+WNP+oKo3v/P1SnrMmybl8D/nGrHmH8eUCvSwy8pNCyJ8+UDvLn8omk+Fotl
WgHQHvz0VTN/G3OlXvW5KpTXy9yZt8QohCLqTeiPZ50L1Z128jB1Si4NPqqyTxpX
3cdcXJJuQ8lyqTHgYAEreTOixd7WkCrzg7ErVrSoHqL1jaABjXj6nJ3svvwSjV+G
01dJXYz1NvfK3oldF3xSHWh/S8Uy2XYF9y4p88lf6VfBUaHG7iM=
=d6fW
-----END PGP SIGNATURE-----


--=-=2e9JctPUyEAmQr=-=--



--===============3533143825564239196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3533143825564239196==--


