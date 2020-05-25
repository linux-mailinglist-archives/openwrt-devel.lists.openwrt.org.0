Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917D01E0AA3
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 11:32:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EWd6WHxfo0KGfnA/m7odog6CMELCh7t/xGcpj/P5wS8=; b=Fdj+0cnkonSZF8xRZ6MG4wg6o
	ghJDf3L/VrPYd/XmeX0GuCI3pA7wNCPs0woAQcnslaN+XNkaMls/L8A5HPPYTerhjhgxEu2l4PJiI
	0MQu5YWj/yLXzoLGUIXCPXZyh6dI1Zh6ho8L1IZJeMB63bEVokDjlkNqWCxjElSt2JPwLB2ldwSAF
	Wy06EOjLGXsD45MG++y6kjX3E51ZhNI5R+Nz/C3PY3E9JQ5kqWbS7BU1NAUKmEGG0i9OvSeN9t2Th
	KzXme02GnLUqASotxAovQYIao3+dHkeebzgM4Ov74y8rFTyPzacvs+FlRLBzUMEynKyVr28rkvZTv
	0gEg39cPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9Su-0001eO-T3; Mon, 25 May 2020 09:32:12 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9MT-0001pG-1U
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 09:25:37 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mt6x5-1ijnie0xab-00tQ6O; Mon, 25 May 2020 11:25:25 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Linus_L=C3=BCssing'?= <linus.luessing@c0d3.blue>,
 <openwrt-devel@lists.openwrt.org>
References: <20200525074000.2749-1-linus.luessing@c0d3.blue>
In-Reply-To: <20200525074000.2749-1-linus.luessing@c0d3.blue>
Date: Mon, 25 May 2020 11:25:24 +0200
Message-ID: <005701d63276$6bf11620$43d34260$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQDV2ZK+GN48EywoPHOqp9U+2YKyQaq5OQ9g
X-Provags-ID: V03:K1:k9Pz1qyAVWmKH+L2jWm/x0J24TBOfSTN6BN2DKlEKEJrxocbiLK
 ejBNtpcE+usgAx/YuTqFOcIOF/oHVRjz0rKiPMOB/GIUF3xO7imFuDO7hK4OS3BPhVvHQX9
 ugTku75a5BQ7TZbnNl78t/jTGuIK7s2kPGPgMBwf3ZSoJUqereiWBy0xH1K4P6inktf+o9y
 iRttqAytPBuExPn7yYzLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MVkWsshkuoI=:H7VwJ4cKgG0iGd8CdqJvZW
 VUDCXqgPvkf2Itdp8qBQbEDqyakESqsRKrNfgK4tuXmgO4LJb+I3+AJsrtNCKRJKoTD8UTin8
 xMhzgOk7FhBFGe6WXJ6xbx5/HV2LRHbEer+ZF/eo+DBDSdOu9sIzMDZU17mc+8gCgdEboQYM3
 VLB8DAuMBOyhKhs/FlNFXT/hYSNb8BiFVAE9N5F4aQxA0WIhuWyh3yNcWB4y2qS6jEKavTZ5V
 3iPbzVtAGv1UeBUmYFkuN2yYhfsEjgRo6yh/xlq2TEgd7v6V/bRx14y/PL45+H4Lruo+76gPL
 azOp3OKBVySn3IwZfwjnSG5kB0elioOx0nx4WzR2apidz+1cP5Mot+H06OryxQDfhLVOZZzdo
 ZUSp+9lPPSuuxavaY443nDvVmohit+z/TXoWhYEgq40BVdUdyZA3KD3cVQYzCHQgCt5DjUStQ
 pKvCvwyYbfrp/77dtHJLfjsDYkJs5PsjOX0Mwi3Te1C/jfBWx3fh18UsXCp7lmHCNZHSh7FhP
 WKueAtlpQLdES3iaOlKnleMF16ZHXGl12kd5luybettfojOL8ojwnUTe13dvuKuipMz/hGgaj
 SRlTVjvI/C1hGa9/1namHlquf2526kSLZXefJ1N62Qr+57d6XktASHuMbzpqFgUeU7UIIjxkA
 mV/WzA0Ya71SemqLVuDiuQpHEe/zyNll5jE6AhfOQ+4jJV8fxYZgkI13m9BosOTxqKCU2JVYV
 YSv0MPTDFLP5Zl6/fMVD5IcbtM/Zn6c3NYWj7LP/in67WcLPpv+cuNNiel7OAHPCi/PcKEFii
 hgU7VNrXvTlKXPv6w6liJ4JKX6qpPI2LgTdqDRhGGVP1sV/EFgCeRIIDUYbLjRCiIuOptlf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_022533_428777_09080E59 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] layerscape: kernel: cma: increase CMA
 buffer size from 16 to 32MB
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
Cc: =?utf-8?Q?'Linus_L=C3=BCssing'?= <ll@simonwunderlich.de>,
 'Sven Eckelmann' <sven@narfation.org>
Content-Type: multipart/mixed; boundary="===============6155562431375598058=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6155562431375598058==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ydJsA+FZVpAyqJ=-="

This is a multipart message in MIME format.

--=-=ydJsA+FZVpAyqJ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Linus L=C3=BCssing
> Sent: Montag, 25. Mai 2020 09:40
> To: openwrt-devel@lists.openwrt.org
> Cc: Linus L=C3=BCssing <ll@simonwunderlich.de>; Sven Eckelmann
> <sven@narfation.org>
> Subject: [OpenWrt-Devel] [PATCH] layerscape: kernel: cma: increase CMA
> buffer size from 16 to 32MB
>=20
> From: Linus L=C3=BCssing <ll@simonwunderlich.de>
>=20
> 16MB are not enough for ath10k to initialize three 4x4 AC Wave 2 PCIe car=
ds
> (168c:0046: Qualcomm Atheros QCA9984 802.11ac Wave 2 Wireless Network
> Adapter).
> This leads to the following error when trying to initialize the third
> one:

