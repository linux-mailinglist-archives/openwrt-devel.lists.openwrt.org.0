Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337F844AE1
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Jun 2019 20:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dnm5LQ6RcK7B36rofthmzD0pyEQx+fn+z9duggcLa5A=; b=BbPhotOE9jbUnt1EVvgjvFhX6
	1wcpkr7Vpmfi0dPIhtjwtTqDppppll5xMCrGmMe3/Hq50GmDjU1K5tRblhFkKgDkzplsLAGPU6gQV
	tUQRcsbugPnZUzZfA9RtptJoriMIqKCEDusWmOAKoJLmyqnGy6vFggHaG26BHTFqojp/RkfoUsabn
	TpW+iW7qZ9Q5+V24J3VahiU+dhaKTjUPSbU1n463Nev9L0HxXCBZho6w0dj28VOqiHkBGVY3ELAN6
	kDtHLGh/3PhfXiZeObYghqRd8zYNahDkFhl9T1Lv4ga/mnlaC1Xd1TBzAYhqxQ0tEDueZnAsWk6V0
	OeDT+iTrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUdk-0008PU-CH; Thu, 13 Jun 2019 18:40:00 +0000
Received: from mail-ve1eur02on062b.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62b]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUdc-0008Ob-6z
 for openwrt-devel@lists.openwrt.org; Thu, 13 Jun 2019 18:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XfqHWxoPuoseHsVI/iTwZz7hF7O9RCjwGtUpA8CxdQM=;
 b=QqazOlai/oO+4z3SS3IsRNc8P4Xn+d8kAfQ6zwDjt/2xSgPG+qaI7+sjIFRgrL/B61W1iWTQYCHQpNv24UtVgrjlwGNHSnpMJF4Vs2RuanYPalsboOK5Xdc8yHJqoySS3cSJgCKzAgqJ6LC8Tx7f7abp7L8UkWY5i0AtInV2lLo=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3488.eurprd03.prod.outlook.com (52.134.14.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Thu, 13 Jun 2019 18:39:42 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3%2]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 18:39:41 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Ben Greear <greearb@candelatech.com>
