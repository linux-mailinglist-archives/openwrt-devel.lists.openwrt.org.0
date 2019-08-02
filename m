Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF58B7FCC7
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 16:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GlYYIC14AbA4fdo4eVKbGzNUZjeOPtIxwSE4dOcdtw8=; b=TId4+MZFoMl0Sa8AlojuUNUJA
	HAL0SBMT7Ilgjm39gQNI/u0+pIRz/KuKz80iFGTwUi5lP50uxfZ3nqwHN9VwsPSdxI+pDSjgmk+T2
	BTuWGvcqVWp/U3qJ7znlc0BPONhLs4h9LTdB3mL8jKipQtB5BAHrF5XUyx2U/dWFQGwxCGnj4JHRB
	dczNwjcxP5J35LhdJZKfONSj130CPVHafMzWDyKpvxP5Ra9w2NdrmJvODhFmUsd8vm96CAhT+CN6x
	jxwkk/kJkGZVTUiYWCADfnhUwhHxmdtx2AOZtofkCNAwmYxGNXJbSlyj6DEYQ40IDA/s4ZcjvNoAG
	UakeSZqQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYuz-0005NF-5y; Fri, 02 Aug 2019 14:52:29 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYtN-000332-Sm
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 14:50:53 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MuDHR-1iCacA3y3x-00uXSh
 for
 <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 16:50:43 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
