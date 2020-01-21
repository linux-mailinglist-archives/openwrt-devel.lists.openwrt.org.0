Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B94144853
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 00:32:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IqkSROuXR+uPbGWvipPYGEqaAxkQDpTbd83yLvGydTM=; b=fdlflPfL9oPvQupAxPj6dG/Af
	HL2cmBU4t9Q13yeqjUvsWPzXFGu8BdeNEa2vKpp5MYgnN60maDO7Ney13qznFd6QwL/gN1fTm0rDG
	00GpNGQzfpX9UCIQyL0LSgz5ivZrGnQR4kn8FOi5KKKVh0VxP9izeVNiYBeeCyvXtKTsOHo2U42YT
	8Wep/7UN/IEU2yKi9rxV+e0u8yoScXQQsw+owTx/0HFaISSh/gsXouWMGkQyoTNky5Pk7Rb4Ol6Bd
	rwB2QejfmKv+c26X32TVgbKcV9mQcb4CDGWMfNpNTnhhx70/3OG2V3N837/NyA/m14uHb437eQVHF
	IHLsT3UyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu30G-0003M7-AN; Tue, 21 Jan 2020 23:32:12 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu306-0003IF-GT
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 23:32:04 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MxEcg-1jrNmn2AW0-00xXG4; Wed, 22 Jan 2020 00:31:57 +0100
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20200121205751.1810-1-freifunk@adrianschmutzler.de>
 <f882f1d1-a751-1bf7-6e16-d46e2ce1d00f@david-bauer.net> 
In-Reply-To: 
Date: Wed, 22 Jan 2020 00:31:56 +0100
Message-ID: <018701d5d0b2$f8dce580$ea96b080$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH5t2+Tr3nKgbg0VLM7Mp1co7rsmANPK1upAcFEX72nhXHdIA==
Content-Language: de
X-Provags-ID: V03:K1:LhQbU9sBZYm5F7676xJjK3W7tBe0TTiRSTZz3q0FNqiXMRmRuqd
 0glshN2HpMWIk6ipwbrNSiQH+DbKxDkuV9dJ/9DYf5j8Y9/W+Xk322CCCvPUIrJ9arqEMQk
 pGie5/PDnTuXwZlWxLUeZu8egABKlyIp2ZxZgVxKV2PBvF1TfU1WfmKAjVe8Hu+B533dBvh
 s0/IJ38+W2MLv+Uu+W0iA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tkZqD99RBTI=:fVzCsZcnk0QGW1vCgawkSs
 Il6ehA3osic/rs3CeBHAUo9bS6tU0f5vL18BhvmczcBu2bEj1YGeOMQ+2pPDiPbPt20iFSwcN
 FjmSs+SenxS6SxdK1q68Xfc2ddh3KwvI9rV1tI6jxUQPhjWd2CBierTiZuXyZUkys2bD6lcM1
 eTIzjpQvf60u8PI6MkOGTt1wikh9Cd6127PSkpoQacdvbBKTTgfWgGYNpSO5MEAB2/5GNjcqk
 7q4GW2OvLwrKWWjJ3clY90usIlWzGNim+GB269Xg4KZYBe6DfDxJ6ujn6pC81hd3QfOFK4WUG
 WIK2onSW38liT2YGzrz2hQCVLtacEUtgywMF9SO3MnWod8VOT97x+9rA46qKI+2Q1G5q6Izud
 8/fDgzLDyBXf2l+kUQb4AKjDVZiqQoafkXBrSq6DUTsOgRdTrHPVU0gLQDhn11RA/t05IiPfE
 Gmjs4rs4Z4rnaCgZG1w6FqYJt0JzlcDpdI2+7kMcBenkc/98YDmNdoE1im/45SsqbWGvvW0jR
 XvL//pICGcSGMylI2YgodOzyzXQtLhEHKXvLc0QmJg5XzTYFnyII27SzFuOkLhasjZF+z1Lcy
 wxyizqWbIIagVYQZbalguWHBYBIRMR7u0bVqhmxfsG8y7OysX5kn4B03uZdNf+BHEiVrxNG46
 KpaUWIBTKJASno64uA+Ml7LaqwWeR1Qdz/7pI8f0Owx0bRPcR21ie/SbdZ/O/XQNYGymw5NPu
 VuXcBLSqCsxM8BC5nQ/0Q8ICMBNc5C/bGACc86xYoT0xVxf7jxj0689Wdry5/uhU1g9fYLlkf
 qxkFcnGGD+uNrVzkiVxp/a7HnO0YSw4GNyNYW/Y+lXj5H5Buxtu7+sGcQqsdvw7BviOZFeDkF
 +P4KfeTwmI7I1CwqLJU0rzl56T0wtOvomsKfOoymg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_153202_846287_4F1DD58D 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: move lzma-loader to the end of
 available RAM
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
Content-Type: multipart/mixed; boundary="===============0711818209268997722=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0711818209268997722==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=0JApy0JsNBPXWG=-="