Thread-Topic: [OpenWrt-Devel] New ath10k-ct firmware and driver available
Thread-Index: AQHVIgBdwiZe4vVeSkuhXJEyM0k9YKaZ6raA
Date: Thu, 13 Jun 2019 18:39:41 +0000
Message-ID: <32922F5D-77C9-42A2-9F77-A1AF4FD13C69@darbyshire-bryant.me.uk>
References: <740907f4-b38b-2a1b-9b82-2975b2f08c91@candelatech.com>
In-Reply-To: <740907f4-b38b-2a1b-9b82-2975b2f08c91@candelatech.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 162d3fce-b35d-48f4-7f9e-08d6f02e7f85
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB3488; 
x-ms-traffictypediagnostic: VI1PR0302MB3488:
x-microsoft-antispam-prvs: <VI1PR0302MB3488ED3A355E7F4B0B046480A5EF0@VI1PR0302MB3488.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39830400003)(346002)(366004)(396003)(136003)(189003)(199004)(71190400001)(8676002)(64756008)(6116002)(6436002)(86362001)(53936002)(6916009)(66616009)(6512007)(99286004)(66446008)(6506007)(5660300002)(305945005)(36756003)(7736002)(71200400001)(81156014)(66476007)(66946007)(66556008)(76116006)(76176011)(186003)(229853002)(68736007)(81166006)(2906002)(11346002)(2616005)(446003)(33656002)(14454004)(6246003)(476003)(8936002)(102836004)(6486002)(14444005)(74482002)(25786009)(316002)(91956017)(53546011)(46003)(4326008)(99936001)(486006)(256004)(73956011)(508600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3488;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Xfei9Cfxs8Bun2PRYBKgcY6kpCak+H8fo8DsNs+8Wj3xN0sP/HnEw4Dkl/9sXktMXKqAyU4B0guqNbRFoYLZ11WL6ju44lGte12bu7szbjFVKOYB5COC91+q6ZDsMBv5vTxwarsK/FRAh6PlPLkjy3XGfsPkwWabswT8XUnNzLB0M/JxPixoXyKKKqJHG249XnKXLypbo3dYAuFNKf3vMn8T1iSe0fpYWOnDFAD9blJmuEw9/809I08t8TCBH+PvighRKpZKACiWbAZ5oa7Y2MHB4qdKaQcBozh9ZyXEXOpSIG3TqhseWoRBHb0gEOiWc90+RgEIdW9lxJxPwN0QUPYxPuzYIrSR6uREO5NM8ae759qzKocjOPNw66+IKcI3vGHd47eJLVPIKVGsFDiwV3tStuq22YISLnhZlCIkiJ8=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 162d3fce-b35d-48f4-7f9e-08d6f02e7f85
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 18:39:41.5268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3488
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_113952_338490_2BB7B396 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:62b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] New ath10k-ct firmware and driver available
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
Content-Type: multipart/mixed; boundary="===============7830915080418523934=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7830915080418523934==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_CEA5C95A-AE25-44A4-8F7F-4256C590F8FF";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_CEA5C95A-AE25-44A4-8F7F-4256C590F8FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 13 Jun 2019, at 16:54, Ben Greear <greearb@candelatech.com> wrote:
>=20
>=20
> Here are recent release notes:
>=20
> wave-1:
>=20
>  *  May 9, 2019:  Tweak rate-ctrl:  Ramp PER up faster, down slower.  =
This helps throughput
>                   in rate-vs-range test, especially with nss1.
>=20
>  *  May 20, 2019:  Disable adaptive-CCA.  I am not sure it helps, and =
it may make it slower
>                    to detect noise that should tell the system to stop =
transmitting.  If someone
>                    has means to test this properly, I'd be happy to =
work with them.
>=20
> wave-2:
>=20
>  *  May 15, 2019  Fix problem where rate-ctrl sometimes used rix of =
0x0.
>=20
>  *  May 15, 2019  Allow raw-tx of encrypted frame.  Requires a patch =
to the driver to use
>                   raw mode when skb has WEP flag enabled AND skb is =
flagged to not be
>                   encrypted.  Lightly tested.
>=20
>  *  May 16, 2019  Fix tx-hang that happened when rate-ctrl chose an =
OFDM rate for 20Mhz
>                   and sent that as AMPDU.  To fix, limit to (V)HT =
rates if peer is (V)HT.
>                   It seems that MCS0 (V)HT20 should have as good of a =
chance of being
>                   detected as CCK or OFDM.
>=20
>  *  June 6, 2019  Disable TX-BFEE, TX-BFER for IBSS connections.  I =
suspect this is part of the tx-hang
>                   issue seen with IBSS between two 9984 radios.
>=20
>  *  June 12, 2019  Fix rx-rate reporting in 'fw_stats' logic.  This =
was at least partly due to regressions
>                    I had added earlier when working on some multi-vdev =
enhancements.
>=20
>  *  June 12, 2019  Fix case where extd peer-stats were not always =
populated.  The stats gathering
>                    code did not handle error conditions well.
>=20
>=20
> Driver changes include:
> * Fixing mfp/pmf for management frames (in htt-mgt mode)
> * Sven's txpower related fixes
> * raw tx of encrypted frames works (on wave 2, at least)

Done.

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_CEA5C95A-AE25-44A4-8F7F-4256C590F8FF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0CmGsACgkQs6I4m53i
M0r+2w//T/Rr6P65FIcIisO03OtYhhLnFTF1dQ/NhpYeo0wZHanm6RaPpZic7nFq
nInRMXprkGkJbjYy/EgwdVxdP6BV8kGu6OzqJuWxhS8TVuRxdAW5WtNcl4KuX9h0
2whzMLObdOpl27p/SZpaKMW/kfxLE+4xKEZMjnZlR9Cs+qOytZM5vbZvCSuSd5RY
eWzxkr8Nr/JsmLatanVtqWQm4MxnjnklAbHElUl7MfqtCER4aTFcyk92qjg4sOxI
GY+2ujv9JYA21EuGgmhlD0jO09CGEuaK3Pc574WXGP0E9UnDJUHHTWCGnqRJokqF
XMF6cYbDidovboxQanwj0sEvKqBPL3q3OM8mV6VfzFkaLaTz5B95F87kH57dGCA0
q+ppBOIRZ8qQ8FVSmYOejLpGBTySoqq9DfmykZMJbp0B89hVffgoraTSyirJUtor
I6tJhoaM43JCPlfiaGWdxkcmeu8Et02piHcgRFLWCA7ksz0/+4mu/tE9axHsDfis
RcL2GHyjpUmY4Ip1AXEu/AZKOvQmmE7ZDBEJiaf48mMQt0eeRJN7zpyDbBpZIJBv
ZrwPgbr4qgE/G7aL3YljZeEUni1MyOMJi2XdUJrhWuWKItUeVZH8B7YM4twSvfmc
LwFHHhKFlgL+MNSQufRsJ80yqbiS/d0fGv9Zox0bqdI+F9zC6BI=
=tdQn
-----END PGP SIGNATURE-----

--Apple-Mail=_CEA5C95A-AE25-44A4-8F7F-4256C590F8FF--


--===============7830915080418523934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7830915080418523934==--

