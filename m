Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD8C1DFF8E
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 16:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Content-Type:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r5Lt/2boIF2yPkUHevtKM8svdZZK7tC9g4/EiSCSfaA=; b=IDX0wu0FezE/AHSFDLsdkmzZf
	4aRn2lrSq8w1L4kFkaoglGrdUebVudRESlnjW/aqpZdM3HM7I9aZMdlRG3WvMEAbbhj9oN3uKeU9J
	Krlg/Tj6MREu9Ijies17kXIct4RPrNPoZcs9/XNjaElI2Da96qCVJUEPQZW7S88O5KRkMZHY6u3j2
	+AtgAFJZwb5NsPuAo5m2Ppz8vWuPO4YibhmY078WQQxCZPmpBRYzmKdqGJEeZDwAW6UnHyh6bSj7q
	m277cKmWeFIwF6EA52B2a/fJ91F2fNnUVyS4lo5xQf7/U4lI8FOB+gjCzD+uyvO4juWufk4gmt3jU
	IYtVNN4Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcs5T-0003T4-2u; Sun, 24 May 2020 14:58:51 +0000
Received: from mail-oln040092254018.outbound.protection.outlook.com
 ([40.92.254.18] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcs5K-0003SW-A9
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 14:58:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S25VzrQcXFRoDH9OZZRp5/U8fzkIg73sb4xcw9LTbKElnTSEO8aB2DMwHvfPjSJKjXIXFuahKi9DZeGGPtgNPWVQWh0V3kHgbj/qsUjAsLtSxZ48cY0KBAjAoSLqQAF2hFnuRXHQnsjivWhLbK2nLmRjkrm4kflZyefvvAGUinsFfAZnOtsCjcmZnc6wTrrm8K4X3riI9A/Y43e5jiohRJMrepqU+X+d2WmnSzKCfFlbGGYKSIAooVF45RN6kIFiVhfrViyd2sCoJu6VJAZTjCYXsrAOzchrydY0U9QzHm8mQR2+pHOsHB2Xyc/zInm3OU/3AV0s8TryuXUAnzcF0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RJMqAbtjha7pCcn/7QMrpundrqePFodxIWtOOgYnCzA=;
 b=GpNjwY0On17N9wG9YbXMdVCUysCDuvJ7mLeqn3NrW6Ti+0b/RjZAyNmr3rNzmnOpAYIz2Vj6IJtfNGyuVyQMOsXIs6DfZX1fS2PK/6wcuZpB2da6ldp4OkLgjMhQtpHLy/SS0gdL5oE3cf8nFDcO2wBA2nAabOOvHzggrcGeJSAe7ePR27jdHLw52WTACqKREVAH7bfGwNPD4fb7r6MaBUi7MyyxtHBSXk3QdA1qRfc9JQlJQr5ePQTCeMw8E1IBlwxybsi71vCRG/dwLP2G0g/pG8/hvluDIZo1I+qjMkgUL4bM5SCKYic2kwhEqoeaqyAEj9nSRV0CPq8dIXmjxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RJMqAbtjha7pCcn/7QMrpundrqePFodxIWtOOgYnCzA=;
 b=PiSvnmPPa6X6BJJuAkRrkyBWHBpZ8LtDbNvTt9HNF2SEZMPS+gB3x0NhPzH9ExMQx03wl3QvB8XHHpPvcM9EOKuJSQkQ2G/Sm3V2jXZK5+FeKMseRsadNuJb/ndGb9JOFRj0RpIjbxIs9fMlEXGfARTqx/HBugKcn78kpMZj/4fgP9VoOWxGC5wPy/nzFmVLy7ggM8Lsp/23/1KqhOh/l/kxnNKkCXjOgTS3j08oTZTgtFLtA61Ek/9zEZL7WoOQrOW5R1t+ZqCQ+tNLNNMMH7pMrjQAE8DXZ3/5oIsrJ3m8PEif7Q/1KTaR+J2IDJKJ7Ivn0I8p+Sulo34WKAT0Yg==
Received: from SG2APC01FT028.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::49) by
 SG2APC01HT098.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::480)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Sun, 24 May
 2020 14:58:31 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebd::4b) by SG2APC01FT028.mail.protection.outlook.com
 (2a01:111:e400:7ebd::196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Sun, 24 May 2020 14:58:31 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3021.029; Sun, 24 May 2020
 14:58:31 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>, "openwrt-devel@lists.openwrt.org"
 <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] Fix for missing kernel stack-protector in x86_64
 glibc builds
Thread-Index: AdYxviW8HcgxTYvsSUSQKKffs49D6wABQqPwAAENYIAAAaBBgA==
Date: Sun, 24 May 2020 14:58:31 +0000
Message-ID: <KU1PR01MB2022F6CCA5A7142377261125ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
References: <KU1PR01MB2022F88F8DD228B43250EAE7ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <7b754279-3239-ea27-b321-4c7f8037e7d9@hauke-m.de>
In-Reply-To: <7b754279-3239-ea27-b321-4c7f8037e7d9@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1889118B720B8D4AAB417239D6327165C791CCEA4B0FEB2751CCAE1577658D41;
 UpperCasedChecksum:763D44B99F1B0BB3A51671DB9E487851C7F670FFAC19756BFD6CBDFCF67DDC7A;
 SizeAsReceived:7189; Count:44
