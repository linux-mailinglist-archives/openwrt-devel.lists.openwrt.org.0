Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2C21F6C7D
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 18:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnjdXIaCLHUr4wi3AZDHdw8fWq8bWlwHRY/sWtaqXKQ=; b=A0ETenGYTVxmOe
	Zbu1Q9mxzko0EiL3yoC5wEz0+QYFdixtsOKrIFNcu/t+6YQza01UXNwqvxcwdyjixaAKvkT8SMkNj
	bVEMYJSlYMCYHeihOcWLB9j873sfkXp1o70PMvJoKVTh7JDYQQT/G2PIDTYk4DbEbH8LXAT7n00BJ
	h5bMmH31ld0dRQ5bDe5+9tCEHqrMigoKniqIouaPwgTloCpIvSEh7bAHk6UGE19EseawJJu2z/9an
	bhfihG29Bl1MQBRv99x8jvHBoJt5dTb1NyP0EXAQkdvgW/3FUM1ZLWHv4pkRoaHxQ4vKwQQ9PwiT6
	yEbPXVrCCRL+HeTo+9NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQXs-0004Zf-6n; Thu, 11 Jun 2020 16:59:16 +0000
Received: from mail-oln040092253031.outbound.protection.outlook.com
 ([40.92.253.31] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQXl-0004Yj-Gi
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 16:59:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7yXlyfCJVYu+opeZo5mhyLi7qtpxjZTqu5ONvYyv8e0zlFs50OK96ZJ6Cjr0n7SeY0sgq59MzDwnHh43/w17AS5NUYj5yyrwbgnCOxPQVmNzJbqj6clFOORn0TiOb4Qg6KAzbXk9Z2d7GJBv01VIsAU2zvxlk3H5L5auyid8unaMRHCdC3v/nmC/ThsAEkMaJudM47uCo1JFHDzhOUpltePAsrrZoFwHUjTJ4aq37YGUINqw1UoGdlK6sUOy4/r34rLvrFSlEBsgArJ6/OTzJsil+a4zDUfyxzaUfyksjM3J/Ipz7CrZYiuX9iC6lKvs9fOahOMAaHi5lRHGLybpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+nMCO9n+W84W94JNr4Fo9086YnRoDOFo8b8jr2to10=;
 b=jgyMScF8WMHDDiRo30dsCsHP0Vo2JF/bme0umZIWNFZGdJjXocleFjw/qKZ8p9eBl0XK941x3J7zBEDdHM6enBuIWqpWUz5vbqeuJkLUD+xW3dpga1hO74+pGbTJzb4nUwoSZyb41NXfPqgq/0hjuCJUrHlw3snqEMlaYR3UchnUNQFF+yehw9jag47cgZZxBjgsS/FXP+Ib86uQZo1ySHbSB0H+Mr0Yq25GmXMh4JVgmwVCpR0H1sYywkNeBOWN/kLl3rqkbXf+ruHq/eRGV3zTLAhE9Nc3sHWfxS1KsCvzJo6vPYB1QzcefChQllgenmeOOdmE3uUBriTDPO6adA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m+nMCO9n+W84W94JNr4Fo9086YnRoDOFo8b8jr2to10=;
 b=eLvrC8ru76lAVzIYj+5OqmQUTXbCclib3xwoM5g0cBJCVDO7ugMQEw/65XnuPJHI4PZZOPJL4dWdlp/QRxZxSlIvbmG88yWVldnHz+RLrNQfesYFhEZfH8ShFYm6Fro8TUeeEipd0P8u7nAGaNPiG7sCXepPMOgrH3yrsqw/nPIFxrk5qTsknZbvyWVC6CMPUWjN8QZaFRy86hQFYLy/oEV53Wwzs4z5JYxIroLa1hW12+wj66ae7r4j05qciDSbT7IBGBpkFhVxgzZBsVERjpWZVViOYTqFQJ002lQJ148XMsv4N+WZQ4iqfIrJnuR8caPRk4dPUz1ePo5M7ZdZzg==
Received: from PU1APC01FT064.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebe::4d) by
 PU1APC01HT005.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebe::91)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Thu, 11 Jun
 2020 16:59:01 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebe::50) by PU1APC01FT064.mail.protection.outlook.com
 (2a01:111:e400:7ebe::326) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Thu, 11 Jun 2020 16:59:01 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:9C0C7829FAB1C54FD68185E5A9BCE92A09B18D52EFAED3ECC60B0D1C392430ED;
 UpperCasedChecksum:53E1577EDA9C14882ADA85AF2124BD0E4E952D70CD5BFFA8DCA74086F6521A2C;
 SizeAsReceived:7693; Count:49
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3088.018; Thu, 11 Jun 2020
 16:59:01 +0000