This is a multipart message in MIME format.

--=-=0JApy0JsNBPXWG=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>> To me it seems the LZMA_TEXT_START argument is overwritten to the old=20
>> value by explicit declaration in=20
>>=20
>> target/linux/ath79/image/lzma-loader/src/Makefile=20
> We've tested it for the Mikrotik PR, and it works with my patch.=20
> I can't tell you why overwrite works this direction without further resea=
rch though.=20

However, effectively we currently set the value twice. Since lzma-loader/sr=
c/Makefile is target-dependent anyway, we might as well remove the "variabl=
es" from image/Makefile and just set them in lzma-loader/src/Makefile direc=
tly.

I also still wonder whether it would be worth unifying the different varian=
ts of lzma-loader in ath79, ramips, brcm63xx and brcm47xx and generic.

Best=20

Adrian=20

--=-=0JApy0JsNBPXWG=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4nieoACgkQoNyKO7qx
AnCT1Q/5AZa7jOpQtS8z92Xe55nKKWuWQFuQOuGa0c2F4rk5l7E5Cz5/kSbAs/Hj
8fVzvX5Pd3UK9o773OXtZTPDs16NFlgTK7mg61h/1XsbbNzBJDmIeAlkd+n7BsA+
IqnSVsGgZB5V9VkdqrLGRWa5SYKUezHXFwHiTRnLbEeLGZoijkOsw30TxMHGOdHY
7UOarfBI4nTanQaXxmndGEHYmgvX7NgzLlUiOum8Al1HIDHwyZ/UXRGbQ7ver84b
ZIqcHrfQHBS4cOq2xMcPywhyOL6KIYgSGXRWh1TW2hFAHzLfgZCisNNzVQ7foKhP
2hqE21xnK45OJk/BLj0tdwpAVUb91ur5Lqq5UdHJurkTxV6FM05t9/2A7bSZ4MRi
uVUoDX2Ew/RyQ9VqJfNqSniK4PGh9pSYOjfWPt5s6oBX+SRiBflrk3nfBPchqdd7
qb3sSu1m6+7Pvv5OifJlBtmzVfHVozAT2RazNt5TrhNMg34TP4FUAjKr38K/DCoU
v4bQylJsZDmCMo+XWZOTg1uSBJfo2H9DAIJX6jc3glknl46uUgNjunsxcmfxAePN
dYbr5NRwG6eitnodSWooofXR8V6NJTn/aU4eKeM3ynWW42jrXWMuQxnGv1qB9IzE
D+oIlDUL+2Y63GBuH1H8UF1sngBM2lbXKVVQpCxviqBHvIVWA1g=
=lL/b
-----END PGP SIGNATURE-----


--=-=0JApy0JsNBPXWG=-=--



--===============0711818209268997722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0711818209268997722==--