x-tmn: [LGjScfbbinkfYxnaV9tQJbrNjanz7xy5]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 0ed26b26-b25f-406b-fc31-08d7fff2ecae
x-ms-traffictypediagnostic: SG2APC01HT098:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HoJNTudo0OYsgUCkfJ8xlkH3sFszUdarba/TaTischPjI2NZXsH26xalfNPKOoVZo8VUZamWXB9HoZUaJUUFJ2LpxbTA1nfvwS92pEZueuWdRoxndY1vK3hiWGfvyj11OgRx9q9tFsRO5xCl4xBpTjT1+IMJrfdIWUq2S7e3lkBgV6PBbjfkOKAEL4pRnp0Oi806sFHyLWr33FJSqlTZkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: qk6Iqu/Kx4aAbsxl037w3X9pFUs7SvGA6RKFmOY9w+dopgERQYzIIMb8Im/cQWwOWKA1Lg60H75hEroH0Ihh50DGbcXA6ehCHJGhZiN17gSiXyMteEuiFaCc+rGugQCJQQpnwUYLOd7XcmyfI7XvmA==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_002_KU1PR01MB2022F6CCA5A7142377261125ADB20KU1PR01MB2022apcp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ed26b26-b25f-406b-fc31-08d7fff2ecae
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2020 14:58:31.3084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_075842_569532_D777CA8C 
X-CRM114-Status: GOOD (  35.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.254.18 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.254.18 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Fix for missing kernel stack-protector in
 x86_64 glibc builds
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--_002_KU1PR01MB2022F6CCA5A7142377261125ADB20KU1PR01MB2022apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hauke, patch in git format attached

Regarding uclibc, the only references I could find spoke about a SSP patch =
that was committed and then reverted. I'd have to browse the source to be s=
ure whether it supports it or not.=20

To note about this change: there is another symbol in toolchain/Config.in t=
hat I left untouched, mainly because the only place it was being used in th=
e main repo was by the binutils Makefile, which is using it in a musl /gcc =
libssp specific way

toolchain/Config.in:

config SSP_SUPPORT
        default y if USE_MUSL || GCC_LIBSSP
        bool

toolchain/binutils/Makefile:

ifneq ($(CONFIG_SSP_SUPPORT),)
  HOST_CONFIGURE_ARGS+=3D \
                --enable-libssp
else
  HOST_CONFIGURE_ARGS+=3D \
                --disable-libssp
Endif

I'm not convinced that this option is required in any case, since this is f=
or the host build. So not selecting it with USE_GLIBC is the right thing to=
 do here.

Then there are 3 packages in the feeds that refer to this symbol:  avahi, t=
or and cjdns, all of them in a more or less erroneous way

feeds/packages/libs/avahi/Makefile:

TARGET_LDFLAGS +=3D $(if $(CONFIG_SSP_SUPPORT),-lssp_nonshared

This is musl specific and I also question if it is needed since the build s=
ystem should automatically link in ssp_nonshared for musl. There's a patch =
in toolchain/musl which adds libssp_nonshared to the ALL_LIBS symbol. So I =
suspect as well that this line can be removed from the package Makefile. It=
's also managed to work even with GCC_LIBSSP selecting CONFIG_SSP_SUPPORT e=
ven though the library won't exist, since libssp_nonshared is musl specific=
. So it can probably also be ignored for the meantime but should be fixed s=
ometime, as it's wrong.=20

Again, not setting the CONFIG_SSP_SUPPORT for USE_GLIBC  in this case is al=
so correct.=20

feeds/packages/net/tor/Makefile:

ifneq ($(CONFIG_SSP_SUPPORT),y)
        CONFIGURE_ARGS +=3D \
                --disable-gcc-hardening
else
        EXTRA_CFLAGS +=3D $(FPIC)
Endif

According to the commit for tor that introduced this flag,

    --enable-gcc-hardening
        This turns on gcc compile time hardening options. It ensures that
        signed ints have defined behavior (-fwrapv), -D_FORTIFY_SOURCE=3D2 =
is
        enabled (requiring -O2), stack smashing protection with canaries
        (-fstack-protector-all), ASLR protection if supported by the kernel
        (-fPIE, -pie). Additional security related warnings are enabled.
        Verified as working on Mac OS X and Debian Lenny.

So I'm not sure that even specifying this compiler option is the right thin=
g to do as it's going to blindly enable a bunch of things that are all sepa=
rately controlled by openwrt. The package will clearly compile without it e=
nabled, but is likely to error out with it enabled, if for example, -O2 is =
not set. So once more, not setting CONFIG_SSP_SUPPORT is the right solution=
.

Feeds/routing/cjdns/Makefile:

It passes through a make variable to the cjdns build

define Build/Compile
        $(INSTALL_DIR) $(BUILD_DIR)/$(PKG_SOURCE_VERSION)/tmp
        (cd $(BUILD_DIR)/$(PKG_SOURCE_VERSION) && \
        CROSS=3D"true" \
        CC=3D"$(TARGET_CC)" \
        AR=3D"$(TARGET_AR)" \
        RANLIB=3D"$(TARGET_RANLIB)" \
        CFLAGS=3D"$(TARGET_CFLAGS) -U_FORTIFY_SOURCE" \
        LDFLAGS=3D"$(TARGET_LDFLAGS)" \
        SYSTEM=3D"linux" \
        TARGET_ARCH=3D"$(CONFIG_ARCH)" \
        SSP_SUPPORT=3D"$(CONFIG_SSP_SUPPORT)" \

Which is used in the package's make.js script thus

    switch (process.env['SSP_SUPPORT']) {
        case 'y':
        case '1': libssp =3D true; break;
        case 'n':
        case '' :
        case '0': libssp =3D false; break;
        case undefined: break;
        default: throw new Error();
    }

So this usage is again gcc libssp specific. It will continue to work as des=
igned since GCC_LIBSSP sets CONFIG_SSP_SUPPORT and might error is USE_GLIBC=
 selects SSP_SUPPORT. But it should be changed in the future to SSP_SUPPORT=
=3D"$(CONFIG_GCC_LIBSSP)"

So, this is why I left the symbol alone and didn't patch anything relating =
to it as everything continues to work as normal with it untouched, whereas =
changing it will introduce errors.=20

That said, these usages in both the main repo and the feeds that I've liste=
d are not clean and will need to be fixed sometime.


-----Original Message-----
From: Hauke Mehrtens [mailto:hauke@hauke-m.de]=20
Sent: 24 May 2020 13:33
To: Ian Cooper <iancooper@hotmail.com>; openwrt-devel@lists.openwrt.org
Subject: Re: [OpenWrt-Devel] Fix for missing kernel stack-protector in x86_=
64 glibc builds

On 5/24/20 2:04 PM, Ian Cooper wrote:
> Patch attached as my email client seems to have mangled it a bit when=20
> inserted inline
>=20
> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]=20
> On Behalf Of Ian Cooper
> Sent: 24 May 2020 12:35
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] Fix for missing kernel stack-protector in=20
> x86_64 glibc builds
>=20
> Hi all,
>=20
> Forgive such a long post on my first posting to this list.
>=20
> I have a change to propose that, while trivial in the actual patch to the=
 build system, affects the toolchain, kernel and every package, so I don't =
want to just create a PR for it without some discussion and agreement befor=
ehand that it's the right thing to do, even if it seems obvious to me that =
it is. Perhaps I'm missing something here...
>=20
> I run a x86_64 build with glibc. I noticed that my build (based on master=
) did not have kernel stack smashing protection enabled. Since most distros=
 ship with it enabled by default, I got to questioning why. My Ubuntu 20.04=
 has CONFIG_STACKPROTECTOR_STRONG enabled in the kernel, so there's no tech=
nical reason why it can't be used on a x86_64 platform.
>=20
> It turns out after looking at `config/Config-build.in` that there is expl=
icit code to disable it in the kernel config if we're not using musl and we=
're on a x86* platform. Moreover, there is also code to enforce use of gcc'=
s standalone libssp for userspace stack protection:
>=20
> 	choice
> 		prompt "User space Stack-Smashing Protection"
> 		depends on USE_MUSL
> 		default PKG_CC_STACKPROTECTOR_REGULAR
> 		help
> 		  Enable GCC Stack Smashing Protection (SSP) for userspace applications
> 		config PKG_CC_STACKPROTECTOR_NONE
> 			bool "None"
> 		config PKG_CC_STACKPROTECTOR_REGULAR
> 			bool "Regular"
> 			select GCC_LIBSSP if !USE_MUSL
> 			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
> 		config PKG_CC_STACKPROTECTOR_STRONG
> 			bool "Strong"
> 			select GCC_LIBSSP if !USE_MUSL
> 			depends on KERNEL_CC_STACKPROTECTOR_STRONG
> 	endchoice
>=20
> 	choice
> 		prompt "Kernel space Stack-Smashing Protection"
> 		default KERNEL_CC_STACKPROTECTOR_REGULAR
> 		depends on USE_MUSL || !(x86_64 || i386)
> 		help
> 		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
> 		config KERNEL_CC_STACKPROTECTOR_NONE
> 			bool "None"
> 		config KERNEL_CC_STACKPROTECTOR_REGULAR
> 			bool "Regular"
> 		config KERNEL_CC_STACKPROTECTOR_STRONG
> 			bool "Strong"
> 	endchoice
>=20
>=20
> The commit messages that accompany this code are respectively 5 years old=
 and 2.5 years old. A lot has changed since then and the reasons these excl=
usions were put in place are no longer valid.
>=20
> commit bf82deff7069599c9f130f5bb0222acd171fd19d
> Author: Felix Fietkau <nbd@openwrt.org>
> Date:   Sun Aug 2 07:40:12 2015 +0000
>=20
>     build: disable kernel stack protector support for i386/x86_64
>    =20
>     When stack protector support is disabled in libc (always the case for
>     !musl), gcc assumes that it needs to use __stack_chk_guard for the st=
ack
>     canary.
>     This causes kernel build errors, because the kernel is only set up to
>     handle TLS stack canaries.
>    =20
>     Signed-off-by: Felix Fietkau <nbd@openwrt.org>
>    =20
>     SVN-Revision: 46543
>=20
>=20
> commit 241e6dd3e92c4f215b8ac75379a4b5aeaeb92171
> Author: Julien Dusser <julien.dusser@free.fr>
> Date:   Sun Jan 7 18:47:21 2018 +0100
>=20
>     build: cleanup SSP_SUPPORT configure option
>    =20
>     Configure variable SSP_SUPPORT is ambiguous for packages (tor, openss=
h,
>     avahi, freeswitch). It means 'toolchain supporting SSP', but for tool=
chain
>     and depends it means 'build gcc with libssp'.
>    =20
>     Musl no longer uses libssp (1877bc9d8f), it has internal support, so
>     SSP_SUPPORT was disabled leading some package to not use SSP.
>    =20
>     No information why Glibc and uClibc use libssp, but they may also pro=
vide
>     their own SSP support. uClibc used it own with commit 933b588e25 but =
it was
>     reverted in f3cacb9e84 without details.
>    =20
>     Create an new configure GCC_LIBSSP and automatically enable SSP_SUPPO=
RT
>     if either USE_MUSL or GCC_LIBSSP.
>    =20
>     Signed-off-by: Julien Dusser <julien.dusser@free.fr>
>=20
>=20
> I started to modify the build system to see if I could get kernel stack p=
rotection enabled and working.  Just removing the line "depends on USE_MUSL=
 || !(x86_64 || i386)" didn't work. The kernel config itself disables the s=
tack protection at configure time.
>=20
> After a bit of digging, the reason for this is that the script in the=20
> kernel source directory `scripts/gcc-x86_64-has-stack-protector.sh`=20
> fails its check. This script does the following check
>=20
>         #!/bin/sh
>         # SPDX-License-Identifier: GPL-2.0
>=20
>         echo "int foo(void) { char X[200]; return 3; }" | $* -S -x c -c -=
m32 -O0 -fstack-protector - -o - 2> /dev/null | grep -q "%gs"
>=20
> The code produced by the default openwrt x86_64_glibc toolchain from this=
 command is as follows:
>=20
> 	.file	""
> 	.text
> 	.globl	foo
> 	.type	foo, @function
> foo:
> .LFB0:
> 	.cfi_startproc
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 6, -16
> 	movq	%rsp, %rbp
> 	.cfi_def_cfa_register 6
> 	subq	$208, %rsp
> 	movq	__stack_chk_guard(%rip), %rax
> 	movq	%rax, -8(%rbp)
> 	xorl	%eax, %eax
> 	movl	$3, %eax
> 	movq	-8(%rbp), %rdx
> 	xorq	__stack_chk_guard(%rip), %rdx
> 	je	.L3
> 	call	__stack_chk_fail
> .L3:
> 	leave
> 	.cfi_def_cfa 7, 8
> 	ret
> 	.cfi_endproc
> .LFE0:
> 	.size	foo, .-foo
> 	.ident	"GCC: (OpenWrt GCC 9.3.0 r13242+9-e04ff3c7cc) 9.3.0"
> 	.section	.note.GNU-stack,"",@progbits
>=20
>=20
> The code produced by my Ubuntu gcc host compiler is as follows:
>=20
> 	.file	""
> 	.text
> 	.globl	foo
> 	.type	foo, @function
> foo:
> .LFB0:
> 	.cfi_startproc
> 	endbr64
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 6, -16
> 	movq	%rsp, %rbp
> 	.cfi_def_cfa_register 6
> 	subq	$208, %rsp
> 	movq	%gs:40, %rax
> 	movq	%rax, -8(%rbp)
> 	xorl	%eax, %eax
> 	movl	$3, %eax
> 	movq	-8(%rbp), %rdx
> 	xorq	%gs:40, %rdx
> 	je	.L3
> 	call	__stack_chk_fail
> .L3:
> 	leave
> 	.cfi_def_cfa 7, 8
> 	ret
> 	.cfi_endproc
> .LFE0:
> 	.size	foo, .-foo
> 	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
> 	.section	.note.GNU-stack,"",@progbits
> 	.section	.note.gnu.property,"a"
> 	.align 8
> 	.long	 1f - 0f
> 	.long	 4f - 1f
> 	.long	 5
> 0:
> 	.string	 "GNU"
> 1:
> 	.align 8
> 	.long	 0xc0000002
> 	.long	 3f - 2f
> 2:
> 	.long	 0x3
> 3:
> 	.align 8
> 4:
>=20
>=20
> So it's clear why the check fails. We're getting the libssp user-space __=
stack_chk_guard canary in the code produced by the openwrt compiler and dif=
ferent code produced by the Ubuntu compiler: "movq__stack_chk_guard(%rip), =
%rax" produced by the openwrt compiler vs "movq	%gs:40, %rax" produced by t=
he Ubuntu compiler.=20
>=20
> The root cause thus of the missing kernel stack protector in x86_64 is th=
at the openwrt x86_64 glibc toolchain is deliberately using a stack smashin=
g protection mechanism that's not compatible with the kernel. Which is libs=
sp. A quick inspection of the compiler options in Ubuntu confirms that it i=
s not compiled with --enable-libssp and Ubuntu kernels have STACK_PROTECTOR=
_STRONG enabled, so ergo, it's not needed.
>=20
> It turns out that glibc now supports -fstack-protector* in the libc=20
> code itself (similarly to musl). From the configure options for glibc=20
> 2.31, the current toolchain version of glibc in master, we can see=20
> that it does
>=20
>         glibc compile options
>=20
>         '--enable-stack-protector'
>         '--enable-stack-protector=3Dstrong'
>         '--enable-stack-protector=3Dall'
>         Compile the C library and all other parts of the glibc package (i=
ncluding the threading and math libraries, NSS modules, and=20
>         transliteration modules) using the GCC -fstack-protector, -fstack=
-protector-strong or -fstack-protector-all options to detect=20
>         stack overruns. Only the dynamic linker and a small number of rou=
tines called directly from assembler are excluded from this protection.
>=20
> Given the ssp support in glibc, there is no reason to use libssp in openw=
rt at all (perhaps for uclibc it might). As far as I understand it (and the=
 documentation about it is pretty much non-existent), gcc's libssp is a sep=
arate, standalone implementation of stack protection which should only be u=
sed if the libc variant in use does not support ssp.=20
>=20
> So, modifying the toolchain's glibc `common.mk` to add the relevant=20
> --enable-stack-protector* configure options
>=20
> diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk=20
> index 768ff19060..b908afc50f 100644
> --- a/toolchain/glibc/common.mk
> +++ b/toolchain/glibc/common.mk
> @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
>    endif
>  endif
> =20
> -
>  # -Os miscompiles w. 2.24 gcc5/gcc6
>  # only -O2 tested by upstream changeset  # "Optimize i386 syscall inlini=
ng for GCC 5"
> @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
>                 --without-cvs \
>                 --enable-add-ons \
>                 --$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> +                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-s=
tack-protector=3Dyes,) \
> +                 $(if
> + $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=3Dstro
> + ng
> + ,) \
>                 --enable-kernel=3D4.14.0
> =20
>  export libc_cv_ssp=3Dno
>=20
>=20
> and altering the dependencies on GLIBC_SSP in `Config-build.in` so=20
> that enabling userspace stack protection does not force the use of=20
> `--enable-libssp` in the toolchain configure options for glibc builds=20
> and rebuilding the toolchain with `--disable-libssp` has the desired=20
> result, as the code produced by the openwrt toolchain now looks=20
> identical to that produced by the host system compiler on my Ubuntu=20
> dev box
>=20
>=20
> 	.file	""
> 	.text
> 	.globl	foo
> 	.type	foo, @function
> foo:
> .LFB0:
> 	.cfi_startproc
> 	pushq	%rbp
> 	.cfi_def_cfa_offset 16
> 	.cfi_offset 6, -16
> 	movq	%rsp, %rbp
> 	.cfi_def_cfa_register 6
> 	subq	$208, %rsp
> 	movq	%gs:40, %rax
> 	movq	%rax, -8(%rbp)
> 	xorl	%eax, %eax
> 	movl	$3, %eax
> 	movq	-8(%rbp), %rdx
> 	xorq	%gs:40, %rdx
> 	je	.L3
> 	call	__stack_chk_fail
> .L3:
> 	leave
> 	.cfi_def_cfa 7, 8
> 	ret
> 	.cfi_endproc
> .LFE0:
> 	.size	foo, .-foo
> 	.ident	"GCC: (OpenWrt GCC 9.3.0 r13242+9-e04ff3c7cc) 9.3.0"
> 	.section	.note.GNU-stack,"",@progbits
>=20
>=20
> --disable-libssp in fact just disables the build of the libssp library, b=
ut gcc still supports -fstack-protector*.=20
>=20
> Doing a kernel build, it compiles perfectly and the relevant STACK_PROTEC=
TOR options are now set in the kernel config.=20
>=20
> Setting all the hardening options to on in menuconfig, a full system buil=
d of all the userspace packages (I don't have all of them selected, but I h=
ave a lot selected) finished successfully with no errors.
>=20
> CONFIG_PKG_ASLR_PIE_ALL=3Dy
> CONFIG_PKG_CC_STACKPROTECTOR_STRONG=3Dy
> CONFIG_KERNEL_CC_STACKPROTECTOR_STRONG=3Dy
> CONFIG_KERNEL_STACKPROTECTOR_STRONG=3Dy
> CONFIG_PKG_FORTIFY_SOURCE_2=3Dy
> CONFIG_PKG_RELRO_FULL=3Dy
>=20
> Booting it also goes without a hitch too and I appear to have a fully har=
dened openwrt_x86_64_glibc variant.=20
>=20
> Runtime checks show that the stack protector features are indeed enabled.=
 I wrote a 2 line program compiled with default CFLAGS that does a gets() i=
