Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B02DDA71A
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 10:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j4aQJHs1Cv427A0k1ko1P4OSfZDrXF6Edl5YZ0j33jg=; b=Wu0v6tYKqAFWX/zEI/4PRbrdN
	7RsANbMm35991JjLCD7AkKagGCdhJbI/ovNkK3FSPlkydHXbRuRy9Q6u8eXwzVlCbSH3LYaWXy1+S
	A6IZoh286lxsATuG+wINS60c2YrWc6JRdRF4AuoMYP9DP/lyfmoG4KEw8t2aIeqy6NIxELd+DqvBS
	JwVIfFaZPzCd5Yc0y69n28jNV4wlLb/qIzvIoZ8BDbZn6cd9OfNIlI/pFPBSvwzFakPNa43E4h7Du
	3/tzY5wzuC5cxAp57g8CZn7KwO3lv1nidiudYQxZSI8npahtv1YJoLjlzyjKDR0mvooxV+6qEs0RT
	hPP300dPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL10L-0005cv-JS; Thu, 17 Oct 2019 08:19:29 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL10A-0005cY-8x
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 08:19:20 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 3E7C652A63; Thu, 17 Oct 2019 10:14:19 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id E487F521E0
 for <openwrt-devel@lists.openwrt.org>; Thu, 17 Oct 2019 10:14:17 +0200 (CEST)
Received: (qmail 60797 invoked from network); 17 Oct 2019 10:13:47 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.41.79)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 17 Oct 2019 10:13:47 +0200
To: openwrt-devel@lists.openwrt.org
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 yxsOKc06fSVm
Message-ID: <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
Date: Thu, 17 Oct 2019 10:13:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011918_474640_CDCCE8EE 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: multipart/mixed; boundary="===============2169931472350618676=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2169931472350618676==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="xFSQD9qvr6YYjKWip57tL2iqbzuCc6k8Z"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--xFSQD9qvr6YYjKWip57tL2iqbzuCc6k8Z
Content-Type: multipart/mixed; boundary="F1l4wGN045cr8jc6ZTP3lCOBgEVPEiYhn";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <f5a36ecd-123a-dcfc-a923-42e3d10e0645@wwsnet.net>
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
In-Reply-To: <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>

--F1l4wGN045cr8jc6ZTP3lCOBgEVPEiYhn
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

further blockers:

* opkg, under some circumstances fails to install
  local packages:

root@mir3g:~# opkg install ./rpcd_2019-09-01-821045f6-3_x86_64.ipk
Installing rpcd (2019-09-21-95f0973c-1) to root...
Collected errors:
 * opkg_download_pkg: Package rpcd is not available from any configured s=
rc.
 * opkg_install_pkg: Failed to download rpcd. Perhaps you need to run
'opkg update'?
 * opkg_install_cmd: Cannot install package rpcd.
root@mir3g:~#

* sysupgrade on ath79 is broken since the test image
  procedure modifies the image:

root@gateway:/tmp# cp
openwrt-ath79-generic-tplink_archer-c7-v5-squashfs-sysupgrade.bin meh.bin=


root@gateway:/tmp# ubus call system validate_firmware_image
'{"path":"/tmp/meh.bin"}'
{
        "tests": {
                "fwtool_signature": true,
                "fwtool_device_match": true
        },
        "valid": true,
        "forceable": true,
        "allow_backup": true
}

root@gateway:/tmp# ubus call system validate_firmware_image
'{"path":"/tmp/meh.bin"}'
{
        "tests": {
                "fwtool_signature": true,
                "fwtool_device_match": false
        },
        "valid": false,
        "forceable": true,
        "allow_backup": true
}

* rpcd leaks memory

~ Jo


--F1l4wGN045cr8jc6ZTP3lCOBgEVPEiYhn--

--xFSQD9qvr6YYjKWip57tL2iqbzuCc6k8Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl2oIrsACgkQQuLLvzou
ZtP16xAAwt0lglPMIvwq71r8/QqTSHhUKYnjmKIf9v9YfS0yTeHlYAQySADFhX0a
hGLwMequN1CH0K33K1k4gRMWSKPntKmk3Hjg5A3wEQftKEG3eUFUJhU+T5eIcbpH
F3j5BWcyylXZAN6F5Blyhf57AOZSI6PjYFftZhhvASxP202E76PQTyukkX9lgE97
/Z+uVgs0WKjOWzmPPkiH5mf6PuPZC3sIuThGG6NzgDuqlrQi0qiAN4ZLSDB8/A6S
XWZRgesin6OfNAufe6MI7ptCLoRwDieKUS8vUdKZKFUyakrPLaOfP+Y9qWsc6VQx
OubdFblRiS2vskYVPW2tEUINuchzGSSC/OuA7Xr3rKwgPku34dG0JSi2K1a49+Bm
7BgIWVfog9ngMHQ1o2XDyB/vDFpMaZjTM5jQsm0GM/T+FuYBtIpVU3/vENzPBw7j
7Qcim1Z9fyOWO76OPT4SeXXoYsmq+/rTkLujtQfMcLRXkflt+KDR/JEMJNyf3gxz
0RkspjLxGvNjm48tj91Fjyv/6txT8du8W7Xptr7uS9qWWRkT65xd1uWolTGJEGIB
ETnb1l6zD8QKqe6pPYNAMJRgNwYCjVwa1yg3H6JRb/q9b9LTk0ia+zMaNHUdfmCt
9d+nQ6c2S64YQrGbbSQDF4meu7P7BBLk+ROjuYsWuu9jump2XAA=
=xR5d
-----END PGP SIGNATURE-----

--xFSQD9qvr6YYjKWip57tL2iqbzuCc6k8Z--


--===============2169931472350618676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2169931472350618676==--

