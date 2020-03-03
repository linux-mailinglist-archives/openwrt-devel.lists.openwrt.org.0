Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AE91784CF
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 22:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o+Y2LPh9vSMSFFu1mes1u22A3QXdCpguX8wjZC1M/BQ=; b=dAJ
	nrBJJM2Yz2xi+WkeCfgJX7fG4i4FHoU7YeQepuuH+p6mlKT61no8ROSeyfcg+c/gyiTIDNyIYfU5Z
	Ru6tRpKIMcZoFVaX44VPaJM+OhzNHUr5vrivNt/kwl3ahY8XaehRxUB307d9KVMO8+9XJEsfPl/rC
	CP9JyQ+yclyNprS9yoxI/xBGK71EHZ8Vd0OIT73mYSDtKYbviueKcfQUrgcuXVqz+dMy9Gj5z6kyx
	bIA0SfEZWytrVxii25Nf0+q+4ue/HEvH8IPu94A90OPVPWhQcpHn+a4/Z6VXwMkoY+wqMtLCABYy+
	GN8P7X9c68jH6lcrx8pi4pY4KJhyNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Exq-0003cX-GP; Tue, 03 Mar 2020 21:20:30 +0000
Received: from mail.bitkomplex.de ([2a01:4f8:c0:e030::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Exi-0002fs-0K
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 21:20:24 +0000
To: openwrt-devel@lists.openwrt.org
From: Matthias Larisch <mail@matthias-larisch.de>
Autocrypt: addr=mail@matthias-larisch.de; prefer-encrypt=mutual; keydata=
 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
 RLaaGTKVZ2SB
Message-ID: <d4cac621-9f68-674b-a853-98c697fb921c@matthias-larisch.de>
Date: Tue, 3 Mar 2020 22:19:55 +0100
MIME-Version: 1.0
Authentication-Results: mail.bitkomplex.de;
 auth=pass smtp.mailfrom=mail@matthias-larisch.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_132022_353588_22473EEB 
X-CRM114-Status: UNSURE (   5.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:4f8:c0:e030:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] Bringing wifi dynamic vlan support to tooling
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
Content-Type: multipart/mixed; boundary="===============2545813262062786268=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2545813262062786268==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="dH9YpnFzxHgUEdJmkqfnZiOuVMmKpCoa7"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--dH9YpnFzxHgUEdJmkqfnZiOuVMmKpCoa7
Content-Type: multipart/mixed; boundary="UL0Wrlb1FcjTjtgEtvVI4qltuRyG2KwDf";
 protected-headers="v1"
From: Matthias Larisch <mail@matthias-larisch.de>
To: openwrt-devel@lists.openwrt.org
Message-ID: <d4cac621-9f68-674b-a853-98c697fb921c@matthias-larisch.de>
Subject: Bringing wifi dynamic vlan support to tooling

--UL0Wrlb1FcjTjtgEtvVI4qltuRyG2KwDf
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

Dear mailing list,

I am using OpenWRT to serve WPA Enterprise wifi with dynamic vlan, e.g.
users getting directed to different vlans depending on their
credentials. For that to work, hostapd creates another wifi interface
and adds that to a vlan in the moment a client connects and removes that
interface again when all clients for that vlan have disconnected.

e.g. additionally to my wlan0 I have a wlan0.101 if a client is
connected to vlan ID 101.

My main motivation is having LUCI support to also displays clients
connected to that dynamic vlan device. This unfortunately is not
straightforward, as the truth (tm) for existing wireless networks is
taken from uci and netifd. In both, the dynamic vlan devices never show
up so they don't get picked up when association lists for all interfaces
are created by iterating over them.

A related luci bug https://github.com/openwrt/luci/issues/1324 is open
for long - but I feel this might be of broader scope and would like some
guidance of how to do it right and if you feel it affects other regions
like luci as well - because alternatively luci could build the list of
wireless interfaces itself and query the assoclists for them instead of
relying on uci wifi-iface sections or the answer from ubus
network.wireless list.

The question might be even broader - what is a dynamic vlan wireless
interface to the tools - how does it compare to manually created networks=
?

Thanks for some ideas,

Matthias


--UL0Wrlb1FcjTjtgEtvVI4qltuRyG2KwDf--

--dH9YpnFzxHgUEdJmkqfnZiOuVMmKpCoa7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEq73qADZQnfQ8773XDfBaj7slHd8FAl5eyf8ACgkQDfBaj7sl
Hd8Yyw/8DxICBy9RticWQGiqHVGo0yVo8jmVyxDcLlnJquab32hZH5ZzgmaPzCjM
1TEpfzZ2s5m/23t4B8jo4U6Q7RWwe4T0T0AAv9yXE1bv/qK/Lk5LCWz24W5Gd7SJ
60ker53y+b4gizXo6bNyOmULNSWKK0Xftfsper8RsSu5r2S2x+YZDkMP64VMfjcC
8JfmNlw2Pza2e/u5692RJEpLSwBsr6HLesyqXEdhxY+Z3R3BEKUmXWgGDWedi6rK
Jdu6whg5oaq3a24KYIbuURa+H5KYB9qQtW4L4UJ9al0Mc+QVYOLb5zpqO+oKarcE
hDPWKKosSnDP/jxCFXEuXKZkv7vEcI7hs0RHW3/Deht3RwmecMn1+QYesvbIj1Pb
O/SFVWu2coby6RRkuN2jrJjXaywAMnxwAbvOJtxZwXKxStj0kAwiTKrQK7N1MIfo
Q27YHWlnfDZI0acNJ5ls3TPVsFgNK/sOStEKD7zNnId6MyyN6FOxaREHBHsVJSi8
ash+cAB3GMn6B/6g+udfmXXkBgvTSz/YdgW++cl5Vet9w4xyjZCvBvgXKJiob5Si
RFBF4JMAs8jEanjRc7foAiTli0CzLNR2Aokp5znzdt2fsy/sIOTN99SQFozffpHK
HCXlCD1N2YhP31ULOicg1bdj0SWD64P59Dp/spijjgld1mZUing=
=4mWB
-----END PGP SIGNATURE-----

--dH9YpnFzxHgUEdJmkqfnZiOuVMmKpCoa7--


--===============2545813262062786268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2545813262062786268==--