nto a small buffer to check the user-space stack protection and it shows th=
at userspace stack protection works as well. The compiled kernel shows the =
presence of the kernel stack protection via `/proc/config.gz`. Output below=
....
>=20
> root@openwrt:~# uname -a
> Linux openwrt 5.4.41 #0 SMP Thu May 14 21:12:59 2020 x86_64 GNU/Linux
>=20
> root@openwrt:~# cat /etc/openwrt_release                 =20
> DISTRIB_ID=3D'OpenWrt'
> DISTRIB_RELEASE=3D'SNAPSHOT'
> DISTRIB_REVISION=3D'r13242+9-e04ff3c7cc'
> DISTRIB_TARGET=3D'x86/64'
> DISTRIB_ARCH=3D'x86_64'
> DISTRIB_DESCRIPTION=3D'OpenWrt SNAPSHOT r13242+9-e04ff3c7cc'
> DISTRIB_TAINTS=3D'no-all glibc busybox'
>=20
> root@openwrt:~# zcat /proc/config.gz | grep STACKPROTECTOR=20
> CONFIG_CC_HAS_SANE_STACKPROTECTOR=3Dy
> CONFIG_HAVE_STACKPROTECTOR=3Dy
> CONFIG_CC_HAS_STACKPROTECTOR_NONE=3Dy
> CONFIG_STACKPROTECTOR=3Dy
> CONFIG_STACKPROTECTOR_STRONG=3Dy
>=20
> root@openwrt:~# check-stack-protector
> hjkalsdhssaldhjlsadh0o247uu032u4231pjkl;s
> *** stack smashing detected ***: terminated Aborted
>=20
> To me, this seems to be an obvious change to make and it, in my case, see=
ms to work just fine. In this day of default hardening, and especially in a=
 network-exposed router, is there any reason that a x86_64_glibc build shou=
