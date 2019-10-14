Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325BCD62D4
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zFayre5R9Fk89JHUhRNIgvaFaK2kIvhIS7HQigVDlTM=; b=C6kd25P38ecRE0wDyItQvs1I6
	bip7jwIslqk7+4Nzlxe98W4pPqceIy92aTYCWj6rRajF1Gmlni/fQtEK4msfbm111zXrPdpcY9kyO
	mbEYSqQKHlaXI5TejH2cQ188hjVwTrX3VDkiCBWrPhV827UJwJpxaNflhYHapebM3or6PdBrbUBLM
	FsmafK2sArgGYjasnxWa0cSRBxs2b1K8iJeI9jY4ruWNAmg1ZyQP6KAU6CJ1YbDDfrO+DYeRQjxjD
	9x1WV2/p0r+TgdkNlGrFpKB1sooTz8R5wmKr0dChBnWvjRtTTgE7tvpwVegSwPlEjPIt1kGMPGrZF
	U/LlGaS9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzfk-0003Ra-Bc; Mon, 14 Oct 2019 12:42:00 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzcw-0008P4-Au
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:39:12 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MrhLw-1hfPbm2r3s-00nhZf; Mon, 14
 Oct 2019 14:39:02 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20191012133438.4041-1-tomek_n@o2.pl>
In-Reply-To: <20191012133438.4041-1-tomek_n@o2.pl>
Date: Mon, 14 Oct 2019 14:39:02 +0200
Message-ID: <00c001d5828c$5bf06090$13d121b0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHrmjeX2yke1X2AQYWfXIseoz5gsKct4h6w
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:l5Ed/eXp+1WS8ql79sUmuDj3aXHcUkJKbXK0QWX2GMydatTh0wa
 j+CAjScpPaLgD4UQfdXTKhSsqoGZieIoJz7l8O11i4XG08qyW5ukQOzfdAA8eqh/voHPxFx
 +E/bVv0giBrzj3aLq9tgE5S3YIL2VKh+Pte2O6s1FK2Kyj1nJt7UMWQX2lfp3xT3uZvfHDj
 4kuoQDaToXG0xB7c0zuMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xkm+K7LMx1o=:1XafMtsaQ4DWyzppCvy19X
 D/a4F9h0FYcCO84faI+Rz9MlpLeJllSveoDUUawMa8y0ASnSID8yis2C1vNwq2T2a9MVM5bGV
 lunlMmVd0zm4YfOBppvdhG/7n0Fs/49qAG2Fetusay2WDB2iLgTFQwt0OZtsVettm44FCYlAQ
 P7LC70nmrfrm54ahQHo2lvVKv63MfAYEeXS3Yowbke2xtnR1dBCIvoxH7rlDDf5WgDhFbFNrx
 eaJ3dIYE3zF39U2nwx/qLc1QohcJWjeG4frfNqFwkVombMaVUBZWn7t/pTcNb/uP52WkW6cqC
 ui4vDzzAz8rRXKCw9O/VcvN4HnTN2pHsQB9xW2FBfbXWlB6NplxpaoiRhPKgmxkjI9uBP0Qbc
 bbSW5Wv0hvFj6Qz5hDjenb0m9EIxd+L3m4RhAk3xfUbZkNIJN2p9wgHHiClfezhAEjmIPjHRr
 fdE7rPY+l3ArECP8ur5WSIYJWb+Rg7mfbxjk8wnC/1kxeEw0Jy0kfTdpSOup6HZ4JAlYR+0gu
 oyo8O/1f3O5JQbxZF4nCjHLvN5QivjHefkh3l5F9hhsHRMlt6KRzNZlE9ciwdUIFvJWkrW+Lh
 ByWQToruoxBx6C5Oypnf+zoirjWCr9ZVJHEvPbbh5dDuXaikvaYWOeZqWg8/qaGgGBUfNDC85
 xKICoMMcmvTxaUOsn4zp7+DU1IbgYpJy8sKkw/Cm4Vwczj9XGL6z45LK998Sy8P2lV6o+5VIF
 0RkDgAlPVmTcquoTQPAfUCCPJvUcZqFibRegpHCEuGAdcrFx7q+Ln88Gxqo50/TGnBRMFxxGs
 5Ix5jR+ZJTyCvOVh5KSMdLjd8LPpXM5nEf7/eTlj7FDCyByW9hNRSBrj3Y0d7f4oR35hyrZsw
 Kwy1hKDIRHWA/UsrCY9BDzoock7fzlIiz0kJ3cMEw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053906_743746_187F5274 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Sitecom WLR-7100
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
Content-Type: multipart/mixed; boundary="===============7307633335817334250=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7307633335817334250==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=eZOv6/wU0d1lcQ=-="

