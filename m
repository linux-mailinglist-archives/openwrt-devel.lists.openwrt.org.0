Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27514E4EA8
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 16:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NnWr5DVwWvGC0zpROcLa1NZjQ8mM6vM59s6u/ACI404=; b=JW2QawteTUinQ3y8HnNu0BT48
	fV43tvJGrAywNJY6L2w3eZO8KBxlxAjWluuL4UaaRpQAyHvk2MWf4hSapWx4M3J52ngGGvi2e1vdE
	vwhzqaykt/Hrq/v0TUe0sKAPJQSZlCooVFQdn3lMZSmnwuDxhGP/WQQ2189zIcTDaPXbD18Ars1Ux
	Devg4NZQAR/onRY2JH7G3XwxaJtXMWsylbRDlvLasvRP3n0XIKzATdA6sfU+KGko86Nvr5/Cbgur3
	bV9vs89+pJH08eHqP2cv7VlWDXZCkX6B/XjA2fGuV01/fm8iS7ZcV5xhF/GTmyeZu4IRKJBJjYD/Y
	V2LQFU5lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0Ku-0002vr-J1; Fri, 25 Oct 2019 14:13:04 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0Kl-0002ue-Mp
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 14:12:57 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mgvan-1hnbG32u7R-00hMev; Fri, 25
 Oct 2019 16:12:50 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Karl Palsson'" <karlp@tweak.net.au>
References: <20191025113837.2844-1-freifunk@adrianschmutzler.de>
 <szBIY33fZMHHJq6eQzT3zIB3dxi6EWytKBYVRsYe2389@mailpile>
In-Reply-To: <szBIY33fZMHHJq6eQzT3zIB3dxi6EWytKBYVRsYe2389@mailpile>
Date: Fri, 25 Oct 2019 16:12:49 +0200
Message-ID: <00e101d58b3e$490d9dc0$db28d940$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFo3cLDKD1r+W3FhKq9ft13SGoYRAJGW6h4qDKNciA=
X-Provags-ID: V03:K1:jfpb42GN43yuPhMDtKPrgnK/ginXz4GJnjWqtdDeBrTAHc1yNPB
 hcZU24PrPAQILwxa41lbz+kHc3lSARM/w5AMv+mhwOE6sU8Crq7HsHa5EXlKZsxoXmgfA3p
 8NamSPYrWDyyBnJHavcun9fm1u3wpS1VDNt88+9YPOxNSnYHjIB+JZlTtQcRP5yf3IT2gkb
 IYVuoRVUt76Gu5QDRbH2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZGiQ2SEls0U=:bCfBW/LGC7iZ2GMxfW+g/s
 CP4uhQQnNMUYLy/q/3X64rz8koz/sQ+4tc+yy6AXa/4/cvwKzzuBwZSAjqlEQxaTP1DFPBldC
 Xy25F+aVNFnWXPiX6u7fZDnEyIlo4YaYZE7NnStAMwHSFvZ8i6z9Sha74+/e59ejqvRXbXbQA
 GzGZSemh/QacRGF4UMrf470rOTtC/nhueo/jSk0Q5nd46fi9CSsKgAtBAKXhTfOjzsaSpyITV
 S9TJ6SZI9RziKeDp5visDWh4oR68UBVH0R8Hb/dhJdDcIo2uG//dFuBR3itwv+wtJvIrGzBPQ
 htOiIn3IlwULUBnwLzA5AIFT/Se4qgJ9W+RLOJ+zlSMWcwdFrAMWPbz/z+vP9lu2fmBrnXEYz
 +Pzk/AzKzZJVWtLHa/3zayazo9oQ8QGNlrVf7NWhOKQO6jsCrDMP2nnB6o6546HVqRKM8aKyb
 3bhqHmoz7fjqjcu1SbYfTL25YPtCqxfrjtPHO0dR1pRav06sa69Tb8kRYI1I4Y7zU0/inOzab
 Vdmxuz2cApRYq/JerFG6Z4k8vXPUaq97yTW7jPg63uPWKcXbrgjUQIVXjEkQh0+j3GwpfUeq4
 uVxs0eod3SFiZ0YOLwYqeWIZqEPbnZBQnbeGhjEeTqJK8rLQrIOHz1QrkZ8RNlIMeKsAWzWsE
 bcjdRlcJjLDhgwiCHLIm67mbdqicDPCS8t5wD3qTCV82GVjOE4cartANdleaVD4o3QuHRj900
 7htsfFG7Rq3zSNHzkpKkHR2/29kHVL1xT5qnxnrk1C9SxaxAqKAqdAuBAsdbeqYxSnMHMfCGN
 bVVoQzGyf2jzlCYZhy7EkuX1sDMPpCkU+0RreQW4lxGX5eQy8sr6w0MiZGcD5H0TWiNA79N5A
 6NMc9ub8+FjjeAPo8uGzD2FyBVl0UybAhiMR7iAyY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_071256_035173_B631AAF4 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: remove redundant mtd-mac-address
 for wmac
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8928354041251620045=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8928354041251620045==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=/0HvCUuf+52mMn=-="

