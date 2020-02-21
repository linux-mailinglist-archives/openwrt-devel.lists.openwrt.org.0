Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FE91686AA
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 19:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yXzlz8PxyalAOQbrAcNTAq2SAVaYPop/tCvGI4kyKVU=; b=kfAr0TAUu+481MWTPsCBZJDz7
	jMoKVFTojvaGDa/6yfE3yFVPYldpe/2Ms4HyZkRzJzJFs1HvExhIOr5B9f/AcNOryZEm1HZy7oIjS
	jlRHnUC4X+eEr3SHIpN4L2JRgm1WdI36q9dSCxaHvnp2Mu8t6lQdmMszjYsLXXeY6vERiIPCmr8EQ
	/+/fM0xyA+B6A7OhJ8UTimpkpXnY47cJNCYwqT7IO6DKtDoc7juAU6rlJGZdPfB8PWq/4R93naufc
	/V4g9Vy+4wz5GqqOCdPGeaTjmToSn4bI3UnoZpXPpRufgKD1buskU227RjXeLlal/HT1IkQXOjmg1
	58cFbRbzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5D2G-0004vB-C7; Fri, 21 Feb 2020 18:28:24 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5D23-0004ty-RM
 for openwrt-devel@lists.openwrt.org; Fri, 21 Feb 2020 18:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c7rbFheJa3wyg20JKd7i6040ADsVoAEQBODQg6F/JT4=; b=RIJ4FOnSWGgrrmDrwEBRDjskhw
 dd9NXJBhN3lidq/DBF7kyJtiHTxyatgAz4HxcGdedn2ITE/Cp4svSd0YWge8jqRBXifLgnxah89LN
 0zf4ci5EkrezGv/+SA7uuDraCZMXwQ2RL/hYCMSYJiVJ+c7LT9njYQLQxrotsG8P5xEqCfqlhudGa
 3cE0KcrX63lDBYFjprZGUIMWKVG2zwqSJT7GEPZzMmhq5q5sHqv8SZxq4tVN2oNQ8IkkSdXGnQcru
 2Nix4BNx5r3TOe29jn0ULdL1q0qvrJ1holNqBo6hNz7BUP+6lME8+BB3QFQyb3h6ygZxUa65KIh6p
 Ogvhkl0w==;
Received: from p508a6238.dip0.t-ipconnect.de ([80.138.98.56] helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1j5D1z-0004dx-QQ; Fri, 21 Feb 2020 18:28:07 +0000
Date: Fri, 21 Feb 2020 19:27:45 +0100
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Petr =?UTF-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>
Message-ID: <20200221192745.467b78e8@lazus.yip>
In-Reply-To: <20200220095626.24906-1-ynezz@true.cz>
References: <20200220095626.24906-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_102814_603596_B0674566 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ppp: activate PIE ASLR by default
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4627136337506706231=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4627136337506706231==
Content-Type: multipart/signed; boundary="Sig_/hWogg9H2TY3qR20kCXiObkx";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/hWogg9H2TY3qR20kCXiObkx
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, 20 Feb 2020 10:56:26 +0100
Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> This activates PIE ASLR support by default when the regular option is
> selected.
>=20
> Size increase on imx6:
>=20
>  112681 ppp_2.4.8-2_arm_cortex-a9_neon.ipk
>  121879 ppp_2.4.8-2_arm_cortex-a9_neon.ipk
>  =3D 9198 diff

Acked-by: Alexander Couzens <lynxis@fe80.eu>

--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/hWogg9H2TY3qR20kCXiObkx
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl5QISEACgkQwp6dpqDf
hgQxBw/8CS/4ZuLZeE/L6EqOh20uymLdGpQLOwFfpesaO887DkJ+temvYawKqYoe
GIc5cMg0sd9EheQCWqGUkTLH/uX6dsymylB0l09u8Hlref26MrWzV4K7iwFpfqrS
bQDnxYnWKi54P8l8sl80Mq3G78Lci6JbXuXWZgRJfyYxA0l0Fh4ohvSjQ6ZNO6PH
rZlDdSPMCq4wdF+VBgUkU0zGbI4llahCS+XsspQCsQfGaSTNnjg0pNPhspBm13ig
4VjB17mM3Ivoz016cTQoV+0RxJmQ9C1QrXwInojhGbnVSg6o28Te+hqmmQaH84BK
WxREaHqviBamy77wABWVLhr9pGD0NkbIPfglv2+Xh/4Ms0JhWHvAuNmPnifXlXBT
J63UQ226h2WiB6u1SzM6zS2o71tLLSu2PjByjoFag8RGeq7Q689uRvQC8LpKge8r
GbBCpYN14E+zaoTK3sG7CKigzZoy8avPj0bHBms1SKICszrG3aoFS1mTjRrvQBaQ
j6BRo51nufTjSDzrkFQL9SyxhH9EW0QG9N8AQqmSfB4Py+JvpLIIdNXiH09v4PNG
aKfhMBcCrjMjQMunxedKL1Hp2Xq/fAGf5N1oZ1nfFrQgc9L8lHijp1HNWW9gFg/C
YSfZiicLBwRSOHyRG8nXIH/KtsYaLyxfu7Lh/zToZuZbCILc0bg=
=YUPn
-----END PGP SIGNATURE-----

--Sig_/hWogg9H2TY3qR20kCXiObkx--


--===============4627136337506706231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4627136337506706231==--