This is a multipart message in MIME format.

--=-=eZOv6/wU0d1lcQ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> diff --git a/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts b/target/=
linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
> new file mode 100644
> index 0000000000..8a70b597b0
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts

You are using ar1022 here, but do not reference it in the compatible or pro=
vide a comment about it in the commit message.

> +			uenv: partition@30000 {

You are not using the "uenv" label anywhere, so remove it.

> +define Device/sitecom_wlr-7100
> +  ATH_SOC :=3D ar1022
> +  DEVICE_VENDOR :=3D Sitecom
> +  DEVICE_MODEL :=3D WLR-7100
> +  DEVICE_VARIANT :=3D v1 002

What's the meaning of the "002"?
If you have a variant "v1", you should include it in the device name, i.e. =
use sitecom_wlr-7100-v1 instead of sitecom_wlr-7100 etc.

This will help users and developers when a v2 shows up.

You can account for the alternate (marketing) name here with:

DEVICE_ALT0_VENDOR :=3D Sitecom
DEVICE_ALT0_MODEL :=3D X7 AC1200

> +  DEVICE_PACKAGES :=3D ath10k-firmware-qca988x kmod-ath10k kmod-usb2

Since 2018 OpenWrt uses -ct drivers by default. Please test and change to t=
hose.

Best

Adrian=20

--=-=eZOv6/wU0d1lcQ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2kbGMACgkQoNyKO7qx
AnC2NBAAzyIsem8BDbwjo9ewNLYrEIon9UHb8NbIw0fdJkarg7GV7p76unqRdFft
EDRo8eIy2AU5++bJ3hHR2JC8an8FqQAsczqJ8qNBL1kVT7OcrQEd9XAMXsKkz+gJ
G7nMh8eeIkD+XpgjCnct+jRwVVoX2FscFdcoThRxAW/OPBAvKPkJhNZE9DqRzBnb
nMLvQ/2MTsD7Q5Rfsgstp+LbnbGajD6ss4vNb6P26765zgMfPKE55qLGYPAgtrbo
xBTjDeahBuWeJ30BEBWhPAQBOMTrWzCw8NeeYkDfcOVnevoXgGT0db0Ewy8siNsQ
/GFQViJ+wEMgdNkWF2Yqi2oN4QP+l4irF+xZyqOaMR4qYW0Fdg3/hl/8DJAdXh1S
vh/kLWxO4VCBUCg+OnWv1mpbrG+mPc9jRRgf6cH6Pt7/YMAGhVhuyRP1RPDaD5m5
QYBYGmdai5kMeTlujGTrLhtxzCdAm2ehjZBOyrfbspenFxJbagUCIYhTc/QBAOyB
blgMOaQw3gOax4HNxmvI8UZ+jVhExzWRv7RqX9lwZs/gULn71XTkCgMHSyefLQ/A
vblNB6VvV0+fo3R7ZAlsgLraHbplXYFG7jb/rNvi2Hvl3gqA5lHXpl4C3pDmhvTJ
Ybi4WDzwRA3ggMRgdDdjWBhO4hcGb/Yj4iiic7s8dsiValsRwR8=
=Digu
-----END PGP SIGNATURE-----


--=-=eZOv6/wU0d1lcQ=-=--



--===============7307633335817334250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7307633335817334250==--