layerscape is already at kernel 5.4, so please patch this config file.

Despite, armv7 uses 64 MB ?

Best

Adrian

>=20
> [   16.742475] ath10k_pci 0002:01:00.0: pci irq msi oper_irq_mode 2 irq_m=
ode
> 0 reset_mode 0
> [   16.874024] ath10k_pci 0002:01:00.0: Direct firmware load for ath10k/p=
re-
> cal-pci-0002:01:00.0.bin failed with error -2
> [   16.884784] ath10k_pci 0002:01:00.0: Direct firmware load for ath10k/c=
al-
> pci-0002:01:00.0.bin failed with error -2
> [   16.895224] ath10k_pci 0002:01:00.0: Direct firmware load for
> ath10k/QCA9984/hw1.0/firmware-6.bin failed with error -2
> [   16.905956] ath10k_pci 0002:01:00.0: qca9984/qca9994 hw1.0 target
> 0x01000000 chip_id 0x00000000 sub 168c:cafe
> [   16.915881] ath10k_pci 0002:01:00.0: kconfig debug 0 debugfs 1 tracing=
 0 dfs
> 1 testmode 1
> [   16.925422] ath10k_pci 0002:01:00.0: firmware ver 10.4-3.9.0.2-00021 a=
pi 5
> features no-p2p,mfp,peer-flow-ctrl,btcoex-param,allows-mesh-bcast,no-ps
> crc32 9626782c
> [   18.169022] ath10k_pci 0002:01:00.0: board_file api 2 bmi_id 0:31 crc32
> cf58c3bc
> [   20.692482] cma: cma_alloc: alloc failed, req-size: 200 pages, ret: -12
> [   25.882670] ath10k_pci 0002:01:00.0: wmi service ready event not recei=
ved
> [   25.943121] ath10k_pci 0002:01:00.0: could not init core (-110)
> [   25.949048] ath10k_pci 0002:01:00.0: could not probe fw (-110)
>=20
> Fixing this issue by doubling the CMA buffer size from 16 to 32MB.
> New values in /proc/meminfo, with three such cards connected:
>=20
> root@OpenWrt:/# cat /proc/meminfo | grep -i "cma"
> CmaTotal:          32768 kB
> CmaFree:           19268 kB
>=20
> Interestingly, older Qualcomm AC cards
> (Qualcomm Atheros QCA986x/988x 802.11ac Wireless Network Adapter)
> don't seem to use the Contiguous Memory Allocator and therefore don't
> suffer from this issue.
>=20
> Signed-off-by: Linus L=C3=BCssing <ll@simonwunderlich.de>
> ---
>  target/linux/layerscape/armv8_64b/config-4.14 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/target/linux/layerscape/armv8_64b/config-4.14
> b/target/linux/layerscape/armv8_64b/config-4.14
> index c1bd718366..ef1bbadd2b 100644
> --- a/target/linux/layerscape/armv8_64b/config-4.14
> +++ b/target/linux/layerscape/armv8_64b/config-4.14
> @@ -140,7 +140,7 @@ CONFIG_CMA_ALIGNMENT=3D8
>  CONFIG_CMA_AREAS=3D7
>  # CONFIG_CMA_DEBUG is not set
>  # CONFIG_CMA_DEBUGFS is not set
> -CONFIG_CMA_SIZE_MBYTES=3D16
> +CONFIG_CMA_SIZE_MBYTES=3D32
>  # CONFIG_CMA_SIZE_SEL_MAX is not set
>  CONFIG_CMA_SIZE_SEL_MBYTES=3Dy
>  # CONFIG_CMA_SIZE_SEL_MIN is not set
> --
> 2.27.0.rc0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=ydJsA+FZVpAyqJ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7Ljv0ACgkQoNyKO7qx
AnDbdw/+LTjo5OWON9pCDkcedkQgPgxEOcsbmohSmdKw2sTQWt7QC4mFe2WjrDSs
IQs6EUKY5zuj6Aez8/3W82+RXlYyogMmaTnq5ynsKNXaZo1SXsXtt+qzOjxQyjHN
J3g69lkrHUU6DoTgyG+O+kGemi8N/6yOc1mG6pcMHSoClXGmLwatdQf3E6d0tNtR
CpnY0Oxr5P5J2M9TC+39/OG/ma4AS6Chf/ffXuwnWNwp7nmEQ4oXH3T15UhJnRHg
DFMnI2pYdtu3mX/GrWYIRRx+SfTK8hYihY5SXIbunYdXvhdHTaNI1i6rLoLFZNU6
frUFRzC2KQ/bSf/DPe+94d5Zk95UoY+nu3or6HthyZPv8isdplPufaEmcyUjBdf3
18sTULzVH83JnZfWQS5PvzztgMOOcZXk2vxbGBhL5oSW9H01x6NcO1YbCEvntXaj
Pm12nuNFqW3u6I09c7kZ9drxGY2gEat0hNMd52+3aTO/pk+oLZycUmblQ7XerBi8
ff5GBs/Aa83VNAJt+/fRdLVNTERQuVh30Ly/y1xJyHzqZbemI6y+jfPhEWcmhH7m
75/ccajUQk83Vu3AjYr9YiJPXQQlpXjotAcA8yHwXX58J6Y3VUYTUkIQDqNUpNZE
16gONsu8Wm9pyhltaE7ELVIwlbPzqOaz1hpqi7uiy12H9zVDUwc=
=cCRt
-----END PGP SIGNATURE-----


--=-=ydJsA+FZVpAyqJ=-=--



--===============6155562431375598058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6155562431375598058==--