This is a multipart message in MIME format.

--=-=/0HvCUuf+52mMn=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:=20
> > For several devices, wmac MAC address is set from art 0x1002=20
> > explicitly by using mtd-mac-address although mtd-cal-data is=20
> > pulled from art 0x1000.=20
> >=20
> > With the MAC address in 0x1002, the driver should automatically=20
> > use it when reading caldata from 0x1000. Thus, remove the=20
> > redundant mtd-mac-address for those devices.=20
> >=20
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>=20
> Tested-by: Karl Palsson <karlp@etactia.com> (etactica-eg200 only)=20

Thanks for the Tested-by. Unfortunately, it was not picked up by Patchwork.=
 Either the Message-ID was lost or (most probably) the mail was not plain-t=
ext.
I'd have resent myself, but it looks like your e-mail domain is wrong, and =
I didn't want to correct that myself.

Best

Adrian

--=-=/0HvCUuf+52mMn=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2zAt8ACgkQoNyKO7qx
AnAR/hAAhRuoF+f8JI4RkSN12RQenhKUexn7jpT02CYUcvkjNlm4NQnChJ+F1h0Y
zrV2AkLouLedQfhGnJfu7ccwHoQQO2sU8zUiGjMbTqaPuaEN/TNt9Qk0QHHDEKqO
zNLDt+vm0S8XYGqaFpktJwUTKq+XxZmygPUS5H6TIqcoCFGKZ+MyBCnBJ1y3OVqy
i9eeafKfvXte3eiKRsyLjn/o0OZP5ajO1XNdnOUkqEFhllboImrxalHvP73Echid
LbXBb83pgyWKLI4ydTe0vpDEKw6ShMDcNFOL1VKL18KdlCOGMk3DXnvKvPiQFHAw
+oZemcuGE3c1d58iSBEOubJB+s95vyjQOSMOuKFEEAbpoZgcO44klYf2lEu12c5o
oPelHEULg+oOINVhaRqVroJd7hK0m1EGHIse/E3/kWRfy86/j1vcogUc9+Ij2fk7
rJ0aeNdjQeKlmTAYHD3AOD6UIOX2nLXSe1ltmJ8zQWkWzWHQYyESI6GHTXQzsUiC
l0ux9YMeeK0J1R78SMrlGYb6d1+LOV7l/5Q/04fg7QuN8UDqMLmvC3u4CD1Yawfw
EnuOAMsIp0UL3hJF98H6L2KLvqlLXNq/bpG1T4trczLAnSZ0wxJ3HfrLN/IHzaIK
u9zsma3vVXtPVn51fsJpAXVbG61+z2O+dNfUF0OhiqmwdpDpPM4=
=ER43
-----END PGP SIGNATURE-----


--=-=/0HvCUuf+52mMn=-=--



--===============8928354041251620045==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8928354041251620045==--


