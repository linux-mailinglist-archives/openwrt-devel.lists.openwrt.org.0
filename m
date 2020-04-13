Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD5B1A6747
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 15:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:Mime-Version:Date:Message-ID:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KOu+5MkZVU+3yP91mE8heyoeSfn0LDlLcFgL3EkOfhI=; b=VfudsbWzgTpliLog9XOprKN5W
	+M5TE84iimgv8bzZCdyFRoF0OAQTys6C6MxBQkCb1ZWE1TUStoKBilfdoE4gv9Qx5odsROyeo7KYN
	u8rgb3J5thpMBMI4ZARUHtmqUjPh3PZ16ajDeFRhPPagH24CA82QvW7Hb8CSGvxo8phFiVI80jBYE
	imAYRysrt0SLKRe1aMT6tLPtfmfuew37SfYa/E4/fGx0qG/Er0ycAslJ+elFWuaK3aEUkZejPl6R2
	b431v3TBg3G8PDkLIyhKHluZx5W0uKSH95gOJCgsJhzXmliq3iSe3PYfhQXkYXjiUfrAwbavA2ULj
	+gyErKh/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNzN2-0002L5-69; Mon, 13 Apr 2020 13:43:28 +0000
Received: from knopi.disroot.org ([178.21.23.139])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNzMs-0002KV-Ai
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 13:43:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 372EE20C8D;
 Mon, 13 Apr 2020 15:43:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CptQ9TEM4J9O; Mon, 13 Apr 2020 15:43:10 +0200 (CEST)
From: endspiel@disroot.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1586785390; bh=Gi2bIOgvc9VlNF1r7b9gwDEY7Bxydz66XFIIykM4rkU=;
 h=From:Subject:To:References:Date:In-Reply-To;
 b=HEFJLfWWLPFx+mXlqP6NapKlhPBsDpbwOzCksuHSksw6abEGIYgGfkbTeo1WphIXP
 MZWIQvmDrxA++ootp7vpPY92L7VAgxqaHkmracAp2b+kMbc9Hy1w+vuGTa4YcYOvJX
 RYflOT4F7CuR14oX2OOE/ebioXXjPSGEWUk+wyQvlicZXrRalpZ+0iBbsoL6nESc7F
 iXi9hGaS5MqYKtaRhW19str0gKDohySRuuWOtekjIcXL17xN9RRRvz3j4AC4lIL4f5
 IQsKrdISPV/GiTcOeArxyj4Ubg0enfPE/MT8krhmgR7CD02OrjWM/xmn4l8sjquhO6
 evNZfeYd0Zn5w==
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <20200409172711.26807-1-endspiel@disroot.org>
 <015901d6104c$0f7a23b0$2e6e6b10$@adrianschmutzler.de>
Autocrypt: addr=endspiel@disroot.org; keydata=
 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
 XrmCeqkVmfX5stT0cOJojtXgPTdOhkPlrVGixQ==
Message-ID: <5f75a51b-4bef-1d4c-9545-58abb04ec25c@disroot.org>
Date: Mon, 13 Apr 2020 13:43:30 +0000
Mime-Version: 1.0
In-Reply-To: <015901d6104c$0f7a23b0$2e6e6b10$@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_064318_785966_CEA5B1E6 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.21.23.139 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 v2] ramips: add support for Asus
 RT-N10P V3 / RT-N11P B1 / RT-N12 VP B1
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
Content-Type: multipart/mixed; boundary="===============1085807575632367288=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1085807575632367288==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="MzA9B7sviDIYyupf6BsjJbNkNWIpqbOTX"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--MzA9B7sviDIYyupf6BsjJbNkNWIpqbOTX
Content-Type: multipart/mixed; boundary="Y0PY7en8FyxFeuM0LBPaveNTQDUVPYZ7p";
 protected-headers="v1"
From: endspiel@disroot.org
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
Message-ID: <5f75a51b-4bef-1d4c-9545-58abb04ec25c@disroot.org>
Subject: Re: [OpenWrt-Devel] [PATCH 19.07 v2] ramips: add support for Asus
 RT-N10P V3 / RT-N11P B1 / RT-N12 VP B1
References: <20200409172711.26807-1-endspiel@disroot.org>
 <015901d6104c$0f7a23b0$2e6e6b10$@adrianschmutzler.de>
In-Reply-To: <015901d6104c$0f7a23b0$2e6e6b10$@adrianschmutzler.de>

--Y0PY7en8FyxFeuM0LBPaveNTQDUVPYZ7p
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi!

On 11.04.2020 21:56, mail@adrianschmutzler.de wrote:
> Note that we do not add devices to stable branch without a special reas=
on.
I hesitated submitting these patches to the master, since, according to
OpenWrt website [1]: OpenWrt support for 4/32 devices will end after
2019. So, it seemed to me that these devices--being 8/32, after
all--belong to 19.07. If that's not the case I will resubmit my patch
with suggested changes to the master branch after some testing.

1. https://openwrt.org/supported_devices

--
endspiel


--Y0PY7en8FyxFeuM0LBPaveNTQDUVPYZ7p--

--MzA9B7sviDIYyupf6BsjJbNkNWIpqbOTX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJ8BAEBCgBmBQJelGyGXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ3QTJFMDFEM0Y0NUZEOUQ1RjY3N0UxRDdB
NUUzQzA5RjIxRkNDRkE4AAoJEKXjwJ8h/M+oyT4QAJ+83TSVbB16iycP0ZVKnUuT
ogTWeos6cMnLOpxVoyH6yAcj0Bo6AupTTOPx2KlH8xo/zbYrfb7XliJmhYaauo/B
M3rVjc8VmQ+syqz7wcQnrNHgdle6ErNNAft2ldDIh4mFKLkeoI7myfJCCA1vLAUt
Ktq6z/kiNTJB81/mpCHDPJqlxfyf+YWKjvxgPye71ERlubaJPeZCeNMKaIGBAdQZ
PQCCR4ik1/ksMRX4B6sOEB7w1hq/IV790EJ/pQMLwtHcwqcdEZq0DUPbo5Ufen6Z
Ip8HrEyO0NnM53jMzvJyz44Dfx8YirCipLIK8uORF+j7e6QOjK9zufh3NP309ZE+
IFXnEowqL//7wALSEkW8FnSpj1hGKrU9GU3YYxxW1F5ve+q8MmcPhnGGRXD9UwZY
N5jNaTJGXF40DUHO/LBDo5QNN03BuLwCG9ged6AdQt+9UdKXmHRYLpFOvbMYzuER
kuNoFC20pJsQJYp42LQUtgrGGcdjmcsoba9dE2pH17Izl42hq6uBh3zLlAWeUkPx
YpXbQKj7MYK/yfIRUXeu3rBtejVdsREg8pMC6CWnfvVZl3oZHVxeSOTYpRjw9e/H
ukzg8kXcAKuIaxMlWDuhpZvrYZnlgNom1RZTntCvUdqt3J45zgZ8q/QSLdfW5sy6
lp0KA//hx0AM58vkMf41
=LA94
-----END PGP SIGNATURE-----

--MzA9B7sviDIYyupf6BsjJbNkNWIpqbOTX--


--===============1085807575632367288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1085807575632367288==--

