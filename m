Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A7912A1E5
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 15:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NSKmj/1foRfVYHCE3X46dLm6bV6WWn7zQHx7gU8C8QI=; b=R4y
	4FDtiG2ttDB+hkACg5dSXOfckIWMHdC3NJqwmZLdIcC/pBG/u0iiEU17yzT5fxu3SEGtIIj1vPTaJ
	xgyFtu8MnlqtLO6bEh1kDDv7Wd8C52uhGEX07Ffkp7YUoIDDmZO6y50wcuvYPx1p4E7YdthVfoVb0
	HDdXZ73OFLJh1gd1Pa/zTk7/U0J+mD9YbDZ4hD4TAUV0PoOWwvumXrBcnXGv6qFyLurT/TA9Q/TP6
	12qIh11nBrPw4GB97FeuPKWSuESgXqEYQ9WQhUCfDIjtkWPcv++PHQpABtjuoDuv225Z+gi9wXsef
	8E1nepcWMCm1jC1pf4aPidAyCuMTjRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijkmS-00074n-Vy; Tue, 24 Dec 2019 14:03:24 +0000
Received: from host.cas.cat ([51.68.173.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijkmM-00074M-2M
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 14:03:20 +0000
Received: from [192.168.40.50] (p.ddns.jazztel.es [37.133.181.30])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by host.cas.cat (Postfix) with ESMTPSA id 93B533E83D
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 15:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cas.cat; s=mail;
 t=1577196191; bh=GuhIvxWJcLoiulK9m/4QAVBjhDleypdVJCRFEq9mTWM=;
 h=To:From:Subject:Date:From;
 b=WLKT7xfnUp17MIuOdM6N11EJEuZ2SrUB+jX0pGswIwB0+ohLQbXtI7V0bD/FSf5Kr
 qMWVeDftwlzcsPulQpsm8U8lb8fV7/ojkOwmBJIy+Th9G7D3zgiBvrotxW0HoL9v1O
 OCLfmo3GEQHQTLMCau6E5k/F1Bh0k6L2RNCG8ydIVZNd0cqKQWq5qi2K+Ka6YGh3Zp
 UwHb+k1mIdZ21S8EnLBf1TwHmfsJVkfQUKNVDV5yqhqz9Z0CbgOTk/Xle9UDaKb4l2
 Flil9wchN3TkOMsYhkbC/b9Lg0vVINmsN2agJZvu+0j6XWlt6p9iO601pjYWfRub1b
 VSnSjDkzxTYxA==
To: openwrt-devel@lists.openwrt.org
From: Pedro <pedro@cas.cat>
Autocrypt: addr=pedro@cas.cat; keydata=
 mQENBFwTT0gBCACpCcJSv4ADrV8f6puGEXyGRxLdARePpMhY1LNQ4JmvDE4UGbkSHHp0A/SM
 wFnKvhkc9oPrIoqTIcgfRRzr1JtYTwU3lNGQCawmrBOt5PoyHxbzE1YCpTW2Kxs/tGaBOtfn
 CC6ic8Sj1MPiuyUvjnCpb8dABE2CmsEPVT+zSt0nSCmPbj2hHv6azs4wdjHhlZnnTTBbbnGU
 3atAoZHDZ0fESSxyfV92U0dTn0dYa8tWnnQuYNBDKu5UdB3hFdF61dmL+8yZqFcWwohlySvx
 HnuqKKW7/80Rplkbp5QQT/uBP4Cyad/DoCRuNLKdHTz0nsb86KqwOXQwCttLYbusVwhlABEB
 AAG0FXBlZHJvIDxwZWRyb0BjYXMuY2F0PokBVAQTAQgAPgIbLwULCQgHAgYVCAkKCwIEFgID
 AQIeAQIXgBYhBLAblhazwwE6Jn7qc51kWXw6mC3KBQJd2Zn9BQkDp341AAoJEJ1kWXw6mC3K
 Am8H/jGOPki2z37rA1iQck+sES/QsbFTUnBJIlXQDHJf30NQnokYDPgdfOMU5GdZUmt+CD7V
 pntrZKXnHSC/ANkul3XPxTxe8xKbqAgX/Whu9Edorr0yBq7OUkAhswE2vBaVehj7DgSbSkC5
 7HQUME55y2Gg9GkqWV1XBucf1kQElRPZ1jtwfB9jjCAULjRcNEsOVVT/ztJvSaCPQsUcVBfv
 LLna/aKnTWQJpNxCCKMfMK16dVksmZ9kfkg3hh5+0i79iYd7KfiL+j5XEqC4qdHfcAU1uLgT
 mZRM0OosoWpsPsuHUzqS5oafdwAHQ39KpfiK9tBqhH7FyUv5hZeHpnWm3SE=
Message-ID: <0f9883f5-598b-1a08-f4d9-d6dc9fc1ffaa@cas.cat>
Date: Tue, 24 Dec 2019 15:03:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_060318_843919_3A4821EA 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] petition: start an slightly frozen branch based on
 snapshot (future 20.x ? release)
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
Content-Type: multipart/mixed; boundary="===============7069895703223949025=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7069895703223949025==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2n9RwI1cvKvKW3DQUDkbHuIORJD6EWiC1"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--2n9RwI1cvKvKW3DQUDkbHuIORJD6EWiC1
Content-Type: multipart/mixed; boundary="7opKmID1qhW4Jd5F6rjEvrQom0QKgQsJK";
 protected-headers="v1"
From: Pedro <pedro@cas.cat>
To: openwrt-devel@lists.openwrt.org
Message-ID: <0f9883f5-598b-1a08-f4d9-d6dc9fc1ffaa@cas.cat>
Subject: petition: start an slightly frozen branch based on snapshot (future
 20.x ? release)

--7opKmID1qhW4Jd5F6rjEvrQom0QKgQsJK
Content-Type: multipart/mixed;
 boundary="------------51ED8E6114DA74913DC4E8B8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------51ED8E6114DA74913DC4E8B8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear List,

Most of the new devices that are coming, or that are useful for us as
community networks are in the snapshot release [1] [2] [3]. I feel the
new 19.07 is not benefiting this new devices that will remain
unsupported by a stable branch (most of them, based on ath10k / 802.11ac)=
=2E

We are between: (1) buying legacy devices (ath9k and 802.11n), for
example right now classic nanostation XW m5 is locked right now [4]),
(2) second hand devices or (3) buying new devices using ath10k and
802.11ac (using the wiki procedure still you can unlock them and install
openwrt)

