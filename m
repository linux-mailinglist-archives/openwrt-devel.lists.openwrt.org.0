Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963461ED182
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 15:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xDpDiTuQyUzEMrn5GaHxZR1W+lOyFW4HoMqbBFRVygE=; b=L36tNCjHFFJhMNcPGIM5zLqIH
	wPrUl4j0NfVtPoije/hOpc27GOyuMyPrAZxVpRrcUttuN4HlgvNgCu3xJsmnvzUrD7+Q1xFRTrMjQ
	St5FiMZpg14K8tcWHN0QSL6faXx7p4fRW8pLvNgHF9lHXz9fEJOfLtRtIF0b/0BqXYCIabTyi7t8x
	zvFX7eiQVkrDaVt3mq0bi0LsbNqbBlEWsUIAG5neRYWNQElqFanDGSBOvW+GKjOa+B951ZMWMP9yr
	VnAYx4RJ/T/OdjFKCRONtEDwh0Q9LyAqirC+Qogrkphw4LOLss4wGr3LRGgIOAgsDmtHC0jF3tLQ+
	sFz1gH2GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTq8-0007pu-HY; Wed, 03 Jun 2020 13:53:56 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTnM-0005Qk-Kp
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 13:51:07 +0000
Received: from [192.168.1.121] (ip-78-102-138-110.net.upcbroadband.cz
 [78.102.138.110])
 by mail.nic.cz (Postfix) with ESMTPSA id A86F2140566
 for <openwrt-devel@lists.openwrt.org>; Wed,  3 Jun 2020 15:50:59 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <20200520123305.30994-1-pali@kernel.org>
 <20200603113001.GA9798@meh.true.cz> <20200603124823.5zgu4nncgzmeembn@pali>
 <20200603125314.GD36571@meh.true.cz>
From: Josef Schlehofer <josef.schlehofer@nic.cz>
Autocrypt: addr=josef.schlehofer@nic.cz; keydata=
 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
Message-ID: <bce37cac-cfa1-ee8f-fe00-f7cb0d8fa21a@nic.cz>
Date: Wed, 3 Jun 2020 15:50:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200603125314.GD36571@meh.true.cz>
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
 USER_IN_WHITELIST shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065104_992702_3D5BB9B6 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for
 Marvell 88W8997 SDIO wifi card
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
Content-Type: multipart/mixed; boundary="===============6066133045264239262=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6066133045264239262==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="pKFqpOX9km0xZrOkePagulAcBJCsbrARV"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--pKFqpOX9km0xZrOkePagulAcBJCsbrARV
Content-Type: multipart/mixed; boundary="Gl2JgiTEdGnw6m0fnDR1WpRYQ224MAsRG"

--Gl2JgiTEdGnw6m0fnDR1WpRYQ224MAsRG
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello,

On 03. 06. 20 14:53, Petr =C5=A0tetiar wrote:
> Pali Roh=C3=A1r <pali@kernel.org> [2020-06-03 14:48:23]:
>
>> What do you suggest to put into commit description of such small chang=
e
>> where commit title already contains description of the whole change?
> lspci output as in your other patch, simply something, otherwise it mea=
ns
> additional work for me
I am looking into previous commits in iwinfo and there are not many
commits which have the description, which you suggested at all. So, what
has been changed? Other guys who have commit access it seems that they
are not doing that and merging it as I think in the commit message is
everything that you need. I think that your policy should be applied to
all not just someone and should be followed by everyone. Just my two cent=
s.
For example, I was looking into these commits:

https://git.openwrt.org/?p=3Dproject/iwinfo.git;a=3Dcommit;h=3Deba5a204f7=
76f49b9948b41e41c03560dbd307c8

https://git.openwrt.org/?p=3Dproject/iwinfo.git;a=3Dcommit;h=3Dbb21698295=
1698833bbdf4a88872e9b5ccd026a5
https://git.openwrt.org/?p=3Dproject/iwinfo.git;a=3Dcommit;h=3De59f9253aa=
09a340d235dac074a10a4fe48b62fd

and many others as well.

Regards,

Josef

>
> -- ynezz
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



--Gl2JgiTEdGnw6m0fnDR1WpRYQ224MAsRG--

--pKFqpOX9km0xZrOkePagulAcBJCsbrARV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEVvFq11QlPPxS8G8UcXC6Lx0Cn8sFAl7XqsMACgkQcXC6Lx0C
n8uIMgv+OFgYi2ES6oC1+5jKMsUXqqIXTdVBGbtI/U2cK9ueIxngtKjkJFy5/1nB
p1qPu51BX6D71oqXzPN1RJrlZKw49dpSvOxJVIg+XNEwId4LB8op05MqYlj0cDY0
TgzocdwcMcA90zYO2AgzfcXcOq06BkkybOvc4IBljacqdJlW5HAqH4glxUcCt3a+
Qonm7Z3sWwLK985kQiXmcmQACslLhLg7UkKt8qIT5SbsjypjtZVYL+E9p1SXX0Oc
iCNeQoAYxl1PP0GR8VBfo0Ek9/2R6KAFQl75PM1jOSHUbgiEDFmkp9cDIG5Zsf1v
L+XB0DvS3MFvK/x1SkNR2KwuMJk1JUr2i+OWwzmeJv5m1V5i5lIINjBhuaaTkBT0
3ujteoRmJaC3mlfavAAhYalIAMApzoxUPNgbf/k0UzYjQoAfucCL3X2nE6x3d1PE
wb2RPYR0gt4rC79j4qZUGGjLL+BNffclcxJI/FHK8lxc8l4XSgGoiXGu6s9mlh+G
3+ffmCIg
=KseP
-----END PGP SIGNATURE-----

--pKFqpOX9km0xZrOkePagulAcBJCsbrARV--


--===============6066133045264239262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6066133045264239262==--

