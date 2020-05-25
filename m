Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764161E106C
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 16:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSr/IqTyeDcawAe5JuTY8QWxsA9SHk5+IjFI04ChyZQ=; b=tscWKivbOjBBcX
	ITPfh5YqIDIUZbLgIWJibOT3LcX5PbV8sABMEO4ATImgNiHD0Y65Lw/AU5iUE8O884DStaMjZS37c
	5c0IBykyQ2CI02d5HMWi02AylLFoNQc2eZwYW72pbEE2UTWF9FEFnZroMEsEfcfLcqE1NmfDINKaE
	HNg/NkttMWxxwsNukhay0A7JQBpXKhPfTNRCAHvPQRX8Bt70NoG8sWbRX7jToBGuFGtRQp52RmMuP
	mGf5nW/0Vg/X+hOCDwPOWdYjtvBbQwlwmScLtCDe7HZzXmjXLBq8tiWVh25YBP4Cx9kSo6r1SkdwH
	pzdDVROgoZrGcKQ+k1Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdE1X-0007bC-13; Mon, 25 May 2020 14:24:15 +0000
Received: from mail-oln040092253077.outbound.protection.outlook.com
 ([40.92.253.77] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdE1M-0007Zm-V7
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 14:24:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EXsAGq/KoenmTNgqje+uq8NebXCN9NbF3ToPuM25l7BXTfcrGV0MhKD344HG6GJX4/iYvX8T9OJNKz41/jwNjFc9nyDlh5ClFfxelRMDvb1x4Zx+rUc/P2m+BftlZ/o/5cHZnRXMIoDLRZz+DDL9WeFeIz4x5p+IlNNLpi1Zn/jxzYon7Sp/l8kP9ionaD+6lT5zLws/hva3PbFYjYofc/aTFCmQ++5H3BzI1uneHN6Sn6O8LwXN5K6Jrp2qhWlhrN4UqzHyhEFgk3THZDtsE3o/3LR1nhKd5UrJe4kJm2IfWHsv5afY/G7XZda1PXZJ6XlW9vPDTArHwVX8+9ofTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vsYfuxmxs0XgRlE8Wqs7mGble2p7PH/im6H5YopTT08=;
 b=hW2iZU+2/F+gtwPTu0SvhGEY2Q7AA06sOD4BYLbUI5MIHCfWUEiWo5gncy6VGS8/mi2rChMHGtqldLY9ht5134WlqXZlxfeh9H6drCZT0b5kcBRCSh0yL1WHkMDYYt9Os1pnAf8iXDOWemW0oROgJZp5CLxbRWMrXOTxSicDL1ZIREEY7a2+aFwjpciVSTyDbpfXTu0VNByECd0f0sEhZ/QTKkt5gUl1QbJ5gtxNmPRGDIGGxCnEUo5+3EHYBwQH3yrZ/jraCIGkLxVD+wbGRZBQTXJcjkwQ0a6sw38z9sdBJtOnaQt2PUwmv7brDNeCrfjfOtHCTSaDa2wEmx4YMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vsYfuxmxs0XgRlE8Wqs7mGble2p7PH/im6H5YopTT08=;
 b=g/O+GVR5Wz204KZVHORAYBDeq9ifR5rX3qlFCOoR7MtLcoiIdgURmTdOXlmLTvNJ28TmYV9RsckttZgL5z4cyOKbikf2Jr7p950QM1+IfHRAFjjIS2lxABHCWDN2O+zVqOX8UiyCN6thTTI6h+QS1D5CI5a4fiYFRCTVN0KVQ1/xmV/Psu7GLZO153or2iQRfanSWAn9xS4RYP8jVh7WtO2iVaytryuTBemXky4KLN2tt8Jq+z5aLEKc/sd9Ky82akFSyffvYkhqqmyz/jzdEMbRkPHFSnyc969Vp1AZAlSjamu16vhDVvmxC1AAwmouj+Sv+PAja7lvwBEWSw0gKQ==
Received: from HK2APC01FT053.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4b) by
 HK2APC01HT177.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::488)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Mon, 25 May
 2020 14:23:56 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebc::51) by HK2APC01FT053.mail.protection.outlook.com
 (2a01:111:e400:7ebc::264) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Mon, 25 May 2020 14:23:56 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 14:23:56 +0000