Our use case requires stable releases because in a community network we
remotely upgrade firmwares. Based on previous experiences (releases 17,
18) it worked perfectly. I don't feel good introducing the usage of
snapshot for building our firmwares (image builder and so on). In that
circumstances, I think we prefer known bugs that new bugs approaching.

I thought of having my custom patches on top of 19.07 branch. Maybe
someone is already doing it. I'm sure more people have this need.

I don't feel confortable leading that proposed frozen branch that could
help as a pre-work/alpha for future 20.x openwrt release.

Anyone in the same situation?

But maybe is too much effort and we should continue focusing on the plan
right now (get 19.07 release done)

Cheers,
Pedro

[1] https://openwrt.org/toh/ubiquiti/ubiquiti_nanostation_ac_loco
[2] https://openwrt.org/toh/hwdata/ubiquiti/ubiquiti_liteap_ac_lap-120
[3] v2 and v3 https://openwrt.org/toh/tp-link/cpe510
[4]
https://forum.openwrt.org/t/hw-of-ubiquiti-nanostation-m5-has-changed/392=
25

--------------51ED8E6114DA74913DC4E8B8
Content-Type: application/pgp-keys;
 name="0x9D64597C3A982DCA.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="0x9D64597C3A982DCA.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQENBFwTT0gBCACpCcJSv4ADrV8f6puGEXyGRxLdARePpMhY1LNQ4JmvDE4UGbkS
HHp0A/SMwFnKvhkc9oPrIoqTIcgfRRzr1JtYTwU3lNGQCawmrBOt5PoyHxbzE1YC
pTW2Kxs/tGaBOtfnCC6ic8Sj1MPiuyUvjnCpb8dABE2CmsEPVT+zSt0nSCmPbj2h
Hv6azs4wdjHhlZnnTTBbbnGU3atAoZHDZ0fESSxyfV92U0dTn0dYa8tWnnQuYNBD
Ku5UdB3hFdF61dmL+8yZqFcWwohlySvxHnuqKKW7/80Rplkbp5QQT/uBP4Cyad/D
oCRuNLKdHTz0nsb86KqwOXQwCttLYbusVwhlABEBAAG0FXBlZHJvIDxwZWRyb0Bj
YXMuY2F0PokBVAQTAQgAPgIbLwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgBYhBLAb
lhazwwE6Jn7qc51kWXw6mC3KBQJd2Zn9BQkDp341AAoJEJ1kWXw6mC3KAm8H/jGO
Pki2z37rA1iQck+sES/QsbFTUnBJIlXQDHJf30NQnokYDPgdfOMU5GdZUmt+CD7V
pntrZKXnHSC/ANkul3XPxTxe8xKbqAgX/Whu9Edorr0yBq7OUkAhswE2vBaVehj7
DgSbSkC57HQUME55y2Gg9GkqWV1XBucf1kQElRPZ1jtwfB9jjCAULjRcNEsOVVT/
ztJvSaCPQsUcVBfvLLna/aKnTWQJpNxCCKMfMK16dVksmZ9kfkg3hh5+0i79iYd7
KfiL+j5XEqC4qdHfcAU1uLgTmZRM0OosoWpsPsuHUzqS5oafdwAHQ39KpfiK9tBq
hH7FyUv5hZeHpnWm3SE=3D
=3DPJ6r
-----END PGP PUBLIC KEY BLOCK-----

--------------51ED8E6114DA74913DC4E8B8--

--7opKmID1qhW4Jd5F6rjEvrQom0QKgQsJK--

--2n9RwI1cvKvKW3DQUDkbHuIORJD6EWiC1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEsBuWFrPDATomfupznWRZfDqYLcoFAl4CGp4ACgkQnWRZfDqY
LcqgtAf9F+wC5mTAuO5AYsqseApFAjSmTTzqXqNli4pM/k7xg5HasMzoX+orucOd
kKAjAntKlQ6GrKJcpnO+6dYBfGGZoRc5578I/3qK1bclKPwLKR1TTtaF8lU8U4SE
jKRZ0f6n74yr7+QzfdGHkWYTFYIOleicJlpLKbfR9YtFphXWrZ/J3Xv3Ako61wlu
UFCvc3YWA9zNrNuZ2Che7K1zJXMbEawO3NYrKN6K+b4CkCCcV9RuVdmOrz9FW6/S
OvjQeJOM4ARNVkp3F1PHvd+qEXPo3pO2rGushV4sIk+ocvQhRNpws3ghLbYYxMvL
5tadHx4MnLMgFe+sFNuHWmgdBDiYGg==
=1VqU
-----END PGP SIGNATURE-----

--2n9RwI1cvKvKW3DQUDkbHuIORJD6EWiC1--


--===============7069895703223949025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7069895703223949025==--

