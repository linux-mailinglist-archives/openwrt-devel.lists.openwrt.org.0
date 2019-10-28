Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79884E74FE
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 16:23:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aiumhsWAvPSukuyZwkdCfE+adpXAUKObk3F3GIxp6Xo=; b=ZgkF3tikz+tUZD8Kq6rqjJj6t
	x61ISNPpMmtym7WoHbwRNyQuroLWaI2w+rNcRFDhZeaOhzrdAsGVIzpkbNLsm1MdG02isctH2axlZ
	JlLWzt8rciUGEACNsFIYlYNRPwah7fes3fEGc7JC+JSsCwOClKoKY+E5S2b3haalHjoRVmcWY13qz
	QWX3/OKTRHq/E5N3wxGTZAj0+DSYSHxLmKBxwW2zuJ/X9qHLSLL7md2mff7yMamwMGaXby19CQD77
	5QFMV6As9N7bEjP/ixvpiRmnGpEeL/cVuqr3/begbTWB6NxXiaDnWoXQxNY/k+HId8OUsEUPM7AJb
	FDIixHnCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6rj-0004jL-9W; Mon, 28 Oct 2019 15:23:31 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6rZ-0004iY-WD
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 15:23:23 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1M6EKU-1iMw4i134S-006itx; Mon, 28
 Oct 2019 16:23:16 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Patrick Supper'" <openwrt.dev@krtzbrtz.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20191024115430.19992-1-openwrt.dev@krtzbrtz.org>
 <007d01d58b27$1a730a70$4f591f50$@adrianschmutzler.de>
 <2b2cc133-5d6f-4f60-73c8-f879bfc739aa@krtzbrtz.org>
In-Reply-To: <2b2cc133-5d6f-4f60-73c8-f879bfc739aa@krtzbrtz.org>
Date: Mon, 28 Oct 2019 16:23:15 +0100
Message-ID: <02c001d58da3$9ee856b0$dcb90410$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQJnE8xL/kkaRN24bGQaD6FPNcXErAKE0cFBAdxudyamKg5vkA==
MIME-Version: 1.0
X-Provags-ID: V03:K1:XI63O/phUg25xvl2ECXxT2CrQLojHSK9hBKaF70qxO8ZdRrTp4q
 UI2PGCt6SMCOl/9qqDP8gzU4tqI5GjoL61SwyBqhi6z6oPK62Ypt6WDa1UnnTf24lJcWVcl
 pwLZ91RsotyCb70R6BVxaRKHOK3em5xSgt+WSuzj39Xrq2l8Zi1p0IWSFjXyIam+KPbNxcx
 FA5rJn4VEZcy9Yif3o9mg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vp2QwqDALGA=:zGErRGds7RCnmFdMaf39h7
 uoFG/5kuPINqX/7ylAo+h5yJGYI5SCGJWBbWCjCWUiL0Uk667CBDkneSM3bnPjaWhV/IBM2jE
 /NR9PUDlPnFRFTGuMHJc5YZDh8Hnj7lwq/Bz/9CK3jKiE3ITyFkz70cCb7JMP6T8ABqMGoPeq
 NyOrSgrSkwayEU42Nsa1G42ZwfzD224ZlHCbeLkg95jX3FZ7Mg0d2n3v8ZiJVELhn3YPXDgEu
 ZTDV+AO5YiKX8zeXVp23GtYZ7fgzdRkZULvLKAX8TDp9aHqGWJBx06fMMPn/GpVspzxoVnbv3
 2/KGYxEwelWh5Zt94QW8Zd4Pm0HzEwIFHmh0wAoxGDWG6yDTRE8bDcdWJWQxwd9jLCtZA0Y2F
 rVVl0KuFncEK1+OwcNAmUeQguDQS8z4j+OqgEqR3nvCwPq4ASmhHs1XOmhdcfmxZdNBy/z4+0
 W8qnx3pbXtUN8rPO54LhZ+qhKElzAOPolMfZJ1NDbtUfPf/roQBfWhAmgUeUBCrzGRSpZe9Yo
 +lWV3Z7Mb87sVZwJEHLKZN7Wkej1IVmGNRV2ObLtwc326lPoPi6A+TIyKWQjE9WUiYekM8k9l
 YLPH0GbqUDDQ3fOCM8+rS+mpMqL/tmWZWM2JAJFScnLDHsG25ArmYHUMKNILevZRRMqi0ifYT
 0n7rDTdJEY5GC/Ps9b8fV4aqjmS5qF4aVcRLaqTyXGNVEXbdivTyfAqt/cLQPiYvA9B0avS9U
 BRzzBTlaf4PNx4lJaP+Wz+fAnFsc6qK2XD0MvEfabio4/qszmptCU7qYeNv8xU4hMVlwqrbVW
 jTzActRzbfT6J2vOlJw5VovIBYwHja4jiU6xRnz5x/pMMd3ZPpIeMYn6AbF5W+/LAtC+YjlM6
 K9n2eLD3+WjrRDlYcQxmRFFlVFRSLj3CR/arOYguA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_082322_336173_6565F79B 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for ZyXEL NWA1123-NI
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
Content-Type: multipart/mixed; boundary="===============5607798180840576705=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5607798180840576705==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=NVocrpa4/3VacT=-="

This is a multipart message in MIME format.

--=-=NVocrpa4/3VacT=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of 'Patrick Supper'
> Sent: Freitag, 25. Oktober 2019 21:50
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for ZyXEL NWA1123=
-NI
>=20
> Hello,
>=20
> thank you for reviewing. I just changed the address and ART-Label to
> lowercase in my source =3D> fixed.
>=20
> ### Regarding the cal-data of the pcie-wifi (AR9382):
> It seems to me it has some kind of EEPROM, from OEM-BootLog:
> wmac-wifi: "Using Cal data from Flash 0xbfff0000"

