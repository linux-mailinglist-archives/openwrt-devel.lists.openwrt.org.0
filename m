Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA0BE0D97
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 23:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jekdLqnbqkV0Qh23EedZmadqIvlXFohUcDPBLvIilPo=; b=a5EGSmRS0m/LoT2nDL1Sk3HET
	AKSTjquRCsl68X7U7mqup3g9B5emAJQwxL1UU4igxCPOFkb2YYhDflx/LC/F6dwx2PA3/ouM5jnG2
	OTeCNFKs+bZgeiX+E4juxO0RLBCwRTzptKiMQpqMn38vyxX79tU0urd85Z+UNbCgDhmXbUXLPcPES
	G9gCLA4WDBot3WoJVUwetDS/KxIFoFdDCe7H1xXYsUKnXaAFsMQUWILAE4fr5KizZRSlUmrxN0aat
	Nh5xAcSGKCNeY5/ijdTE4W6r39oC48k8ybYGXCCvK48ulkh1TS+NXyzmrcyJqD7l/ZfHS2nJs4ops
	KQkDctuBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN1J8-0003NX-6p; Tue, 22 Oct 2019 21:03:10 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN1J0-0003N0-Ek
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 21:03:03 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue109
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MzQc2-1i9uGv2lH6-00vLvR; Tue, 22
 Oct 2019 23:02:57 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Andreas Ziegler'" <dev@andreas-ziegler.de>,
 <openwrt-devel@lists.openwrt.org>
References: <20191022204429.608380-1-dev@andreas-ziegler.de>
In-Reply-To: <20191022204429.608380-1-dev@andreas-ziegler.de>
Date: Tue, 22 Oct 2019 23:02:56 +0200
Message-ID: <002e01d5891c$14b5b540$3e211fc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQLLNwpautkagm05UpEM0GzGk7Jf96V7yQNg
X-Provags-ID: V03:K1:/WNCV03/D3ZBKYMRkKA60mBwQiUNq/In6VKf8j2Nq3A+YGSIncR
 6D36qMgF069zYqvk97mPryspOn7Iq86b8eQy9qIlpY3SEmP87OYnNU20j0vfGesVRvNcjoh
 HIr6KmlBvrzEbmcX6bD55FXs5qw1SnuxDwi5HhT5Gh9hsOXomdfpHIzjtN8VDj+xUcibVOC
 GiPQ5lXGETQDxsRuFAr5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xWTu5tl9kZc=:peaD1ZB2dAb/pxN7M/HNEn
 CNs3s1ZQLcu4FZ59eh32frmrkTTsrxgpinj1fxIDREjYgp6gYKkxRXhAzq7gHP3sAvsGOFL2t
 J53E5pMUvhW8YX5TKDCahYwK4g6s9uc9qiIhIvdYLJObLTXUknGHtdqiYoJDRmwWwlAlWtONh
 7FBbhdk/CFA56yH/id5gqlm255+Gji5ToPEgHsYG7w68YHGy6+m36cd3WnshhZZ0A2wXy5Sd5
 GWLxAPvZNtIcV23ugb62Xfm6t/BW2ncMIl1Wtq6uYCIJQDIOk3O7FRespzzWQbWhzR9MWA/4q
 NuUPBaRE6seUmoy3KRsTQWBsIjjy/18y/5IFhCC6XG86s2yAWj5hDNUDdIhBXaapd+mUMcejG
 OkID6E09CB38z+eBsi3iYDiXstjOzrG9NtQvdBTQMYc0d1Qlnw5KiAIlNwfZTWHBPRVkJN3Ev
 /DHbSHb50EMvFWbDBWcQ/dGGjlU88UUaH7I5pvC4M8ZFh1v5HS+GyLi1ymMsTRbfXz91zC22G
 Rz0ukuPGvYLC0KdPKPUpGx8GCiVdTlUKyKA7M6uE8nXSCTIG2MyqgNXCBTCF0Q4cy/PvmG3oY
 ntrKqzZVDEiQEDVPNQ3Xy9Y4VhaqymnBwXAEitWR0+/vP/0bx0GuBtHUzbN9KaAQjhmM8zfSU
 UN0j8itszCntsdungItF+RxWe0geszjK8EWriDBQ24gD4NBMaaoGr2UW0aGpG+IwhckZfRioN
 yN0oeaYV9TJNm3VZXfX8cPI5Daik7qgKh+wooB5TgH6NGT5+hVxoysYx4OF0UZGr4oQmp9aO0
 a5JGuV3hSmW56UBj6Tuyt6lg/1Dwc6/OfPRvMqBBTNaHMOJMkxZrBLeIRBKNh14kOOzBYP8Pz
 dSD6KkoxXlSpnoJ0RsR5UN2Nd2HxvFZ2bxxCYpFTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_140302_790940_12FA9BC9 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: add model detection for UniFi
 AC-LR
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
Content-Type: multipart/mixed; boundary="===============6300460273267096618=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6300460273267096618==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=o26W7RtukI5+Sb=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=o26W7RtukI5+Sb=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

> +define Device/ubnt_unifiac-lr
> +  $(Device/ubnt-unifiac-lite)
> +  DEVICE_TITLE :=3D Ubiquiti UniFi AC-LR
> +endef
> +TARGET_DEVICES +=3D ubnt_unifiac-lr
> +

Since this is ar71xx, where vendor_model scheme is not used at all, I would=
 prefer using "ubnt-unifiac-lr" for consistency.

Best

Adrian=20

--=-=o26W7RtukI5+Sb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2vbnsACgkQoNyKO7qx
AnCt2w/+MocdoZecIedh/9Cq3UgNPxqXNN+F0kTfjlolFoZx2YMf7eN8Net0jtI4
36KE/Lhuy6fBY4qvTi+H1vjkUtA/ts1wEpBcmNLim5q7XlcK9v2UKkEMriDB333M
5vdPhVr3dJxHpMdgGBDdgIGppwiMria3+SnNn4Zmb3xYGeJjAaIf8w/upmn2B9k4
m5i9DZObmF5iZKsbn61Ga0mnJbyZ1m04wBjjSA1EGMUTj//SBE/Bc8H7WBsBtng+
xZGOT+9OcBVcA9s/QAIDsk9CXjOxT5Obw5ArfLYTMd1sSSuMtnQFCAKS/rrJnC1G
Tq4vxllj7M1d2g0v0QB19YdSxCSFe3tbdnPH1F3Qr2Z+s9TaMtnpb/MI5Ji0fRda
l9ImPvmTdGBJ4fHgStY4JssN09jWzCLKRpS89ZZXi8vReZHG4HtIrgaTpyevkJaX
NHS2ck9E1m9H7rwBENKfWGIstl06pDQ5R29NwJDl3eXaRmxNURCy4xQBrR695VM+
v5oEm/I70TUg07g1dedyeRP9siqZ+7ArVXoljJWSrThqzellH6Z09P4vclJhz1wf
r/ScLPT3xj0DUyDZfiVKXGFj1RgQy7xvjFnXdOE4GcGK1+Bv2TloLrjXadiDepv5
M+B94T68Q+jyyLmyFm1W5JdsvEKjmyQ8cRTEhBTD8MT6iSeh6eM=
=QFWC
-----END PGP SIGNATURE-----


--=-=o26W7RtukI5+Sb=-=--



--===============6300460273267096618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6300460273267096618==--