From: Ian Cooper <iancooper@hotmail.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] Fix for missing kernel stack-protector in x86_64
 glibc builds
Thread-Index: AdYxviW8HcgxTYvsSUSQKKffs49D6wABQqPwAAENYIAANhSXUA==
Date: Mon, 25 May 2020 14:23:56 +0000
Message-ID: <KU1PR01MB2022C9A30F794929084DF10EADB30@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
References: <KU1PR01MB2022F88F8DD228B43250EAE7ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <KU1PR01MB20221925A6CEFA6FA8FE9AE8ADB20@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <7b754279-3239-ea27-b321-4c7f8037e7d9@hauke-m.de>
In-Reply-To: <7b754279-3239-ea27-b321-4c7f8037e7d9@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:DEB3B6228475F2E3022ACBB7907C53968CD12B207B11EB8427CA7BC85F264203;
 UpperCasedChecksum:8B2F4C6EEBCA68679A555E95AA8CDA85145D7E61423BBAA5DB0FB0EC6BE71C1B;
 SizeAsReceived:7129; Count:44
x-tmn: [mmsSUvLKv9ky5kUt5cSqsL4pivfwxVy6]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c14b6c7d-a69a-4981-7c7f-08d800b74239
x-ms-traffictypediagnostic: HK2APC01HT177:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lYrBtE3zNhZInM5g2YyursbcFnEJszotRirMaXuDlshnInsODVRI3ZEoBzLShirZ7A10yjFjQvLcenxdT0SbNkTPWLOtXal4EZjmSRx5MZX8qXQ8qq4u74Nlas/oXZrAFUtq7VAKXA/rO3B/ehsQtJOV5PVQSyN5CwZL82DzaRlS+xXFYMvfEG3HbI4u2v9GJ8U2U7nOSYB4wTfe0a79T5vuzZoXwpY77zLU4xRuc6bAHGZq/7sPmjm1bRwwpNSC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: OOZFe0NJaTgpLAacwR/gV+mxMPrdoWCtoUiZroM03dYvq8c4cw1cTTnfNaDr/7S807bSx83/rU3NB5oKTfY/ejnetDIeHCqUvq60e3CyVCAbZGfjCHFNLBk8r/dFPuCIqRL3zzq3gTy/aYPf6j4PTA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c14b6c7d-a69a-4981-7c7f-08d800b74239
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 14:23:56.2384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_072405_097533_96C7FE81 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.92.253.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.77 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Yes, it appears we can handle uclibc the same way

Uclibc-ng supports SSP in the library itself, so use of GCC_LIBSSP can eliminated. I'll do some testing ...

config UCLIBC_HAS_SSP
        bool "Support for GCC stack smashing protector"
        depends on !HAVE_NO_SSP
        help
          Add code to support GCC's -fstack-protector[-all] option to uClibc.
          This requires GCC 4.1 or newer.  GCC does not have to provide libssp,
          the needed functions are added to ldso/libc instead.

          GCC's stack protector is a reimplementation of IBM's propolice.
          See http://www.trl.ibm.com/projects/security/ssp/ and
          http://www.linuxfromscratch.org/hints/downloads/files/ssp.txt
          for details.

          Note that NOEXECSTACK on a kernel with address space randomization
          is generally sufficient to prevent most buffer overflow exploits
          without increasing code size.  This option essentially adds debugging
          code to catch them. 

> -----Original Message-----
> From: Hauke Mehrtens [mailto:hauke@hauke-m.de]
> Sent: 24 May 2020 13:33
> To: Ian Cooper <iancooper@hotmail.com>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] Fix for missing kernel stack-protector in
> x86_64 glibc builds
> 
> 
> Does anyone know if we can handle uclibc the same way? It would be nice to
> reduce the special handling in general.
> 
> Hauke


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