Date: Fri, 2 Aug 2019 16:50:43 +0200
Message-ID: <012d01d54941$a94d6060$fbe82120$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJBfM1NZ79tOwTjV9JMAWTB41mHwKYPiYqQ
X-Provags-ID: V03:K1:WYK4la2WoOgzQBU9PpVEE8b+7GEiOa+0AVm3RLdQnND958/l8sP
 2/p6aVKn8Thl13F02o5MFRpw/HmjBZ2srTe2wA0yMAasZlMpKj6p1uo0Z8wazV70B3Z4JVD
 /9339QP7Xh0F9ldJQzUpqIORLUz5ASIEkyvHdEos/sotq+hN19EjPZuW6bUtxz8MI+ku7uw
 4D87AkVySZkroacxuZ+aw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rRaHKR8dIjQ=:tIGbAbfF5QlAi+iu6WuzRZ
 eiAzQxC2DBzSyfxUc3do599NJW9M1GIV57VeybCZ0U9Beep8hjieeS54sDvPke24HiZ7Z7Gny
 u3AnRaijhHzr3t/f1lKxuzvV9LzCLcMBDc2UXiq8R9O5267iHRMDW+rkRlJBFIC8RllvzlwSb
 Y0YVLPOVlr6b1PvqITP78lk4VKomW+69S1cJnSLR5ANdu/XoKrwUjNIkNrOzDZiemzx/saD9x
 5tSJQsCX2GsLvZJw2f29SGamjBZUqR6s+56wTmGycpdni0SQ6m8dtkpfO8OZ0Vl5JLDBDjdPl
 45qmOyEhMzV97quXLLnfDPrsxhUzZrzU/X/cYjKTAgL8Kz3nRdBYrM94BB+XlcRhc/9YbcEn7
 OjGPVbZKilqy9POjXrSmyatDUYy2UIotEy3ljBFSXkS3gnD2bFNCzLOMbnwSbre8LcEvvg9Um
 uZhkp/jZYIDWy7pggCB9gxCvmixXx7t6vPw4mNrMGtV3V/NUKi/b+e87wLl2HsnN38BegLMwA
 b+fRLGfjEO1zU3xKFywv0eSUt3+9tWf85BZZyURie0+HutfqNDYkHhIPTJ3hg5cm5iOmaIuDN
 r6Qpj2s91jideNkrlfcpQXSif75x1xc6JEPtNw6jwoxpURy5ysTlE7qeoPjkJXXH5UOFQvXP5
 tiDpskaWV0nKOS4ik/6s4kRqbyS2pf9Sba0Z5afI5y7LMQzXJbbzfULKfIXOSexYFzHoEMf+o
 BsFtDljzJOWj+jc75dKkTq9fhxjtm5PZN0o55dXb7w3DMQaHymy6tT3rtBI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_075050_567984_83CC18C0 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Content-Type: multipart/mixed; boundary="===============1348431202526985054=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1348431202526985054==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	boundary="=-=/JextOjsohegdL=-=";
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=/JextOjsohegdL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Anything speaking against doing the same for ramips mt7620a, mt7621, mt7628?

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Adrian Schmutzler
> Sent: Freitag, 2. August 2019 16:46
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ath79: convert devices to interrupt-driv=
en
> gpio-keys
>=20
> This converts all remaining devices to use interrupt-driven
> gpio-keys compatible instead of gpio-keys-polled.
> The poll-interval is removed.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>  target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts         | 3 +--
>  target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts      | 3 +--
>  target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts           | 3 +--
>  target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts             | 3 +--
>  target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi        | 3 +--
>  target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts          | 3 +--
>  target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi         | 3 +--
>  target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi       | 3 +--
>  target/linux/ath79/dts/ar7241_tplink.dtsi                    | 3 +--
>  target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts        | 3 +--
>  target/linux/ath79/dts/ar7241_ubnt_unifi.dts                 | 4 ++--
>  target/linux/ath79/dts/ar7241_ubnt_xm.dtsi                   | 4 ++--
>  target/linux/ath79/dts/ar7242_avm_fritz300e.dts              | 3 +--
>  target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi           | 3 +--
>  target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts  | 3 +--
>  target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts        | 3 +--
>  target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts            | 3 +--
>  target/linux/ath79/dts/ar9330_pqi_air-pen.dts                | 3 +--
>  target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts     | 3 +--
>  target/linux/ath79/dts/ar9331_etactica_eg200.dts             | 3 +--
>  target/linux/ath79/dts/ar9331_pisen_wmm003n.dts              | 3 +--
>  target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts        | 3 +--
>  target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi | 3 +--
>  target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts        | 3 +--
>  target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi      | 3 +--
>  target/linux/ath79/dts/ar9341_pcs_cr3000.dts                 | 3 +--
>  target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts         | 3 +--
>  target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts        | 3 +--
>  target/linux/ath79/dts/ar9342_iodata_etg3-r.dts              | 3 +--
>  target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts        | 3 +--
>  target/linux/ath79/dts/ar9344_ocedo_raccoon.dts              | 3 +--
>  target/linux/ath79/dts/ar9344_pcs_cap324.dts                 | 3 +--
>  target/linux/ath79/dts/ar9344_pcs_cr5000.dts                 | 3 +--
>  target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi         | 3 +--
>  target/linux/ath79/dts/ar9344_winchannel_wb2000.dts          | 3 +--
>  target/linux/ath79/dts/qca9531_comfast_cf-e5.dts             | 3 +--
>  target/linux/ath79/dts/qca9531_engenius_ews511ap.dts         | 3 +--
>  target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi         | 4 ++--
>  target/linux/ath79/dts/qca9531_glinet_gl-x750.dts            | 3 +--
>  target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts       | 3 +--
>  target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi            | 3 +--
>  target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts         | 3 +--
>  target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi         | 3 +--
>  target/linux/ath79/dts/qca9558_engenius_epg5000.dts          | 3 +--
>  target/linux/ath79/dts/qca9558_ocedo_koala.dts               | 3 +--
>  target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts       | 3 +--
>  target/linux/ath79/dts/qca9561_avm_fritz4020.dts             | 3 +--
>  target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi        | 3 +--
>  target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts       | 3 +--
>  target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts          | 3 +--
>  target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts          | 4 ++--
>  target/linux/ath79/dts/qca9563_phicomm_k2t.dts               | 3 +--
>  52 files changed, 56 insertions(+), 104 deletions(-)
>=20
> diff --git a/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
> b/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
> index 5ad8196a15..64f471649e 100644
> --- a/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
> +++ b/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
> @@ -55,8 +55,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		eco {
>  			label =3D "eco";
> diff --git a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> index df22eb8dc4..f51bc0f771 100644
> --- a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> +++ b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
> @@ -81,8 +81,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
> diff --git a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> index da19921973..87ad6e914c 100644
> --- a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> +++ b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
> @@ -81,8 +81,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
> b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
> index 76f140fa55..8cd1268fd8 100644
> --- a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
> +++ b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
> @@ -53,8 +53,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		sw1 {
>  			label =3D "sw1";
> diff --git a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> index 6e4361f10f..f21ffecc05 100644
> --- a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> +++ b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
> @@ -35,8 +35,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps {
>  			label =3D "sw4";
> diff --git a/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
> b/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
> index 042219b234..fcd17b8d13 100644
> --- a/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
> +++ b/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
> @@ -17,8 +17,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		router_on {
>  			label =3D "router_on";
> diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
> b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
> index 8e934429a3..7b5f0ca70b 100644
> --- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
> +++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
> @@ -15,8 +15,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
> b/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
> index b7db74d937..c4e10d9729 100644
> --- a/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
> +++ b/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
> @@ -14,8 +14,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar7241_tplink.dtsi
> b/target/linux/ath79/dts/ar7241_tplink.dtsi
> index fa6ba71925..1433d7c6a1 100644
> --- a/target/linux/ath79/dts/ar7241_tplink.dtsi
> +++ b/target/linux/ath79/dts/ar7241_tplink.dtsi
> @@ -14,8 +14,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
> b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
> index 282446b1e1..bf11340a67 100644
> --- a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
> +++ b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
> @@ -18,8 +18,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		rfkill {
>  			label =3D "rfkill";
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
> b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
> index 27aec88cca..b8228c8982 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
> +++ b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
> @@ -24,8 +24,8 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
> +
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
>  			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> index 5466575229..5aa05c00cf 100644
> --- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> +++ b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
> @@ -16,8 +16,8 @@
>  	};
>  */
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
> +
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
>  			gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
> diff --git a/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
> b/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
> index 3621714d9d..acda2213ee 100644
> --- a/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
> +++ b/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
> @@ -18,8 +18,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps {
>  			label =3D "wps";
> diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
> b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
> index 70ce41b84d..3b5a4dd13d 100644
> --- a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
> +++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
> @@ -20,8 +20,7 @@
>  	};
>=20
>  	keys: keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		usb {
>  			label =3D "usb";
> diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
> b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
> index 97bfd0f842..8ac4df2194 100644
> --- a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
> +++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
> @@ -23,8 +23,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
> b/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
> index c42207e6cf..7a7790c1cb 100644
> --- a/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
> +++ b/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
> @@ -28,8 +28,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
> b/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
> index 76f6e80236..92f900f305 100644
> --- a/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
> +++ b/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
> @@ -38,8 +38,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		manual {
>  			label =3D "manual";
> diff --git a/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
> b/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
> index 06f728b267..ffb28c7417 100644
> --- a/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
> +++ b/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
> @@ -33,8 +33,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps {
>  			label =3D "wps";
> diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> index d0e0169f1b..311a506b5d 100644
> --- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> +++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
> @@ -28,8 +28,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps {
>  			label =3D "wps";
> diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> index d18a239d32..721e676ed7 100644
> --- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> +++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
> @@ -15,8 +15,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <50>;
> +		compatible =3D "gpio-keys";
>=20
>  		restore {
>  			linux,code =3D <KEY_WPS_BUTTON>;
> diff --git a/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
> b/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
> index b3bc2e4c45..6fb11545ad 100644
> --- a/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
> +++ b/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
> b/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
> index ebf4d4485f..a970d9920f 100644
> --- a/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
> +++ b/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
> @@ -40,8 +40,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
> b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
> index ffd3d71a62..f395d82e93 100644
> --- a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
> +++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
> @@ -16,8 +16,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
> b/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
> index 056e9fa512..9a57ae82d9 100644
> --- a/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
> +++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
> b/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
> index e4b59f1591..1b763153a8 100644
> --- a/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
> +++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> index 9a0b084a72..79611a687d 100644
> --- a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> +++ b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
> diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
> b/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
> index ec89be5318..3f47cd35c1 100644
> --- a/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
> +++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
> diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
> b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
> index c7a251cbf1..4d223c915a 100644
> --- a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
> +++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
> diff --git a/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
> b/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
> index bd2489aa28..5daa06711b 100644
> --- a/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
> +++ b/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
> @@ -33,8 +33,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
> b/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
> index b0fdce77a6..632f5962db 100644
> --- a/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
> +++ b/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
> @@ -61,8 +61,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> index 812da3dea5..9e3177acae 100644
> --- a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> +++ b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
> @@ -53,8 +53,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
> diff --git a/target/linux/ath79/dts/ar9344_pcs_cap324.dts
> b/target/linux/ath79/dts/ar9344_pcs_cap324.dts
> index 7a211e9088..390beebab5 100644
> --- a/target/linux/ath79/dts/ar9344_pcs_cap324.dts
> +++ b/target/linux/ath79/dts/ar9344_pcs_cap324.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
> diff --git a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> index 0b4a0ea374..211e339f30 100644
> --- a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> +++ b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
> @@ -19,8 +19,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
> diff --git a/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
> b/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
> index 6be197c0cf..b600b1f6e0 100644
> --- a/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
> +++ b/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
> @@ -59,8 +59,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
> diff --git a/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
> b/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
> index 6895a22e12..4ee3ace829 100644
> --- a/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
> +++ b/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
> @@ -59,8 +59,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <50>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
> diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
> b/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
> index c181b32aa6..a71f333fa6 100644
> --- a/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
> +++ b/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
> @@ -11,8 +11,7 @@
>  	model =3D "COMFAST CF-E5/E7";
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		button0 {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
> b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
> index 4e0ae73d0d..2ece81e0c9 100644
> --- a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
> +++ b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
> @@ -11,9 +11,8 @@
>  	model =3D "EnGenius EWS511AP";
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> +		compatible =3D "gpio-keys";
>=20
> -		poll-interval =3D <20>;
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
>=20
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> index 8b127ed1d8..4e5428b4c1 100644
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
> @@ -14,8 +14,8 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
> +
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
>=20
> diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> index ddaf7709b7..de28f6c3f0 100644
> --- a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> +++ b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
> @@ -11,9 +11,8 @@
>  	model =3D "GL.iNet GL-X750";
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> +		compatible =3D "gpio-keys";
>=20
> -		poll-interval =3D <20>;
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
>=20
> diff --git a/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
> b/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
> index 4bada93452..d6eef42f3f 100644
> --- a/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
> +++ b/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
> @@ -65,8 +65,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
> b/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
> index f86ff30fc7..5f15cae7a0 100644
> --- a/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
> +++ b/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
> @@ -48,8 +48,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset_button {
>  			label =3D "Reset button";
> diff --git a/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
> b/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
> index 995ecb3b73..fc5df53fa9 100644
> --- a/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
> +++ b/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
> @@ -47,8 +47,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
> b/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
> index 86b97437ea..0f7838fd56 100644
> --- a/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
> +++ b/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
> @@ -51,8 +51,7 @@
>  	};
>=20
>  	keys: keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		eco {
>  			label =3D "eco";
> diff --git a/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
> b/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
> index 6179150fdb..9545a85d62 100644
> --- a/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
> +++ b/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
> @@ -54,8 +54,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> index a80155b08c..b5899b6b16 100644
> --- a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> +++ b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
> @@ -49,8 +49,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> index b6dc43fbfc..7d7433d44e 100644
> --- a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> +++ b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> @@ -42,8 +42,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		button0 {
>  			label =3D "reset";
> diff --git a/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
> b/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
> index e98d6688d1..5a850c7064 100644
> --- a/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
> +++ b/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
> @@ -84,8 +84,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps_button {
>  			label =3D "WPS button";
> diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
> b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
> index 6d32fa3fc4..75777149a5 100644
> --- a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
> +++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
> @@ -33,8 +33,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps_button {
>  			label =3D "WPS button";
> diff --git a/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
> b/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
> index 8b8818c82f..e4c737b8ff 100644
> --- a/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
> +++ b/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
> @@ -22,8 +22,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <100>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			label =3D "Reset button";
> diff --git a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
> b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
> index 8bd9067afa..a17d9f263a 100644
> --- a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
> +++ b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
> @@ -47,8 +47,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		wps {
>  			linux,code =3D <KEY_RESTART>;
> diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> index 0145a24fba..24198e8043 100644
> --- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> +++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
> @@ -22,8 +22,8 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
> +
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&jtag_disable_pins>;
>=20
> diff --git a/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
> b/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
> index d819a76fd2..cb5c01b01c 100644
> --- a/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
> +++ b/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
> @@ -41,8 +41,7 @@
>  	};
>=20
>  	keys {
> -		compatible =3D "gpio-keys-polled";
> -		poll-interval =3D <20>;
> +		compatible =3D "gpio-keys";
>=20
>  		reset {
>  			linux,code =3D <KEY_RESTART>;
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=/JextOjsohegdL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1ETb4ACgkQoNyKO7qx
AnCKNw/+Po83/HIIkgQuUmOwpa8K0073xRWFvO0sagS1NaCBnX2+//6Zgq3bAxlG
UPda5VWzevHVH/8wXUe/U7cpv7oKSAOamXg3kaQpBpZXDL6tUmXpOXlLI63nWeVc
/zgd0dbtzkomvMH/oGVii6NfbU/w5ulOC5G/qp3td1qCVdLyxAS3weFi6SG7A3av
qM7T9lfG6UuIxD9X5sac2lKK0hSrMIWsgjdJkfXp85L8PMAh7+u2a7jFAs5NRAHj
5BQs03L4Jj2g3aerpG4CzsZVPsYilImwV/E+Og7m21RBrlSoriQvP+kUR2oM2REj
cA+1puLY4M1unza1FQ0sgzDw3ATiIJB9Cahd8CRrK9d2xsaH0NUcUGA0HymR4+OQ
Jb87bjP96nVftyIHwH1J9rz6OrzIeuEPlfjoh7jFtrMHinO4nd6T5HHBslMg4CnB
w4ArpMVbbd6ZkcCYzRbJZ//DZQqT/QUK8qjx3Giv0qEYUmObriiGTDW9aHoisDS0
psM1gyA2hejTJJRxNJhhMNQIfIrOgO/0+KZQBNpTpKNLYiOE5gzXKrBeNZMSxy08
MvQDtzcRYXB4BDvDYH+/MHlufxM3jLLk0VxB8JNTYQNhUEUQ97gavSDbR5lrzkSS
zmDOuYvtLiIG1tzBYjHBp3kkOEcrXQxl7dUmUP2nB4HJ6MX4Ab8=
=HZWc
-----END PGP SIGNATURE-----


--=-=/JextOjsohegdL=-=--



--===============1348431202526985054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1348431202526985054==--


