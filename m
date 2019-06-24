Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF5E51CF6
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 23:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Er4K6dm1rDibvASrJ+EADeNu3RVcph8cxn3OXJLL0Do=; b=A5iczEXWh0Xove
	YPniGj72Fvw037XccjfBp1ewjyNf8OI/my1TF8AN71NRbx0rKy6jOQsICN0ApRhVSHrs4th8AQ+mZ
	1eshRZ7kAKoL9gVZ5Ho3Plr1HGARka7a1cl/XEOxVk9rzNz0IxaA3Art/u1/DIpcbEmUJNHIXooER
	DdA60SLvs8jOr3ri2MlQix7WFdGRZuW58bKx0nAGgSTO8XCQOqDotC8RiaSpd86NlwOuih36pmoiE
	XxwS143ZYLBZGpGZFPM0HEBU8vn10V8mfdNVv1Haz7XvtFtl1CPqqGZ/QC4Pi/Rtl4x3mBOMt8q/r
	M8T+GFkDxav83t952j9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWKG-00054t-3o; Mon, 24 Jun 2019 21:16:32 +0000
Received: from mail-bn3nam01on0719.outbound.protection.outlook.com
 ([2a01:111:f400:fe41::719]
 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWJr-0004w6-8E
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 21:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wavesemi.onmicrosoft.com; s=selector1-wavesemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x9E8W3rxSrngeZbAi/Vo56L1PD1L1vEqWIIaN030/94=;
 b=jzzHjU8cU01DYfCDu3WE28Fx6talann16tiHIu5Nq/DoSMkSWVT8UKLBmrOJxI6mM5X2/4WY0/03ibM99L1hfUeZwVsefKgCqvyEhqF4kIniXSyY3PFBPmgav0mzgGut6Msgfw/xQvKW0C0fWyo5OqKCISLWZojGLK2pMdv+NAY=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1760.namprd22.prod.outlook.com (10.164.206.163) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Mon, 24 Jun 2019 21:16:02 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::6975:b632:c85b:9e40]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::6975:b632:c85b:9e40%2]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 21:16:02 +0000
From: Paul Burton <paul.burton@mips.com>
To: "petrcvekcz@gmail.com" <petrcvekcz@gmail.com>
Thread-Topic: [PATCH v2 0/7] MIPS: lantiq: irq: Various fixes, add SMP support
Thread-Index: AQHVJ7CjVKON6u8MZ0a3RFHnFgNU16arVKqA
Date: Mon, 24 Jun 2019 21:16:02 +0000
Message-ID: <MWHPR2201MB1277EA8336E41AB191A2C04BC1E00@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0045.namprd07.prod.outlook.com
 (2603:10b6:a03:60::22) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a21adc5-44c1-4622-239d-08d6f8e92942
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1760; 
x-ms-traffictypediagnostic: MWHPR2201MB1760:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR2201MB1760ACD12BA8ECED83C92069C1E00@MWHPR2201MB1760.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39840400004)(136003)(366004)(376002)(396003)(189003)(199004)(486006)(1361003)(14444005)(53936002)(7736002)(68736007)(6916009)(76176011)(386003)(66066001)(25786009)(4326008)(186003)(305945005)(42882007)(2501003)(316002)(256004)(74316002)(6506007)(99286004)(54906003)(476003)(2351001)(52116002)(11346002)(446003)(44832011)(7696005)(26005)(8676002)(102836004)(6116002)(5640700003)(3846002)(1730700003)(9686003)(71190400001)(6306002)(71200400001)(14454004)(5660300002)(229853002)(8936002)(52536014)(1411001)(6436002)(966005)(64756008)(66556008)(33656002)(66446008)(66476007)(6246003)(73956011)(2906002)(55016002)(478600001)(66946007)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1760;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ia74aolydG8nl+pPMNncfto8D9oTWDrrULVjDKyXhlxa488vQJP9QLc3dNdCUH+sRNTFam+gkUBfhYGl0aVKikJ4ZpZtn5OCGEnLL12SOk4rRauy+zSBQscAsaxeKkNGiMzw4owVtGBCSWdByjun8tf2tT8Z/BWhotdaoYL2440kgHKOdF6uVVJ52wQ/7hWD0smr6y83bKD44sRG2CtfSTCkWxRX4wZvdavTGdkCvJjvuKuPQDHiz2OTMel5/TJL4risXAqrHywKWmHcPYvqAmkk3vhu9uDb1sNTHRfJ1Ej20ZpjclCXqrYqFdVGalg5sKAylxmZzKuqPQKx8MWYfO9gonjAF5X/Lqw6PwIVY9KYHMKTqnf0FzWNBYn2b7GnB+dUPE+ZB6OVM/d8sGj9NgZR8OUJan6m2DLXf4vf9qM=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a21adc5-44c1-4622-239d-08d6f8e92942
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 21:16:02.5594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1760
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_141607_291395_47CA48F4 
X-CRM114-Status: GOOD (  22.94  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe41:0:0:0:719 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/7] MIPS: lantiq: irq: Various fixes,
 add SMP support
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
Cc: "pakahmar@hotmail.com" <pakahmar@hotmail.com>,
 "hauke@hauke-m.de" <hauke@hauke-m.de>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "john@phrozen.org" <john@phrozen.org>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Petr Cvek <petrcvekcz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

