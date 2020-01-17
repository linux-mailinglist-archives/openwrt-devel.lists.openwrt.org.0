Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F134B140899
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 12:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AOVRfQnGlRMV3Z4Ftz5vTsCp5WUbVgAANj0jmIqm6QY=; b=bL1v9t3OUNmf4q4KV+xXf8uIa
	+iey8SPinMsNmjRX3QB9qQZOHWzpD7QKNJp1GDxwUYzbCBMMYmCI4yFuW/UeSpvQ/I+Oaqi+xKum7
	VzPhJQV3ZUd9G77abaWIGRbu1PitqlK+sTa/eAHsVMSqSZ7Di1QWgaSPlH38+aGq/pyJ+Wok2u+ri
	OG1HeZgxAp/31vFybk+8phCdNxMfrikN3UaqzPMiXTz74baTneJQw8CilY5e5BrRdMe0Or2B00fhW
	R/HMbiEsvxeLsx4xofvovczPTZh7+c5BwWW3Y9myubRQEjdsLBvg7N/IbUQzivZBCQ+Uof9DZYg6E
	f0B/wihdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isPRA-0005AN-UE; Fri, 17 Jan 2020 11:05:12 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPQq-00059t-HX
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 11:04:58 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MryOx-1jNuNG3FIr-00o1Ep; Fri, 17
 Jan 2020 12:04:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Rosen Penev'" <rosenp@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200117044359.1923979-1-rosenp@gmail.com>
 <20200117044359.1923979-2-rosenp@gmail.com>
In-Reply-To: <20200117044359.1923979-2-rosenp@gmail.com>
Date: Fri, 17 Jan 2020 12:04:47 +0100
Message-ID: <004101d5cd25$ee9abce0$cbd036a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGrvOi4PEPNLRSSGVAOhN7e64JKdwHrf5PQqDN1mFA=
X-Provags-ID: V03:K1:137DG/oI99STHLKl+nZiXS19WG2NT9zHRPwa5RH9NYnoUudEaxb
 84GIJBuVL9LJV14YPeVBY6L9Bvd1MxYFb/EFH+b1BoM8bi19Y6+gQTmbPphIb8skMkayjOE
 hmDvT0Ga/EOmR5N0E7tliDpWLIVBQ8fwERZpP13cEllh/CaXth0zTKol50M5YCE/5gUxrsE
 c/jyyxi48A0a2yYxp4bEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KA5/Bz2b7O8=:3Kfgq4E9ywsGe6Co7TjlTb
 WQ4OfWz8OZnteei/XoWtVOq/fGAlb5xHi+NlAYk/ZySCnB/LB4NE3CRl2rGMI3Ir6u1Fgzcax
 HDfHls3oQtSAo+sibC9f3/u5JnkfmiDeeWIzoZD54Ay9hPMCVjo/PbEJHT9XZ5YE8IjMPuM/a
 nZqEnXbcEObB9vOre9NvAowkoUxQk0IyAsXpKw97cLsal0hFWMbf1SgmD9IyLN6R6XJAYJq11
 NnFXhhdjSPb/qHUYTh4HQ7pIvZxwMxOtoWVKNugyyMQqkxrOyB8MPdZ2QtyyqFTsl0tMysauF
 G6SPkMfSOzmprnn25buqbHHZK1tOKCEGX4vpRyJEaAqvYUbSMqYkv2ETfaWFU++qoljLPt/0i
 gZ1meKLo8nXXrvFYDSOCuxsNLbzHnyda9U8GkPXYza/XP4bzsS6WeCNnM01IzCDAJnHQvDxVE
 /MRrMThIJUwdpNJ6vqJRpbhQp5ZUBK2yz+5tABG+qo+z3QdYZSJwD/PX3AxRPcr+OluOmulSC
 E3/HEzV5uWIUj5jQk8OOGkdwFY9k0PyEMzaPGhG9BOFXX+5GIT4a5ogX5TCF9Mvo2NV6pPx/9
 9n52oDAkmoiO7DCWikGNkq8u6E7eAYZGG5bhzKl/fP2vSvDIF2MWF85PehkR2NbAUqAD0r71i
 IF4dMaPn7f/yyrMJPk4lSmWFJTMDtGn/FLAai4+/G1G7T0QR/KS79gd9DESYMmw6bGEI1H0ls
 6IZZHTLPLuaZ1DDmHZ8odF8FPFRv2X23jD+o2xGFYNHJAnLEEt0QURFIGHmxwB+2ARGbamgQG
 2u9OiFdpYc/14dymJRl0hZnai3o3r+IfpeZGSm9cq81p8zi5dPjAxV9ExB7+ED9LkaJ1oEoJu
 9D4TtJh4INfilL/j0s1avJDtE9u0ddbpwOru/4ZHA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_030452_873880_A2A73830 
X-CRM114-Status: UNSURE (   6.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/7] base-files/functions.sh: use grep
 -q instead of []
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
Content-Type: multipart/mixed; boundary="===============4650682191353344018=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4650682191353344018==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=AmQrEw3y7hi2iR=-="

This is a multipart message in MIME format.

--=-=AmQrEw3y7hi2iR=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> -	[ -z "$(echo $grp | cut -d: -f4 | grep $2)" ] || return
> -	[ -n "$(echo $grp | grep ":$")" ] && delim=""
> +	echo "$grp" | cut -d: -f4 | grep -q $2 || return
> +	echo "$grp" | grep -q ":$" || delim=""

logic (&& ||) seems to be inverted here.

Just send the fixed one as standalone patch, I will merge it then.

Best

Adrian 

--=-=AmQrEw3y7hi2iR=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4hlMsACgkQoNyKO7qx
AnA7+A//YZ1Xs1lCjm4X25kLa34cICX0YAUhazvOJpaLBHlePmK+hESDq2TI65XM
i46/YR6K0952zrTZK8RJriC+qhVCw1trfXp1ZVGEhH/THOydLAQoxIvBh09m8KWF
/qKirFocqRXanf2372twan/2perfWmioAlNAZxMWKZqx3VHurHP2RR93N86pYDYj
AXtB5+gbuIeFaktE+mwuittaimFckB45h4IAuqCkroGKjriwg8JfGJetLLsd93LH
aOM0kWyLVgEVo2ixgY/O+rWqViW7Y7EnpUTl69Ic0fJigzdyA31XDnF9uWRUH6/8
Ao7zIH0fI2jH55xcb/F8komu8SL9oL9xOAf6x6sXhtNQRfcJUSEIj+pps1U2//A1
RVgqOxCo03p8KYwP593w+uebnLtFLKL3N23qoxbLgQc3Lw6gJVbclpxfM6JbYZhV
IwiQVMvqeLiOMDitAAJZWpX0YTAZVmxYcfiQrieDxSab2Jmo1jDNKDttYc/MgD9r
AHsyvpuUzxlH/pjaaazTIiHJl4qKvD2+H/Ehmk0wROnEZtB67SnOObXXUkXqd0hz
q62uGzmW8tsw9S3VmfpF/acnsh746xXegc/IpDPyZfFdSkBLsRM9/Vhz+fwwVWll
fAODNzGOZkhUrHYXFjqPnDGLNkKPVJCLuWs2Y+rkXbq5qN1syEM=
=lXuF
-----END PGP SIGNATURE-----


--=-=AmQrEw3y7hi2iR=-=--



--===============4650682191353344018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4650682191353344018==--