Date: Thu, 11 Jun 2020 17:58:52 +0100
From: Ian Cooper <iancooper@hotmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <KU1PR01MB2022DE7D987589F9AAB37E0EAD800@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <d18a4611-ea02-934d-d170-af6717310435@hauke-m.de>
References: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <d18a4611-ea02-934d-d170-af6717310435@hauke-m.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: LO2P265CA0306.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::30) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200611175852.36800290@azeroth>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from azeroth (80.3.14.56) by LO2P265CA0306.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Thu, 11 Jun 2020 16:58:59 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Microsoft-Original-Message-ID: <20200611175852.36800290@azeroth>
X-TMN: [X8U79Vs2XY9UDaG82Xy6tHrMoauJCMl1]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 40fa71a4-fa17-4d24-9ebe-08d80e28bce6
X-MS-TrafficTypeDiagnostic: PU1APC01HT005:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S6P06iqPfuEFFyORPs8koUE1XS9rJ6YvOE93H2qMq6dN5MoW1VQ3+97JdDPyc0La3sMvwIZXWiIV640u7J/fs2xnnoL5/h1KO2JHummI6CGSHVwjPkKK9W+q8NqmmEkWYmcLbR02hKm/eotH8gxYu3kADnlwa1OxztmqHUOStcG0JNnjD/734t6aPYFkn3o26kMkBJJM0+ML0nO1ZwYK6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: k6Y4auneAG6S2Oe5iHl+LGE92ksvzmlNvo6R7QFai41bwA/0rmxUImo0JmErqAPbVl+lJGIFHT0kR6GB/wPBXNBo4h9Mln99LuMvtwJhyH+W4lMUyR5n4FFDhiu3vmJmO9OK2Eu9PYN8tyNWCnmDKA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40fa71a4-fa17-4d24-9ebe-08d80e28bce6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 16:59:01.0072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_095909_743207_D09CC5F0 
X-CRM114-Status: GOOD (  30.42  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.31 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.92.253.31 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] toolchain: remove gcc libssp and use
 libc variant
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 11 Jun 2020 18:15:04 +0200 Hauke Mehrtens <hauke@hauke-m.de> wrote:

> On 6/6/20 1:42 AM, Ian Cooper wrote:
> > Removes the standalone implementation of stack smashing protection
> > in gcc's libssp in favour of the native implementation in musl,
> > glibc and uClibc and introduces a uniform configuration interface.
> > 
> > This also makes kernel-level stack smashing protection available
> > for builds using non-musl libc (subject to architecture support).
> > 
> > Signed-off-by: Ian Cooper <iancooper@hotmail.com>
> > ---
> > 
> > Update fixes an artefact with menuconfig which caused a toolchain
> > menu option to move to the front page of menuconfig due to the
> > removal of a prompt associated with a different CONFIG_ variable.
> > 
> > NOTE: after applying this patch you must do a make dirclean as the
> > entire toolchain and all packages will need to be rebuilt.
> > 
> > This patch does not change the behaviour ot the musl toolchain.
> > There are no changes to the uclibc toolchain since it's already
> > being compiled with it's native ssp implementation enabled.  
> 
> If a toolchain recompilation is only needed for glibc this should be ok.
> 
> 
> > 
> >  config/Config-build.in    | 4 ----
> >  toolchain/Config.in       | 6 +++++-
> >  toolchain/gcc/Config.in   | 8 --------
> >  toolchain/glibc/common.mk | 3 ++-
> >  4 files changed, 7 insertions(+), 14 deletions(-)
> > 
> > diff --git a/config/Config-build.in b/config/Config-build.in
> > index 61a9265ad7..ac1e05d2ff 100644
> > --- a/config/Config-build.in
> > +++ b/config/Config-build.in
> > @@ -249,7 +249,6 @@ menu "Global build settings"
> >  
> >  	choice
> >  		prompt "User space Stack-Smashing Protection"
> > -		depends on USE_MUSL
> >  		default PKG_CC_STACKPROTECTOR_REGULAR
> >  		help
> >  		  Enable GCC Stack Smashing Protection (SSP) for userspace applications
> > @@ -257,18 +256,15 @@ menu "Global build settings"
> >  			bool "None"
> >  		config PKG_CC_STACKPROTECTOR_REGULAR
> >  			bool "Regular"
> > -			select GCC_LIBSSP if !USE_MUSL
> >  			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
> >  		config PKG_CC_STACKPROTECTOR_STRONG
> >  			bool "Strong"
> > -			select GCC_LIBSSP if !USE_MUSL
> >  			depends on KERNEL_CC_STACKPROTECTOR_STRONG  
> 
> Do you know why the user space stack protector depends on the kernel
> stack protector? I assumed this should be independent? You should not
> fix it in this patch, I am just curious and if this is not needed we
> should fix it in an other patch.