ld be running with no kernel stack protection?
>=20
> The full patch necessary to make the change is below.=20
>=20
> diff --git a/config/Config-build.in b/config/Config-build.in index=20
> 61a9265ad7..dd5f0cf817 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -249,7 +249,7 @@ menu "Global build settings"
> =20
>  	choice
>  		prompt "User space Stack-Smashing Protection"
> -		depends on USE_MUSL
> +		depends on USE_MUSL || USE_GLIBC
>  		default PKG_CC_STACKPROTECTOR_REGULAR
>  		help
>  		  Enable GCC Stack Smashing Protection (SSP) for userspace application=
s @@ -257,18 +257,18 @@ menu "Global build settings"
>  			bool "None"
>  		config PKG_CC_STACKPROTECTOR_REGULAR
>  			bool "Regular"
> -			select GCC_LIBSSP if !USE_MUSL
> +			select GCC_LIBSSP if !USE_MUSL && !USE_GLIBC
>  			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
>  		config PKG_CC_STACKPROTECTOR_STRONG
>  			bool "Strong"
> -			select GCC_LIBSSP if !USE_MUSL
> +			select GCC_LIBSSP if !USE_MUSL && !USE_GLIBC
>  			depends on KERNEL_CC_STACKPROTECTOR_STRONG
>  	endchoice
> =20
>  	choice
>  		prompt "Kernel space Stack-Smashing Protection"
>  		default KERNEL_CC_STACKPROTECTOR_REGULAR
> -		depends on USE_MUSL || !(x86_64 || i386)
> +		depends on USE_MUSL || USE_GLIBC
>  		help
>  		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
>  		config KERNEL_CC_STACKPROTECTOR_NONE diff --git=20
> a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in index=20
> 7d7f34210a..baa0cd3877 100644
> --- a/toolchain/gcc/Config.in
> +++ b/toolchain/gcc/Config.in
> @@ -50,8 +50,8 @@ config GCC_DEFAULT_SSP  config GCC_LIBSSP
>  	bool
>  	prompt "Build gcc libssp" if TOOLCHAINOPTS
> -	depends on !USE_MUSL
> -	default y if !USE_MUSL
> +	depends on !USE_MUSL && !USE_GLIBC
> +	default y if !USE_MUSL || !USE_GLIBC
>  	help
>  	    Enable Stack-Smashing Protection support
> =20
> diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk=20
> index 768ff19060..b908afc50f 100644
> --- a/toolchain/glibc/common.mk
> +++ b/toolchain/glibc/common.mk
> @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
>    endif
>  endif
> =20
> -
>  # -Os miscompiles w. 2.24 gcc5/gcc6
>  # only -O2 tested by upstream changeset  # "Optimize i386 syscall inlini=
ng for GCC 5"
> @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
>  		--without-cvs \
>  		--enable-add-ons \
>  		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> +		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protecto=
r=3Dyes,) \
> +		  $(if
> +$(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=3Dstron
> +g,
> +) \
>  		--enable-kernel=3D4.14.0
> =20
>  export libc_cv_ssp=3Dno


Hi Ian,

Thank you for the detailed analysis of the problem. I saw that this code lo=
oked strange some time ago, but I was too lazy to look closely into it.

Could you please send this as a real patch in git patch format please.

While you are at it could you please extend the description of CONFIG_GCC_L=
IBSSP, I saw not aware that this is a external stack protector implementati=
on and it should only be used when the libc does not support it.

Does anyone know if we can handle uclibc the same way? It would be nice to =
reduce the special handling in general.

Hauke


--_002_KU1PR01MB2022F6CCA5A7142377261125ADB20KU1PR01MB2022apcp_
Content-Type: application/octet-stream;
	name="0001-toolchain-remove-glibc-dependency-on-GCC_LIBSSP.patch"
Content-Description:  0001-toolchain-remove-glibc-dependency-on-GCC_LIBSSP.patch
Content-Disposition: attachment;
	filename="0001-toolchain-remove-glibc-dependency-on-GCC_LIBSSP.patch";
	size=3645; creation-date="Sun, 24 May 2020 14:46:40 GMT";
	modification-date="Sun, 24 May 2020 14:44:35 GMT"
Content-Transfer-Encoding: base64

RnJvbSBlNjE4MmJmODY5ZjgyZmQ4M2E4NWE2MzkwM2NhNDYzNmYxOTNmN2IyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJYW4gQ29vcGVyIDxpYW5jb29wZXJAaG90bWFpbC5jb20+CkRh
dGU6IFN1biwgMjQgTWF5IDIwMjAgMTU6MzU6MzcgKzAxMDAKU3ViamVjdDogW1BBVENIXSB0b29s
Y2hhaW46IHJlbW92ZSBnbGliYyBkZXBlbmRlbmN5IG9uIEdDQ19MSUJTU1AKCkdsaWJjLCBzaW5j
ZSB2ZXJzaW9uIDIuMjUsIGhhcyBpbnRlcm5hbCBzdGFjayBzbWFzaGluZwpwcm90ZWN0aW9uLiBH
Q0MncyBsaWJzc3AgaXMgYW4gZXh0ZXJuYWwgbGlicmFyeSB0aGF0IGlzIG9ubHkKcmVxdWlyZWQg
aWYgdGhlIGxpYmMgaW1wbGVtZW50YXRpb24gZG9lcyBub3QgaW5jbHVkZSBuYXRpdmUgc3RhY2sK
c21hc2hpbmcgcHJvdGVjdGlvbi4KCkdDQydzIGxpYnNzcCBpcyBhbHNvIGluY29tcGF0aWJsZSB3
aXRoIGtlcm5lbCBzdGFjayBwcm90ZWN0aW9uCnNpbmNlIGl0IHByb2R1Y2VzIHVzZXItc3BhY2Ug
Y2FuYXJpZXMuIEFzIGEgcmVzdWx0LCB3aGVuIHVzaW5nCkdDQyBsaWJzc3AsIGtlcm5lbCBzdGFj
ayBzbWFzaGluZyBwcm90ZWN0aW9uIGlzIGF1dG9tYXRpY2FsbHkKZGlzYWJsZWQgYnkgdGhlIGtl
cm5lbCBidWlsZCBzeXN0ZW0uCgpUaGlzIGNvbW1pdCBzd2l0Y2hlcyB0byB1c2luZyBnbGliYydz
IG5hdGl2ZSBTU1AgaW1wbGVtZW50YXRpb24sCndoaWNoIGFsc28gaGFzIHRoZSBlZmZlY3Qgb2Yg
bWFraW5nIGtlcm5lbCBzdGFjayBzbWFzaGluZwpwcm90ZWN0aW9uIG5vdyB3b3JrIGFuZCBhbGxv
d3MgYSBmdWxseSBoYXJkZW5lZCBidWlsZCBvZiBPcGVuV3J0CndpdGggYSB4ODZfNjRfZ2xpYmMg
dG9vbGNoYWluLgoKU2lnbmVkLW9mZi1ieTogSWFuIENvb3BlciA8aWFuY29vcGVyQGhvdG1haWwu
Y29tPgotLS0KIGNvbmZpZy9Db25maWctYnVpbGQuaW4gICAgfCA4ICsrKystLS0tCiB0b29sY2hh
aW4vZ2NjL0NvbmZpZy5pbiAgIHwgNyArKysrLS0tCiB0b29sY2hhaW4vZ2xpYmMvY29tbW9uLm1r
IHwgMyArKy0KIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9jb25maWcvQ29uZmlnLWJ1aWxkLmluIGIvY29uZmlnL0NvbmZpZy1i
dWlsZC5pbgppbmRleCA2MWE5MjY1YWQ3Li5kZDVmMGNmODE3IDEwMDY0NAotLS0gYS9jb25maWcv
Q29uZmlnLWJ1aWxkLmluCisrKyBiL2NvbmZpZy9Db25maWctYnVpbGQuaW4KQEAgLTI0OSw3ICsy
NDksNyBAQCBtZW51ICJHbG9iYWwgYnVpbGQgc2V0dGluZ3MiCiAKIAljaG9pY2UKIAkJcHJvbXB0
ICJVc2VyIHNwYWNlIFN0YWNrLVNtYXNoaW5nIFByb3RlY3Rpb24iCi0JCWRlcGVuZHMgb24gVVNF
X01VU0wKKwkJZGVwZW5kcyBvbiBVU0VfTVVTTCB8fCBVU0VfR0xJQkMKIAkJZGVmYXVsdCBQS0df
Q0NfU1RBQ0tQUk9URUNUT1JfUkVHVUxBUgogCQloZWxwCiAJCSAgRW5hYmxlIEdDQyBTdGFjayBT
bWFzaGluZyBQcm90ZWN0aW9uIChTU1ApIGZvciB1c2Vyc3BhY2UgYXBwbGljYXRpb25zCkBAIC0y
NTcsMTggKzI1NywxOCBAQCBtZW51ICJHbG9iYWwgYnVpbGQgc2V0dGluZ3MiCiAJCQlib29sICJO
b25lIgogCQljb25maWcgUEtHX0NDX1NUQUNLUFJPVEVDVE9SX1JFR1VMQVIKIAkJCWJvb2wgIlJl
Z3VsYXIiCi0JCQlzZWxlY3QgR0NDX0xJQlNTUCBpZiAhVVNFX01VU0wKKwkJCXNlbGVjdCBHQ0Nf
TElCU1NQIGlmICFVU0VfTVVTTCAmJiAhVVNFX0dMSUJDCiAJCQlkZXBlbmRzIG9uIEtFUk5FTF9D
Q19TVEFDS1BST1RFQ1RPUl9SRUdVTEFSCiAJCWNvbmZpZyBQS0dfQ0NfU1RBQ0tQUk9URUNUT1Jf
U1RST05HCiAJCQlib29sICJTdHJvbmciCi0JCQlzZWxlY3QgR0NDX0xJQlNTUCBpZiAhVVNFX01V
U0wKKwkJCXNlbGVjdCBHQ0NfTElCU1NQIGlmICFVU0VfTVVTTCAmJiAhVVNFX0dMSUJDCiAJCQlk
ZXBlbmRzIG9uIEtFUk5FTF9DQ19TVEFDS1BST1RFQ1RPUl9TVFJPTkcKIAllbmRjaG9pY2UKIAog
CWNob2ljZQogCQlwcm9tcHQgIktlcm5lbCBzcGFjZSBTdGFjay1TbWFzaGluZyBQcm90ZWN0aW9u
IgogCQlkZWZhdWx0IEtFUk5FTF9DQ19TVEFDS1BST1RFQ1RPUl9SRUdVTEFSCi0JCWRlcGVuZHMg
b24gVVNFX01VU0wgfHwgISh4ODZfNjQgfHwgaTM4NikKKwkJZGVwZW5kcyBvbiBVU0VfTVVTTCB8
fCBVU0VfR0xJQkMKIAkJaGVscAogCQkgIEVuYWJsZSBHQ0MgU3RhY2stU21hc2hpbmcgUHJvdGVj
dGlvbiAoU1NQKSBmb3IgdGhlIGtlcm5lbAogCQljb25maWcgS0VSTkVMX0NDX1NUQUNLUFJPVEVD
VE9SX05PTkUKZGlmZiAtLWdpdCBhL3Rvb2xjaGFpbi9nY2MvQ29uZmlnLmluIGIvdG9vbGNoYWlu
L2djYy9Db25maWcuaW4KaW5kZXggN2Q3ZjM0MjEwYS4uMzVkZjA4ZDEwNCAxMDA2NDQKLS0tIGEv
dG9vbGNoYWluL2djYy9Db25maWcuaW4KKysrIGIvdG9vbGNoYWluL2djYy9Db25maWcuaW4KQEAg
LTUwLDEwICs1MCwxMSBAQCBjb25maWcgR0NDX0RFRkFVTFRfU1NQCiBjb25maWcgR0NDX0xJQlNT
UAogCWJvb2wKIAlwcm9tcHQgIkJ1aWxkIGdjYyBsaWJzc3AiIGlmIFRPT0xDSEFJTk9QVFMKLQlk
ZXBlbmRzIG9uICFVU0VfTVVTTAotCWRlZmF1bHQgeSBpZiAhVVNFX01VU0wKKwlkZXBlbmRzIG9u
ICFVU0VfTVVTTCAmJiAhVVNFX0dMSUJDCisJZGVmYXVsdCB5IGlmICFVU0VfTVVTTCB8fCAhVVNF
X0dMSUJDCiAJaGVscAotCSAgICBFbmFibGUgU3RhY2stU21hc2hpbmcgUHJvdGVjdGlvbiBzdXBw
b3J0CisJICAgIEVuYWJsZSBzdXBwb3J0IGZvciBHQ0MncyBleHRlcm5hbCBTdGFjay1TbWFzaGlu
ZyBQcm90ZWN0aW9uIGxpYnJhcnkuCisJICAgIFNob3VsZCBvbmx5IGJlIGVuYWJsZWQgaWYgdGhl
IGxpYmMgaW1wbGVtZW50YXRpb24gZG9lcyBub3Qgc3VwcG9ydCBTU1AgbmF0aXZlbHkKIAogY29u
ZmlnIFNKTEpfRVhDRVBUSU9OUwogCWJvb2wKZGlmZiAtLWdpdCBhL3Rvb2xjaGFpbi9nbGliYy9j
b21tb24ubWsgYi90b29sY2hhaW4vZ2xpYmMvY29tbW9uLm1rCmluZGV4IDc2OGZmMTkwNjAuLmI5
MDhhZmM1MGYgMTAwNjQ0Ci0tLSBhL3Rvb2xjaGFpbi9nbGliYy9jb21tb24ubWsKKysrIGIvdG9v
bGNoYWluL2dsaWJjL2NvbW1vbi5tawpAQCAtMzksNyArMzksNiBAQCBpZmVxICgkKEFSQ0gpLG1p
cHM2NCkKICAgZW5kaWYKIGVuZGlmCiAKLQogIyAtT3MgbWlzY29tcGlsZXMgdy4gMi4yNCBnY2M1
L2djYzYKICMgb25seSAtTzIgdGVzdGVkIGJ5IHVwc3RyZWFtIGNoYW5nZXNldAogIyAiT3B0aW1p
emUgaTM4NiBzeXNjYWxsIGlubGluaW5nIGZvciBHQ0MgNSIKQEAgLTYxLDYgKzYwLDggQEAgR0xJ
QkNfQ09ORklHVVJFOj0gXAogCQktLXdpdGhvdXQtY3ZzIFwKIAkJLS1lbmFibGUtYWRkLW9ucyBc
CiAJCS0tJChpZiAkKENPTkZJR19TT0ZUX0ZMT0FUKSx3aXRob3V0LHdpdGgpLWZwIFwKKwkJICAk
KGlmICQoQ09ORklHX1BLR19DQ19TVEFDS1BST1RFQ1RPUl9SRUdVTEFSKSwtLWVuYWJsZS1zdGFj
ay1wcm90ZWN0b3I9eWVzLCkgXAorCQkgICQoaWYgJChDT05GSUdfUEtHX0NDX1NUQUNLUFJPVEVD
VE9SX1NUUk9ORyksLS1lbmFibGUtc3RhY2stcHJvdGVjdG9yPXN0cm9uZywpIFwKIAkJLS1lbmFi
bGUta2VybmVsPTQuMTQuMAogCiBleHBvcnQgbGliY19jdl9zc3A9bm8KLS0gCjIuMjUuMQoK

--_002_KU1PR01MB2022F6CCA5A7142377261125ADB20KU1PR01MB2022apcp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--_002_KU1PR01MB2022F6CCA5A7142377261125ADB20KU1PR01MB2022apcp_--

