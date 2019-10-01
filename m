Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA54C4209
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 22:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=axnK4a1uQUAn+alLIfR8KAxUHVf3N+0KlTv9Js/ef8k=; b=ip0FIOIn9ja+fYPSZZtZdgiFJ
	8MaVfAVNSfYp+PZZ76oRSKmEn3PdOU9dvRzuqDdtHju9LXe1aKCUBqUH8SrPLIInLBxCr/uReN4bX
	Og5ZMGPHGBDu0ZD3AYW0DmfAicQqUa6laBPS/ppAA2TmjI0r2ZSkImyjFnFS4HmXdn5fCO38XcoXi
	91hCSDncHZMBzo0Ia8FgMlp9pGUIcszGPA0pYmgWd+9i1oiavyAd/JhPmTZCwXBM15gjG/YLidgxX
	FlFmZ2LO15dxVVm5WMJx3QMFARNQ2OMJcEaTbafR1Jim1hiPrTqNldFsKlj6TM4fgvLKpeKy9CzED
	kcuLIPJmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFP8r-0000HC-LC; Tue, 01 Oct 2019 20:53:05 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFP8f-0000FL-Vq
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 20:52:56 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 64FF9A3D5D;
 Tue,  1 Oct 2019 22:52:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id uMkwknuZ59um; Tue,  1 Oct 2019 22:52:39 +0200 (CEST)
To: Linus Walleij <linus.walleij@linaro.org>,
 Serge Vasilugin <vasilugin@yandex.ru>
References: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
 <CACRpkdZKAyLvSG5XayUTwe4Nq-2NAYWh5QbxjLwNikO8CsrWqg@mail.gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <aa100fd2-459b-eea3-4a62-3145889f2c19@hauke-m.de>
Date: Tue, 1 Oct 2019 22:52:11 +0200
MIME-Version: 1.0
In-Reply-To: <CACRpkdZKAyLvSG5XayUTwe4Nq-2NAYWh5QbxjLwNikO8CsrWqg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_135254_331483_03272CFF 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] kernel: rtl8366_smi: explicitly set
 phy addr for switch
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============4990438877752903561=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4990438877752903561==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="l3ayc0YzMgEZqYgJf2WpLo9zo4cMvEmBE"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--l3ayc0YzMgEZqYgJf2WpLo9zo4cMvEmBE
Content-Type: multipart/mixed; boundary="hsUB247Z0UUgZfw9k14U7eJnod0aDZD6E";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Serge Vasilugin <vasilugin@yandex.ru>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <aa100fd2-459b-eea3-4a62-3145889f2c19@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] kernel: rtl8366_smi: explicitly set
 phy addr for switch
References: <e0eb9887-28eb-a008-96e2-66d4de81ff11@yandex.ru>
 <CACRpkdZKAyLvSG5XayUTwe4Nq-2NAYWh5QbxjLwNikO8CsrWqg@mail.gmail.com>
In-Reply-To: <CACRpkdZKAyLvSG5XayUTwe4Nq-2NAYWh5QbxjLwNikO8CsrWqg@mail.gmail.com>

--hsUB247Z0UUgZfw9k14U7eJnod0aDZD6E
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/1/19 4:36 PM, Linus Walleij wrote:
> On Thu, Aug 15, 2019 at 10:27 AM Serge Vasilugin <vasilugin@yandex.ru> =
wrote:
>=20
>> By default rtl8366_smi use phy addr 0 at mii-bus to access switch regi=
sters.
>> This patch allow to set it explicitly in dts-file:
>>
>>         rtl8367 {
>>                 compatible =3D "realtek,rtl8367b";
>>                 phy_id =3D <29>; /* switch address at mii-bus */
>>                 realtek,extif2 =3D <1 0 1 1 1 1 1 1 2>;
>>                 mii-bus =3D <&mdio>;
>>                 cpu-port =3D <7>;
>>         }
>>
>> Use default 0 address if not set.
>> Backward compatibility tested on tplink archer c2 v1 (rtl8367rb switch=
)
>>
>> Signed-off-by: Serge Vasilugin <vasilugin@yandex.ru>
>=20
> Drive-by comment, but is there some chance that you could have a look
> at the DSA driver which is upstream and included in the v4.19 baseline
> in drivers/net/dsa/rtl8366.c realtek-smi.c etc?
>=20
> I haven't implemented 8367 variants because I have nothing to test it
> on, but I think it could be pretty straight forward just following the
> pattern set by rtl8366rb (which is all I have).
>=20
> In my mind it is just another plug-in below the smi driver, but alas
> things are never as simple as one think.
>=20
> Yours,
> Linus Walleij

Hi,

I have a device with a rtl8367s connected via SGMII with 2.5GBit/s to a
MT7622, currently I plan to make it work with the OpenWrt driver first,
and with the upstream DSA driver later.

I have the vendor GPL driver / hardware abstraction layer and would like
to use that from user space to configure something and monitor what it
actually sends to the hardware. I haven't found a way yet in which the
SoC in the mt7622 allows me to send something onto the MDIO bus from
user space. I used this code as a base:
https://github.com/PieVo/mdio-tool/blob/master/mdio-tool.c which uses
SIOCSMIIREG and SIOCGMIIREG, but the PHY has to be up and should not use
a fixed link to make this work. Currently the kernel does not allow me
to send the data from the user space, does someone know how to do this?
I already specified many different phy-modes in the device tree.

This is the MAC driver I am using:
https://elixir.bootlin.com/linux/v5.4-rc1/source/drivers/net/ethernet/med=
iatek/mtk_eth_soc.c

Hauke


--hsUB247Z0UUgZfw9k14U7eJnod0aDZD6E--

--l3ayc0YzMgEZqYgJf2WpLo9zo4cMvEmBE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl2TvHsACgkQ8bdnhZyy
68cRcgf/UJ/XXE5reIlonRvLNF7f8EsjIN7Sd4umUApjEkE92XaYisDZIUkCC17T
WxcOdlAhSdC99LruoDshfVUIsvmJ8iGI7cTyES373IuYXA100VdMnUKDLhThOUwI
LcPk8VqNKiyK+CNJxpaxuC8eKslzSoJbZnA/3f9DevD9gAv+Y5pvZBXapZGFWFC/
In5y9+9UcVcc7ojvBJRs6Xl1VFjE9u2SL4HKHDg8PRPbcSNTgtw8YGNGj91kh396
sYSJx0kfLnwpbmhtHEFkwMU+qyu2WL6b8GxYAVsQh1nKzl3cH1wLVyDhW00zZrR0
d3+R9YR4k4fsdVU7pmUPtpg+fJBGAg==
=xsFc
-----END PGP SIGNATURE-----

--l3ayc0YzMgEZqYgJf2WpLo9zo4cMvEmBE--


--===============4990438877752903561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4990438877752903561==--