No I don't know why this dependency was initially created. I agree that
on the face of it there should not be a dependency. A lot of this code
is 12 - 15 years old, so there was probably a good reason at one point
in time. 

> 
> >  	endchoice
> >  
> >  	choice
> >  		prompt "Kernel space Stack-Smashing Protection"
> >  		default KERNEL_CC_STACKPROTECTOR_REGULAR
> > -		depends on USE_MUSL || !(x86_64 || i386)
> >  		help
> >  		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
> >  		config KERNEL_CC_STACKPROTECTOR_NONE
> > diff --git a/toolchain/Config.in b/toolchain/Config.in
> > index 762f4e10d7..e2af1c2c8e 100644
> > --- a/toolchain/Config.in
> > +++ b/toolchain/Config.in
> > @@ -283,8 +283,12 @@ config USE_MUSL
> >  	default y if !TOOLCHAINOPTS && !EXTERNAL_TOOLCHAIN && !NATIVE_TOOLCHAIN && !(arc)
> >  	bool
> >  
> > +config GCC_LIBSSP
> > +        default n
> > +        bool
> > +  
> 
> As nothing activates GCC_LIBSSP it is always false. I think we can
> remove this, this is not used by any package in the Kconfig part as far
> as I see it and only in some Makefiles and should be removed there
> later, but should not harm.

The approach I was taking was to try to eliminate libssp by making as
few changes as possible. Removing it here is fine, but then also requires
the removal of the libssp package in package/libs/toolchain/Makefile and 
the removal of the dependency from include/package-defaults.mk as you point
out below.

There are two additional removals that should be made: in the host build of
binutils, where the configure flag --enable-libssp can be removed in the file
toolchain/binutils/Makefile and in toolchain/gcc/common.mk to remove the
configure option to build libssp if GCC_LIBSSP is enabled. 

I left these in based on the minimal change philosophy. If you think complete
removal in this way is desirable I'll make the changes, do a bunch of test
builds and send an updated patch.

A git grep shows three references to GCC_LIBSSP in the packages feed. 

> 
> >  config SSP_SUPPORT
> > -	default y if USE_MUSL || GCC_LIBSSP
> > +	default y if !PKG_CC_STACKPROTECTOR_NONE
> >  	bool
> >  
> >  config USE_EXTERNAL_LIBC
> > diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
> > index 7d7f34210a..4b2ba7aaae 100644
> > --- a/toolchain/gcc/Config.in
> > +++ b/toolchain/gcc/Config.in
> > @@ -47,14 +47,6 @@ config GCC_DEFAULT_SSP
> >  	help
> >  	    Use gcc configure option --enable-default-ssp to turn on -fstack-protector-strong by default.
> >  
> > -config GCC_LIBSSP
> > -	bool
> > -	prompt "Build gcc libssp" if TOOLCHAINOPTS
> > -	depends on !USE_MUSL
> > -	default y if !USE_MUSL
> > -	help
> > -	    Enable Stack-Smashing Protection support
> > -
> >  config SJLJ_EXCEPTIONS
> >  	bool
> >  	prompt "Use setjump()/longjump() exceptions" if TOOLCHAINOPTS
> > diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
> > index db4f0fcc0e..f0b95d3cc7 100644
> > --- a/toolchain/glibc/common.mk
> > +++ b/toolchain/glibc/common.mk
> > @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
> >    endif
> >  endif
> >  
> > -
> >  # -Os miscompiles w. 2.24 gcc5/gcc6
> >  # only -O2 tested by upstream changeset
> >  # "Optimize i386 syscall inlining for GCC 5"
> > @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:= \
> >  		--without-cvs \
> >  		--enable-add-ons \
> >  		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> > +		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=yes) \
> > +		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=strong) \
> >  		--enable-kernel=4.14.0
> >  
> >  export libc_cv_ssp=no
> >   
> 
> The libssp package is packaged in package/libs/toolchain/Makefile
> shouldn't it be removed there too?
> Then the dependency in include/package-defaults.mk can then also be removed.
> 
> Hauke
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
