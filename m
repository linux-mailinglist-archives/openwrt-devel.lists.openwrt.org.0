Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB2B19B5AC
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 20:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iuBTroHiVlfBh6uyiy+tm/1zuUlTEKnyu3oYPz+dXDk=; b=sfg3UkIsnSKzUxV3ujvt07uBY
	LnPBbWibltIrCZ4ISpmP7HO5/vuGZSEwzykFmcVfGnjINogtTlOadrRYjKZboua6uGCtV6K7863p5
	onoJ6UaB+6IJhc/0zvd7meqD43b5au4+OYmy74WLgDK8lPs1ZqZ5c+y/V0PdBCvrJTpwaHuMZU/jn
	uUqwKYiy0OjN3mcykg7hH8gronCqHvh+fzkpEjBeZYi516m+AHnsQpf0Nm2ESU6GY7dReVE2BSF2K
	mITQogUDUp2jlya3tJGw7Pn64uB0BbKhjVMJ9U9IDpLfizHtAcv5ZeDW/wfIEpch1Cho7vfUem2T2
	WFPJIRHZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJiFi-0001oh-R6; Wed, 01 Apr 2020 18:38:14 +0000
Received: from mail-eopbgr30079.outbound.protection.outlook.com ([40.107.3.79]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJiFX-0001o7-DG
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 18:38:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y9y29Q4w3wLXF8W11W1sau1OutrJEOYtvQdC1SYxOE4YFu8P0gdwOf3i+0VjS7mRrbw0wwfRiW00YPv+hkhQleXQA7Tsh260XLJltWDrIQ8vKE7lsdvxbtranGn8vVCu4DudndDwnfkvy9c7KcqKyBiTqzc6SH3dnQqcbHoJhPqZSmJiDOyo4j55RIA5aoa2tpARdqtfWOKbIYi+WbaQZqpJRqoYJNyxA6D/26emNwt9yg4CyCPoh5WYBX9Cd1cSrV2Zvx6XAAwDebhRwqwlCEuBxTNIiZNff0kAtiWgm9HREYsAtAq1ZSB1XakvGAJ5ttl2p1foCxZ6NpVYiKZkeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aDI3qUDihEKkYYkbheMDDTIFrcObok2U9jiGtCoU16o=;
 b=ako3NRBdhb+OyR+W9EFobdNxz+xsviXWe8vajoDY+u1HAdoJXZL+PA/HWo0uj6JzHzfL6o+v0XrhhTsy/dcL2aOLuUSnppxtoUtQX+0L40paeTpIsjnqmKzEKmQ5YZPWucELmhNqZwzMlG2GkEkNDXvJp/MAE11MdOOsVbFZJA4tk2YR7/yvTNqQKqsR60q2YpH+v6NoCBO4izZKDc7kulCVGdA7wLK0T6a+s/drs63gcH9+pYgPjjwHQp+1tbheNPwMjSsMjTj0mgfCqgRZ7mGbHs6xZM4mXDoFrMfTqTu3pYDWyU6bG1uYzLDnY1N5/AwugQK5bMD6FZ5+4ZCKhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aDI3qUDihEKkYYkbheMDDTIFrcObok2U9jiGtCoU16o=;
 b=L/5z9Mdw23288bJ3ISk3+zmmETo4Vk2LTZtyzdFqzthgGZqw6t7ML3bSHC1CiBW7GztLBZEerrvUpGiF4zi+gG3zmG8q6d5ChPwNL1SX6YNrCQb5vzwRo4UGqQCGnMLnrc4rvD2aEcgJv23ueh4AZfvgQdY/s2YBGJyydCRLolA=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4832.eurprd03.prod.outlook.com (2603:10a6:803:b9::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Wed, 1 Apr
 2020 18:37:58 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 18:37:57 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Hannu Nyman <hannu.nyman@iki.fi>
Thread-Topic: [OpenWrt-Devel] [PATCH v1 1/2] kmod-sched-cake: rename to
 kmod-sched-cake-oot
Thread-Index: AQHWCA5Zr6m5hqfqGUeC8b4+KdI2p6hkgAEAgAAZNAA=
Date: Wed, 1 Apr 2020 18:37:57 +0000
Message-ID: <C2B67E6E-0C3E-4AAE-937F-9B5E9BE92FB2@darbyshire-bryant.me.uk>
References: <20200401101423.8618-1-ldir@darbyshire-bryant.me.uk>
 <20200401101423.8618-2-ldir@darbyshire-bryant.me.uk>
 <73a9987e-ada9-3911-d337-c3e5656331a1@iki.fi>
In-Reply-To: <73a9987e-ada9-3911-d337-c3e5656331a1@iki.fi>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea325d35-e0a8-4776-3685-08d7d66bcc99
x-ms-traffictypediagnostic: VI1PR03MB4832:
x-microsoft-antispam-prvs: <VI1PR03MB48321DFF4804AD24D80DC6D6C9C90@VI1PR03MB4832.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(8676002)(99936003)(8936002)(33656002)(71200400001)(81166006)(53546011)(6512007)(186003)(81156014)(6506007)(6486002)(2906002)(4326008)(6916009)(76116006)(508600001)(66616009)(66946007)(66446008)(36756003)(5660300002)(66476007)(2616005)(86362001)(66556008)(64756008)(91956017);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F6iFzUPj0Fb5Dp5Y1ufulj/Y0ivXqULp7KKQrP/9i5LGWaiymNkM7jNN+9XkJfN2pJTyRf+vNayLLx6rsnBcqcetDA4JxXcjaqIidI1ERxNOvYgVnHYKYJ1YKPEQKD//X6EuscDfIxo0pIajoQV8O4dC2CusmULUTqQymXAfBnzXfF7B11e5UUFLaqq4DE0A3Mcpp3HacL8fhADQGznpHeGLyCefS9mnKTlsSNBtCVWhxOONzJbPV1o6/14J2He3J/pHW2Bfu5x06Eqh/wvvXorQQY17C7KkBIl9WbRg2hy3ytjqFwKogzF8B5OHls/6XsszrzXKKH9v30HBdL2PT5/SoE8bsvNt6tHnyBTg6LlbVZvx6HqchjEU5b3TLL8790HnyIVK3sC1q7edO1kW32sLFETcpmJONi25gRAUqhYzIFmydw/jKmXgjpYmh9AcdrNcexPFEPtlbj0O9bUwBTw9SiDyqHMepiF2tlzYgovGGXtxjSFXJI5j6EZ2N7qEZmol0+6K4wPRwLp9FxIjEg==
x-ms-exchange-antispam-messagedata: e3HncOcjhb3x2F1Wa3ls6y9U70dtr375EPytXyFqTmra7duCVz+9h4ADyztL0pqZI00N8NPA4igv+CBZJv2Y2aIZFrPDgfXfQTHie4D3EUE1L6EZyOXnGQVmX42y2neUvo1s5Zw9gTT39UvrQIjKl9NOiucv+xecuvvRiMyYnkTA9EeEGnT2XdgbfXwkgRNk
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: ea325d35-e0a8-4776-3685-08d7d66bcc99
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 18:37:57.6953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kNUEQ0Ly6OISera+FV5rAMjAY/fb6urQ5S6F3Di/0Qjd6slP6VA5IO/ridHHxZ1O9uPc9Ed879jzHDR55M9voub8jxUkhk9XkuMpMjEbBxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4832
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_113803_513389_6FC6A1A3 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v1 1/2] kmod-sched-cake: rename to
 kmod-sched-cake-oot
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1859914485030989274=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1859914485030989274==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_72913219-3704-483F-8E5E-3F5B9A117C27";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_72913219-3704-483F-8E5E-3F5B9A117C27
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 1 Apr 2020, at 18:07, Hannu Nyman <hannu.nyman@iki.fi> wrote:
>=20
> Kevin Darbyshire-Bryant kirjoitti 1.4.2020 klo 13.14:
>> In preparation for dropping the out of tree cake module and using
>> in tree cake from upstream, rename the package to kmod-sched-cake-oot
>> (out of tree)
>>=20
>> Initially add a PROVIDES kmod-sched-cake so that package dependencies
>> can be satisfied.
>>=20
>> Ultimately this package will be removed when linux 4.14 is removed.
>>=20
>> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
>> ---
>>  .../Makefile                                        | 13 =
+++++++------
>>  1 file changed, 7 insertions(+), 6 deletions(-)
>>  rename package/kernel/{kmod-sched-cake =3D> =
kmod-sched-cake-oot}/Makefile (75%)
>>=20
>> diff --git a/package/kernel/kmod-sched-cake/Makefile =
b/package/kernel/kmod-sched-cake-oot/Makefile
>> similarity index 75%
>> rename from package/kernel/kmod-sched-cake/Makefile
>> rename to package/kernel/kmod-sched-cake-oot/Makefile
>> index 42e45b5789..fbcb9cec4b 100644
>> --- a/package/kernel/kmod-sched-cake/Makefile
>> +++ b/package/kernel/kmod-sched-cake-oot/Makefile
>> @@ -8,7 +8,7 @@
>>  include $(TOPDIR)/rules.mk
>>  include $(INCLUDE_DIR)/kernel.mk
>>  -PKG_NAME:=3Dsched-cake
>> +PKG_NAME:=3Dsched-cake-oot
>>  PKG_RELEASE:=3D1
>>    PKG_SOURCE_PROTO:=3Dgit
>> @@ -20,23 +20,24 @@ PKG_MAINTAINER:=3DKevin Darbyshire-Bryant =
<ldir@darbyshire-bryant.me.uk>
>>    include $(INCLUDE_DIR)/package.mk
>>  -define KernelPackage/sched-cake
>> +define KernelPackage/sched-cake-oot
>>    SUBMENU:=3DNetwork Support
>> -  TITLE:=3DCake fq_codel/blue derived shaper
>> +  TITLE:=3DOOT Cake fq_codel/blue derived shaper
>>    URL:=3Dhttps://github.com/dtaht/sch_cake
>>    FILES:=3D$(PKG_BUILD_DIR)/sch_cake.ko
>>    AUTOLOAD:=3D$(call AutoLoad,75,sch_cake)
>> -  DEPENDS:=3D+kmod-ipt-conntrack
>> +  DEPENDS:=3D+kmod-sched-core
>> +  PROVIDES:=3Dkmod-sched-cake
>>  endef
>>=20
>=20
> I tried to compile kmod-sched-cake-oot for ar71xx with kernel 4.14, =
and it failed due to dependency error:
>=20
> Package kmod-sched-cake-oot is missing dependencies for the following =
libraries:
> nf_conntrack.ko
> make[3]: *** [Makefile:52: =
/Openwrt/wndr3700/bin/targets/ar71xx/generic/packages/kmod-sched-cake-oot_=
4.14.172+2020-01-10-aeff7a3e-1_mips_24kc.ipk] Error 1
> make[3]: Leaving directory =
'/Openwrt/wndr3700/package/kernel/kmod-sched-cake-oot'
>=20
> The old (out-of-tree) package had dependency for kmod-ipt-conntrack =
that was now replaced by sched-core, but that is apparently not enough?
> (kmod-ipt-conntrack selects kmod-nf-conntrack)

Ooops! - Yes it also needs +kmod-ipt-conntrack,  I=E2=80=99ll amend and =
resend soon.  Currently can=E2=80=99t get a build out of my mac due to =
the grub2 efi bump, so battling other issues.

Thanks for testing.

Cheers,

Kevin



--Apple-Mail=_72913219-3704-483F-8E5E-3F5B9A117C27
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6E34QACgkQs6I4m53i
M0rGDw/9E3Wa2QVAF8qEf3ZkV8nZqHCtNxrrJt55Pf2zN5goRlLIigGBV3vX42Nb
4+7JOZ+RJTmouKtmsofkm4+DTY+LXDCbaj9bGDlRp49xcVTKI2iT/N0ec8IySnnX
YfDIIfZZAS4TKO2hiyVmml/vEIn0iVJQ6i7VIPQV4KvUKs6XU6hhFT6/mhLu1+yh
u1EA1UiZAcTnDeT8S8RFbCd4W+g5O2Le1mJWj0TI1c18U8IPcTCSmktVRactQzmW
mspHqSIenmqwp4jb4qGzZLj0VIzdk6uEiye9CZfLiUUMVflAxdrHceDw6/8ZfqR2
XErIfNdJ6niMF0aCPVsYZvLfmjlxwVxrMp7HMUIb9kggEIseLvzH2FjKTagEPRmy
P4kjtlU3L24B+/kU/rlH0lMozf7/gcV1v23FpExPkGjg4mYFPzSsgFzmvx0XJPNt
PXSqAbc4F4/kV3b/0s7LH6fRvsdU3RKn2SASeZZdP/WDQcGvAVFYCNrYmB8dvDBM
zpHymGFL0Dd+ob0KGpU6YWYMhAM/1FeGuOWa227bMD3UuEEsLiFIFqEg8qrD0VR1
2Nhybd6w9Ws97fmf/IVg11bKv4EAEwcFSg7YrXF1s2uzeCABt4zbEKlLDCjEAaVp
t+FMbnt0Jd2T8K0gqPnUXDqi0WqD+L4Bn7o2NrRXNLS/NPHuv9Q=
=tRwQ
-----END PGP SIGNATURE-----

--Apple-Mail=_72913219-3704-483F-8E5E-3F5B9A117C27--


--===============1859914485030989274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1859914485030989274==--