petrcvekcz@gmail.com wrote:
> From: Petr Cvek <petrcvekcz@gmail.com>
> 
> Hi,
> 
> While hacking with my modem in openwrt I've found in the lantiq vrx268 SoC
> there is only a support for the processes SMP and not for interrupt
> routing. After some looking into vendors released source codes (probably
> intel UGW) and by observing SoC's memory map I've found out there is
> a second interrupt controller (ICU) for the second VPE. The last patch of
> this series adds a support for it. The code is different from intel UGW's
> set affinity function, where the interrupt line gets enabled (switched)
> to the second ICU. Instead only the cpumask gets changed in my set affinity.
> The change will be written into the hardware after the next irq enable call.
> This was changed because of stability reasons in the high irq load of
> the SoC.
> 
> The first part of the series are more or less cosmetic changes of long
> names, different types and few fixed warnings from checkpatch. There is
> a fix in part 5, where I've found the missing bitfield clear before ORing
> with a new value.
> 
> The SMP in part 7 changes devicetree definition for a register regions
> of the ICU. Previously, there was a region for a single IM (a mask/unmask/
> enable/... set for 32 interrupts). Now it is the whole ICU. It match more
> the hardware layout. There is no compatibility issue in vanilla, only
> openwrt was affected by these devicetrees.
> 
> Also in the UGW's ltq_enable_irq(), there was a status bit reset before
> the actual IRQ line enable. It was marked as "Bug fix for fake interrupt".
> The code seems to work without it (vanilla and new SMP), but I've made
> an assert if this bit is set before the actual enable. The assert reported
> these IRQ sources:
> 
> 22:00004000     spi_rx  (only when SPI is accessed)
> 63:00800000     mei_cpe (permanent 1s)
> 112:00000100    asc_tx
> 
> But the code seems to run anyway I didn't include the status bit reset part.
> 
> The SMP affinity update is done every IRQ enable, where it extract the first
> valid VPE from affinity cpumask. This is standard in the kernel.
> 
> The code was tested in nosmp configuration on TPLink W9980B in openwrt tree
> (patched kernel v4.14). The lantiq devices other than vrx268 were not
> tested.
> 
> Discussion on openwrt related parts for lantiq ICU SMP is here (devicetrees,
> things not in the vanilla kernel, RFC versions of the patch):
> https://patchwork.ozlabs.org/patch/1100832/
> 
> Changes since v1:
> * Added a define for IM size
> * Changed ltq_icu_membase array size to NR_CPUS so for_each_possible_cpu()
> will not overflow
> * Removed affinity auto rotation (can be add later from v1 if required)
> * Commit messages wordings
> 
> Petr Cvek (7):
> MIPS: lantiq: Move macro directly to iomem function
> MIPS: lantiq: Change variables to the same type as the source
> MIPS: lantiq: Fix attributes of of_device_id structure
> MIPS: lantiq: Remove unused macros
> MIPS: lantiq: Fix bitfield masking
> MIPS: lantiq: Shorten register names, remove unused macros
> MIPS: lantiq: Add SMP support for lantiq interrupt controller
> 
> arch/mips/lantiq/irq.c | 177 +++++++++++++++++++++++++++++------------
> 1 file changed, 126 insertions(+), 51 deletions(-)

Series applied to mips-next.

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