Note that you are currently using art 0x1000, so 0xff1000 inside flash?!

> pcie-wifi: "Using Cal data from EEPROM 0x3ff"
>=20
> At least I was able to identify only one cal-data section in art,
> starting at 0x1000. Starting from 0x1450 art is totally empty.
>=20
> On OpenWrt ath9k does not complain about missing cal-data and the
> wifi-interface is functional.
>=20
> Please let me know if I might be right with my assumption, and if so,
> shall i write a comment in the dts?
> For example: /* has cal-data in eeprom */
>=20
> Logfiles from OpenWrt and OEM are available on the Device-Wiki:
> https://openwrt.org/inbox/zyxel/zyxel_nwa1123-ni
>=20
> ### MAC addresses
>=20
> # OEM-Firmware takes them from mib0 (/etc/rc.d/rcS and
> /etc/rc.d/rc.wlan), in short:
>=20
> 	strings /dev/mtdblock6 > /tmp/mtdblock6
> 	TEMP=3D`cat /tmp/mtdblock6 | grep 'eth0mac' | awk '{print $3}'`
> 	ETH0MAC=3D`expr substr $TEMP 9 17`
> 	ifconfig eth0 hw ether $ETH0MAC
>=20
> 	TEMP=3D`cat /tmp/mtdblock6 | grep 'wifi0mac' | awk '{print $4}'`
> 	WIFI0MAC=3D`expr substr $TEMP 10 17`
> 	iwpriv wifi0 setHwaddr $WIFI0MAC
>=20
> 	TEMP=3D`cat /tmp/mtdblock6 | grep 'wifi1mac' | awk '{print $5}'`
> 	WIFI1MAC=3D`expr substr $TEMP 10 17`
> 	iwpriv wifi1 setHwaddr $WIFI1MAC
>=20
> # strings /dev/mtdblock6 (mib0) gives:
> serialnum=3DS122L12345678 countrycode=3D276 eth0mac=3D00:11:22:33:44:05
> wifi0mac=3D00:11:22:33:44:06 wifi1mac=3D00:11:22:33:44:07
> (yes, all in one line and not usable with mtd_get_mac_ascii by default)
>=20
> # "strings /dev/mtd1 | grep mac" (u-boot-env) gives:
> eth0mac=3D00:37:ff:00:00:01
> wifi0mac=3D00:37:ff:00:00:02
> wifi1mac=3D00:37:ff:00:00:03
>=20
> ...but those are generic and identical on all my devices =3D> not usable
> by default
>=20
> # art contains a valid MAC address at 0x1002, but it is the on of eth0
>=20
> I guess that explains why i decided to use the following to set the
> mac-addresses:
>=20
> eth0:  <&art 0x1002>
> wifi0: <&art 0x1002> + 1
> wifi1: <&art 0x1002> + 2
>=20
> I have 4 of this devices and for those this is correct.
> But i have to admit that i got them all at the same time and the vendor
> might have changed to set a valid/correct MAC address for eth0 at art
> 0x1002 before/after i got mine...
>=20
> How shall we proceed with this? Keep the current solution (with the risk
> that some users maybe end up with wrong MAC-addresses)? Or extend
> mtd_get_mac_ascii with an option for white-space as a field separator
> (or create a new function) and set the MAC address in
> /etc/board.d/02_network + /etc/hotplug.d/firmware/10-ath9k-eeprom?

Thanks for the extensive answer.

I'm not 100 % convinced about it, but to me using the strings seems to be t=
he most proper solution in this context.

I'm a little surprised about your strings output. As I understand it, the s=
eparator is determined by the strings function, and not by the data read (I=
'm not an expert.)?

Maybe they use some special space characters in the data which can be conve=
rted by tr "X" "\n" or some other simple solution?

Best

Adrian=20

--=-=NVocrpa4/3VacT=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl23B+AACgkQoNyKO7qx
AnAKnQ//V8XeyTwDRayowahO1luspv/4bw76hgcrM4F+7YUVSxzUQjoVg0gZspM+
GkVMO3vF+39TJHcaHREk+iEr+sENWW5BiDhcd/YgRXs8WvJyhbI6FI5zq8TCtr4B
X0AbpP59mAonOSj4CVKpt+kJicBvrD4+AmcwA+SLOwUagdhjzBM5kV2jeP79qhdj
KBy96sOMehMo0+HuSIjVA4mQIh/krv6B1wBpClJcewicdQNP4coE+Jf2n6mhkcl+
2ha5fxYVagjgfuwoPMXcHtRWAVjmiGKv2AM6DFD+LnF9WiL/cQPWlCHTZrokx+JF
38t0OVN6QU5TGcm/7t7lDzBpbC1xQ5aiEXcY5L8nanJi5Ul6LI13AK2WfJIjYScT
mHoDtHkurG6DNAOxZtgnXkmcGMny2QANQGdqAexmJ9JAt4DgHyMiXttaNjDLsD4q
p0hFzkoudqTqdAeYIe/PIVKRT2MzTwb6YC7lFXn4dbKyVe4UY+M/IePRIrlOpLeU
KJzKGeQqmelq+qT1w9HWpDmDGgKiLEVPFDRvZACcji40A/bYYXyddmDGmGE67GJD
DXS3tk7e0bo7dKVtcc7KtL7aZ4F22WQIYQH1DkSiho5pmFqPOZXa6f9QtX5L8gEx
S8Chu9w9+OzgAw02eHnrmRjMlNuXSkTZrS2AVLjMoAMzpUJhauQ=
=Dbgl
-----END PGP SIGNATURE-----


--=-=NVocrpa4/3VacT=-=--



--===============5607798180840576705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5607798180840576705==--


