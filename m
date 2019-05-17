Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0836221B22
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 18:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=22v1K7uK2Gs6n5adntvSBpcfnx1tbp2rIAcVGlEMeTw=; b=WHjADWUn3alZepn+AQIQc1Tlh
	Ii7ylzgfBjAKNi0iXMF6P6Q+nd7K9jL5WW92SkC5VlPQpqv3oBVl3MdDH6N94ExzxM/4QXCZWUlje
	VKvtDauKWyPBNx1lOKDeECM06I7ABPfvwBBHVBaMdxP0njt8WJhBNZKNS77rEn352JVNnpuNQqtg9
	NOh7+rGNmCoSUVVCR86Q+VJCPTu1vJhjp3PONpZpLnZ7KF+bvalwSgaARQi2lVThuJawY4Gbj7x24
	B2AnrBQdycjx77LoRmCEjcq0S3OXcL3f/ENC6FVCrg2HIO080UNI1ARxCXtDtoii84EJGNMI/qysU
	3Vd7uj0EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfKU-0000ny-SO; Fri, 17 May 2019 16:03:30 +0000
Received: from mail-oln040092254059.outbound.protection.outlook.com
 ([40.92.254.59] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfKL-0000na-FW
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 16:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2RPtgNMZoBmxJeaz3hNjchlQ+yTKTa21jxSwGed5sRk=;
 b=Z6+pHHYP0N5kL4phEvK+ZFDZIgPb8vovllmzbT2ZoGiXzyBA14Mczr/lMGELP/F8/4mHWtk/PTeBg3mzaimgGuOwyq5hu5TPGoB4orzekWQ2hDwxef3SxMXGGFqxZ2jvKFszP+vNNmGcBBUvg7E4NNoBultxv79t5xZN2DHv8mkrkElhe69Ws1H3YAfyQ4zDBapCOEALhLyxZ324yTp0NDvrPdyPv2ynL8h8eSG4bPwyZkbUnJwrsaJRrVZWCh3e3eDIQ88pc5UlxGw7rdkD1RZCgBtdS94fg0Bg30O5UkcOEeDIsL9E1oNgWja2zyJ+SUC+oLv2pWfMRcq/tnOuIw==
Received: from PU1APC01FT021.eop-APC01.prod.protection.outlook.com
 (10.152.252.54) by PU1APC01HT205.eop-APC01.prod.protection.outlook.com
 (10.152.253.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11; Fri, 17 May
 2019 16:03:08 +0000
Received: from SG2PR0201MB2190.apcprd02.prod.outlook.com (10.152.252.53) by
 PU1APC01FT021.mail.protection.outlook.com (10.152.252.221) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Fri, 17 May 2019 16:03:08 +0000
Received: from SG2PR0201MB2190.apcprd02.prod.outlook.com
 ([fe80::e1f7:cc1b:47ea:aa8]) by SG2PR0201MB2190.apcprd02.prod.outlook.com
 ([fe80::e1f7:cc1b:47ea:aa8%3]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 16:03:08 +0000
From: Ahmar Aftab <pakahmar@hotmail.com>
To: Petr Cvek <petrcvekcz@gmail.com>, "openwrt-devel@lists.openwrt.org"
 <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH v5] kernel: lantiq: add support for SMP IRQ routing
Thread-Index: AQHVDGKpQG6Bu2Z0ZEKF/XD+qs3Tl6ZveEhv
Date: Fri, 17 May 2019 16:03:08 +0000
Message-ID: <SG2PR0201MB2190923946B6E21C579ECC28C20B0@SG2PR0201MB2190.apcprd02.prod.outlook.com>
References: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
In-Reply-To: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C39DD68B4B4E5E3B51F81C0939E29A6074B8C970F656176DE28F0DECBF4396C0;
 UpperCasedChecksum:3885F94F5147DA43C1C57834A4829A69DFABF243E365632051B960E6F3E094CF;
 SizeAsReceived:6816; Count:43
x-tmn: [excz/ckBhTlyuOQQgLfWlgH0cODMbjIM]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:PU1APC01HT205; 
x-ms-traffictypediagnostic: PU1APC01HT205:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: TSWEch+zOGDWttoTAAUbBUgVeyl0rTGPuErlGP5Vl1A2Xicm7fNCpTsp1yf9+JQxHn1WE4fdpYzjnp6qpbfCxRJchex5QoD+7RmvEPx/xKH+wKmXa4RBo8VxIXpAZDoR2yIFu89KdKPYir2LwWkN4mxRAganZFPuwj3v3XdvRiKzWeNuvhqyZihXkL7EY860
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1040328f-c192-48c3-fc27-08d6dae127b5
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 16:03:08.6927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_090321_905961_FB7997A4 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.254.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pakahmar[at]hotmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v5] kernel: lantiq: add support for SMP
 IRQ routing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: multipart/mixed; boundary="===============2273790448502992826=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2273790448502992826==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0201MB2190923946B6E21C579ECC28C20B0SG2PR0201MB2190_"

--_000_SG2PR0201MB2190923946B6E21C579ECC28C20B0SG2PR0201MB2190_
Content-Type: text/plain; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

Hi everyone, I am not sure if I need to reply to both emails but I shall do=
 so anyway.

Regarding the patches, I am using it already for my 2 routers, namely TPLin=
k TD-W8980 and HomeHub 5A and at the time when these patches were first int=
roduced there were considerable improvements in LAN and WiFi speeds. Now as=
 OpenWrt has improved over time and it seems it=92s also catching up to the=
 patches slowly but still the patches have more to offer than what is alrea=
dy there in OpenWrt.



These patches, when applied to the base system, created far better performa=
nce for Wifi on such low end devices. I was able to get speeds around 60mbp=
s on 75mbps link speed and around 120mbps on 150mbps link speed. 150mbps li=
nk is when I turn on force 40mhz in settings on the router. After applying =
these patches I never experienced a crash on any of my routers. Although be=
fore they would crash if there was too much CPU load and also if someone wa=
s trying to fetch data from the connected HardDrive. But with these patches=
, CPU load seems to be adjusting itself quite nicely. At the moment I am us=
ing TD-W8980 with a external drive 500gb and it=92s running transmission an=
d aria2 and also collectd. BT HomeHub 5A is running 4mb ADSL with AdBlock a=
nd OpenVPN and VPN-Policy-Routing,. It=92s also running an instance of coll=
ectd to collect data from itself and TD-W8980.



I can provide further details if needed. In my opinion the patch-set should=
 be merged so it can improve the performance of these devices for everyone.



Regards,

Ahmar





Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10



________________________________
From: Petr Cvek <petrcvekcz@gmail.com>
Sent: Friday, May 17, 2019 8:44:35 AM
To: openwrt-devel@lists.openwrt.org
Cc: Hauke Mehrtens; pakahmar@hotmail.com
Subject: [PATCH v5] kernel: lantiq: add support for SMP IRQ routing

Some lantiq SoCs have multiple VPE support but no support for the IRQ
routing, so only the first VPE is receiving interrupts. This patch adds
support for rerouting interrupts to the other VPE. Basically it expands
the current ICU driver for the second controller, adds new address
ranges to the devicetree and fixes the interrupt masking on the second
core.
Some reg access locking was added too.

The mode of the operation is that userdefined IRQ affinity CPU mask is
either cycled between VPEs in every IRQ enable call
(AUTO_AFFINITY_ROTATION), or only the first VPE from affinity CPU mask
is used (AUTO_AFFINITY_ROTATION not defined).

Tested on TD-W9980B device (both VPEs used as linux CPUs).

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 .../0901-add-icu-smp-support.patch            | 436 ++++++++++++++++++
 1 file changed, 436 insertions(+)
 create mode 100644
target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch

diff --git
a/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
new file mode 100644
index 0000000000..eaefdf27a3
--- /dev/null
+++ b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
@@ -0,0 +1,436 @@
+--- a/arch/mips/lantiq/irq.c   2019-03-10 20:44:58.755134326 +0100
++++ b/arch/mips/lantiq/irq.c   2019-05-17 05:13:50.302149058 +0200
+@@ -22,14 +22,21 @@
+ #include <lantiq_soc.h>
+ #include <irq.h>
+ ++/*
++ * If defined, every IRQ enable call will switch the interrupt to
++ * the other VPE. You can limit used VPEs from the userspace.
++ *
++ * If not defined, only the first configured VPE from the userspace
++ * will be used.
++ */
++#define AUTO_AFFINITY_ROTATION
++
+ /* register definitions - internal irqs */
+-#define LTQ_ICU_IM0_ISR               0x0000
+-#define LTQ_ICU_IM0_IER               0x0008
+-#define LTQ_ICU_IM0_IOSR      0x0010
+-#define LTQ_ICU_IM0_IRSR      0x0018
+-#define LTQ_ICU_IM0_IMR               0x0020
+-#define LTQ_ICU_IM1_ISR               0x0028
+-#define LTQ_ICU_OFFSET                (LTQ_ICU_IM1_ISR - LTQ_ICU_IM0_ISR)
++#define LTQ_ICU_ISR           0x0000
++#define LTQ_ICU_IER           0x0008
++#define LTQ_ICU_IOSR          0x0010
++#define LTQ_ICU_IRSR          0x0018
++#define LTQ_ICU_IMR           0x0020
+ + /* register definitions - external irqs */
+ #define LTQ_EIU_EXIN_C                0x0000
+@@ -49,24 +56,27 @@
+  */
+ #define LTQ_ICU_EBU_IRQ               22
+ +-#define ltq_icu_w32(m, x, y)        ltq_w32((x), ltq_icu_membase[m] + (=
y))
+-#define ltq_icu_r32(m, x)     ltq_r32(ltq_icu_membase[m] + (x))
++#define ltq_icu_w32(vpe, m, x, y)     \
++      ltq_w32((x), ltq_icu_membase[vpe] + m*0x28 + (y))
++
++#define ltq_icu_r32(vpe, m, x)                \
++      ltq_r32(ltq_icu_membase[vpe] + m*0x28 + (x))
+ + #define ltq_eiu_w32(x, y)   ltq_w32((x), ltq_eiu_membase + (y))
+ #define ltq_eiu_r32(x)                ltq_r32(ltq_eiu_membase + (x))
+ +-/* our 2 ipi interrupts for VSMP */
+-#define MIPS_CPU_IPI_RESCHED_IRQ      0
+-#define MIPS_CPU_IPI_CALL_IRQ         1
+-
+ /* we have a cascade of 8 irqs */
+ #define MIPS_CPU_IRQ_CASCADE          8
+ ++#define MAX_VPES 2
++
+ static int exin_avail;
+ static u32 ltq_eiu_irq[MAX_EIU];
+-static void __iomem *ltq_icu_membase[MAX_IM];
++static void __iomem *ltq_icu_membase[MAX_VPES];
+ static void __iomem *ltq_eiu_membase;
+ static struct irq_domain *ltq_domain;
++static DEFINE_SPINLOCK(ltq_eiu_lock);
++static DEFINE_RAW_SPINLOCK(ltq_icu_lock);
+ static int ltq_perfcount_irq;
+ + int ltq_eiu_get_irq(int exin)
+@@ -78,50 +88,104 @@
+ + void ltq_disable_irq(struct irq_data *d)
+ {
+-      u32 ier =3D LTQ_ICU_IM0_IER;
+-      int offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-      int im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned long offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
++      unsigned long im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned int vpe;
++      unsigned long flags;
+ +      offset %=3D INT_NUM_IM_OFFSET;
+-      ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
++
++      raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++      for_each_present_cpu(vpe) {
++              ltq_icu_w32(vpe, im,
++                          ltq_icu_r32(vpe, im, LTQ_ICU_IER) & ~BIT(offset=
),
++                          LTQ_ICU_IER);
++      }
++      raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ + void ltq_mask_and_ack_irq(struct irq_data *d)
+ {
+-      u32 ier =3D LTQ_ICU_IM0_IER;
+-      u32 isr =3D LTQ_ICU_IM0_ISR;
+-      int offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-      int im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned long offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
++      unsigned long im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned int vpe;
++      unsigned long flags;
+ +      offset %=3D INT_NUM_IM_OFFSET;
+-      ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
+-      ltq_icu_w32(im, BIT(offset), isr);
++
++      raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++      for_each_present_cpu(vpe) {
++              ltq_icu_w32(vpe, im,
++                          ltq_icu_r32(vpe, im, LTQ_ICU_IER) & ~BIT(offset=
),
++                          LTQ_ICU_IER);
++              ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
++      }
++      raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ EXPORT_SYMBOL(ltq_mask_and_ack_irq);
+ + static void ltq_ack_irq(struct irq_data *d)
+ {
+-      u32 isr =3D LTQ_ICU_IM0_ISR;
+-      int offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-      int im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned long offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
++      unsigned long im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned int vpe;
++      unsigned long flags;
+ +      offset %=3D INT_NUM_IM_OFFSET;
+-      ltq_icu_w32(im, BIT(offset), isr);
++
++      raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++      for_each_present_cpu(vpe) {
++              ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
++      }
++      raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ + void ltq_enable_irq(struct irq_data *d)
+ {
+-      u32 ier =3D LTQ_ICU_IM0_IER;
+-      int offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-      int im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned long offset =3D d->hwirq - MIPS_CPU_IRQ_CASCADE;
++      unsigned long im =3D offset / INT_NUM_IM_OFFSET;
++      unsigned int vpe;
++      unsigned long flags;
+ +      offset %=3D INT_NUM_IM_OFFSET;
+-      ltq_icu_w32(im, ltq_icu_r32(im, ier) | BIT(offset), ier);
++
++#if defined(AUTO_AFFINITY_ROTATION)
++      vpe =3D cpumask_next(smp_processor_id(),
++                         irq_data_get_effective_affinity_mask(d));
++
++      /*
++       * There is a theoretical race condition if affinity gets changed
++       * meanwhile, but it would only caused a wrong VPE to be used until
++       * the next IRQ enable. Also the SoC has only 2 VPEs which fits
++       * the single u32. You can move spinlock before first mask readout
++       * and add it to ltq_icu_irq_set_affinity.
++       */
++
++      if (vpe >=3D nr_cpu_ids)
++              vpe =3D cpumask_first(irq_data_get_effective_affinity_mask(=
d));
++#else
++      vpe =3D cpumask_first(irq_data_get_effective_affinity_mask(d));
++#endif
++
++      /* This shouldn't be even possible, maybe during CPU hotplug spam *=
/
++      if (unlikely(vpe >=3D nr_cpu_ids))
++              vpe =3D smp_processor_id();
++
++      raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++
++      /* bugfix for fake interrupts? from UGW 3.x kernel */
++      ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
++
++      ltq_icu_w32(vpe, im, ltq_icu_r32(vpe, im, LTQ_ICU_IER) | BIT(offset=
),
++                  LTQ_ICU_IER);
++
++      raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ + static int ltq_eiu_settype(struct irq_data *d, unsigned int type)
+ {
+        int i;
++      unsigned long flags;
+ +      for (i =3D 0; i < exin_avail; i++) {
+                if (d->hwirq =3D=3D ltq_eiu_irq[i]) {
+@@ -158,8 +222,12 @@
+                        if (edge)
+                                irq_set_handler(d->hwirq, handle_edge_irq)=
;
+ +-                    ltq_eiu_w32(ltq_eiu_r32(LTQ_EIU_EXIN_C) |
+-                              (val << (i * 4)), LTQ_EIU_EXIN_C);
++                      // v3.10 kernel has this atomic for SMP
++                      spin_lock_irqsave(&ltq_eiu_lock, flags);
++                      ltq_eiu_w32((ltq_eiu_r32(LTQ_EIU_EXIN_C) &
++                                  (~(7 << (i * 4)))) | (val << (i * 4)),
++                                  LTQ_EIU_EXIN_C);
++                      spin_unlock_irqrestore(&ltq_eiu_lock, flags);
+                }
+        }
+ +@@ -203,6 +271,21 @@
+        }
+ }
+ ++#if defined(CONFIG_SMP)
++static int ltq_icu_irq_set_affinity(struct irq_data *d,
++                                  const struct cpumask *cpumask, bool for=
ce)
++{
++      struct cpumask tmask;
++
++      if (!cpumask_and(&tmask, cpumask, cpu_online_mask))
++              return -EINVAL;
++
++      irq_data_update_effective_affinity(d, &tmask);
++
++      return IRQ_SET_MASK_OK;
++}
++#endif
++
+ static struct irq_chip ltq_irq_type =3D {
+        .name =3D "icu",
+        .irq_enable =3D ltq_enable_irq,
+@@ -211,6 +294,9 @@
+        .irq_ack =3D ltq_ack_irq,
+        .irq_mask =3D ltq_disable_irq,
+        .irq_mask_ack =3D ltq_mask_and_ack_irq,
++#if defined(CONFIG_SMP)
++      .irq_set_affinity =3D ltq_icu_irq_set_affinity,
++#endif
+ };
+ + static struct irq_chip ltq_eiu_type =3D {
+@@ -224,15 +310,19 @@
+        .irq_mask =3D ltq_disable_irq,
+        .irq_mask_ack =3D ltq_mask_and_ack_irq,
+        .irq_set_type =3D ltq_eiu_settype,
++#if defined(CONFIG_SMP)
++      .irq_set_affinity =3D ltq_icu_irq_set_affinity,
++#endif
+ };
+ + static void ltq_hw_irq_handler(struct irq_desc *desc)
+ {
+-      int module =3D irq_desc_get_irq(desc) - 2;
++      unsigned int module =3D irq_desc_get_irq(desc) - 2;
+        u32 irq;
+-      int hwirq;
++      irq_hw_number_t hwirq;
++      unsigned int vpe =3D smp_processor_id();
+ +-    irq =3D ltq_icu_r32(module, LTQ_ICU_IM0_IOSR);
++      irq =3D ltq_icu_r32(vpe, module, LTQ_ICU_IOSR);
+        if (irq =3D=3D 0)
+                return;
+ +@@ -253,6 +343,7 @@
+ static int icu_map(struct irq_domain *d, unsigned int irq,
irq_hw_number_t hw)
+ {
+        struct irq_chip *chip =3D &ltq_irq_type;
++      struct irq_data *data;
+        int i;
+ +      if (hw < MIPS_CPU_IRQ_CASCADE)
+@@ -262,6 +353,10 @@
+                if (hw =3D=3D ltq_eiu_irq[i])
+                        chip =3D &ltq_eiu_type;
+ ++    data =3D irq_get_irq_data(irq);
++
++      irq_data_update_effective_affinity(data, cpumask_of(0));
++
+        irq_set_chip_and_handler(irq, chip, handle_level_irq);
+ +      return 0;
+@@ -276,28 +371,40 @@
+ {
+        struct device_node *eiu_node;
+        struct resource res;
+-      int i, ret;
++      int i, ret, vpe;
+ +-    for (i =3D 0; i < MAX_IM; i++) {
+-              if (of_address_to_resource(node, i, &res))
+-                      panic("Failed to get icu memory range");
++      /* TODO someone pls update+test devicetr5ee for danube (not SMP,
++       * foreach bellow should run once), ar9, amazon, falcon (no info).
++       * Addresses are known only for vr9, tested only in generic SMP
++       * ( =3D no VPE reserved for firmware).
++       */
++      for_each_possible_cpu(vpe) {
++              if (of_address_to_resource(node, vpe, &res))
++                      panic("Failed to get icu%i memory range", vpe);
+ +              if (!request_mem_region(res.start, resource_size(&res),
+                                        res.name))
+-                      pr_err("Failed to request icu memory");
++                      pr_err("Failed to request icu%i memory\n", vpe);
+ +-            ltq_icu_membase[i] =3D ioremap_nocache(res.start,
++              ltq_icu_membase[vpe] =3D ioremap_nocache(res.start,
+                                        resource_size(&res));
+-              if (!ltq_icu_membase[i])
+-                      panic("Failed to remap icu memory");
++
++              if (!ltq_icu_membase[vpe])
++                      panic("Failed to remap icu%i memory", vpe);
+        }
+ +      /* turn off all irqs by default */
+-      for (i =3D 0; i < MAX_IM; i++) {
+-              /* make sure all irqs are turned off by default */
+-              ltq_icu_w32(i, 0, LTQ_ICU_IM0_IER);
+-              /* clear all possibly pending interrupts */
+-              ltq_icu_w32(i, ~0, LTQ_ICU_IM0_ISR);
++      for_each_possible_cpu(vpe) {
++              for (i =3D 0; i < MAX_IM; i++) {
++                      /* make sure all irqs are turned off by default */
++                      ltq_icu_w32(vpe, i, 0, LTQ_ICU_IER);
++
++                      /* clear all possibly pending interrupts */
++                      ltq_icu_w32(vpe, i, ~0, LTQ_ICU_ISR);
++                      ltq_icu_w32(vpe, i, ~0, LTQ_ICU_IMR);
++
++                      ltq_icu_w32(vpe, i, 0, LTQ_ICU_IRSR);
++              }
+        }
+ +      mips_cpu_irq_init();
+@@ -358,7 +465,7 @@
+        return MIPS_CPU_TIMER_IRQ;
+ }
+ +-static struct of_device_id __initdata of_irq_ids[] =3D {
++static const struct of_device_id of_irq_ids[] __initconst =3D {
+        { .compatible =3D "lantiq,icu", .data =3D icu_of_init },
+        {},
+ };
+--- a/arch/mips/kernel/smp-mt.c        2019-03-05 17:58:03.000000000 +0100
++++ b/arch/mips/kernel/smp-mt.c        2019-05-16 03:09:02.268859090 +0200
+@@ -125,6 +125,8 @@
+                                         STATUSF_IP6 | STATUSF_IP7);
+        else
+                change_c0_status(ST0_IM, STATUSF_IP0 | STATUSF_IP1 |
++                                       STATUSF_IP2 | STATUSF_IP3 |
++                                       STATUSF_IP4 | STATUSF_IP5 |
+                                         STATUSF_IP6 | STATUSF_IP7);
+ }
+ +--- a/arch/mips/boot/dts/vr9.dtsi    2019-03-10 19:03:35.747182390 +0100
++++ b/arch/mips/boot/dts/vr9.dtsi      2019-05-17 05:01:36.789319230 +0200
+@@ -38,11 +38,9 @@
+                        #interrupt-cells =3D <1>;
+                        interrupt-controller;
+                        compatible =3D "lantiq,icu";
+-                      reg =3D <0x80200 0x28
+-                              0x80228 0x28
+-                              0x80250 0x28
+-                              0x80278 0x28
+-                              0x802a0 0x28>;
++
++                      reg =3D <0x80200 0xc8     /* icu0 */
++                              0x80300 0xc8>;  /* icu1 */
+                };
+ +              watchdog@803f0 {
+--- a/arch/mips/boot/dts/danube.dtsi   2019-03-10 19:03:35.746182403 +0100
++++ b/arch/mips/boot/dts/danube.dtsi   2019-05-17 04:55:28.777920006 +0200
+@@ -34,11 +34,12 @@
+                        #interrupt-cells =3D <1>;
+                        interrupt-controller;
+                        compatible =3D "lantiq,icu";
+-                      reg =3D <0x80200 0x28
+-                              0x80228 0x28
+-                              0x80250 0x28
+-                              0x80278 0x28
+-                              0x802a0 0x28>;
++
++                      /*
++                       * There is a second ICU, but the SoC is not SMP
++                       * capable.
++                       */
++                      reg =3D <0x80200 0xc8>;
+                };
+ +              watchdog@803f0 {
+--- a/arch/mips/boot/dts/ar9.dtsi      2019-03-10 19:03:35.746182403 +0100
++++ b/arch/mips/boot/dts/ar9.dtsi      2019-05-17 04:58:17.080815930 +0200
+@@ -34,11 +34,8 @@
+                        #interrupt-cells =3D <1>;
+                        interrupt-controller;
+                        compatible =3D "lantiq,icu";
+-                      reg =3D <0x80200 0x28
+-                              0x80228 0x28
+-                              0x80250 0x28
+-                              0x80278 0x28
+-                              0x802a0 0x28>;
++                      reg =3D <0x80200 0xc8>;   /* ICU0 */
++                      /* TODO AR9 should have ICU1 (like VR9) too */
+                };
+ +              watchdog@803f0 {
+--- a/arch/mips/boot/dts/amazonse.dtsi 2019-03-10 19:03:35.746182403 +0100
++++ b/arch/mips/boot/dts/amazonse.dtsi 2019-05-17 04:58:56.343325081 +0200
+@@ -34,11 +34,7 @@
+                        #interrupt-cells =3D <1>;
+                        interrupt-controller;
+                        compatible =3D "lantiq,icu";
+-                      reg =3D <0x80200 0x28
+-                              0x80228 0x28
+-                              0x80250 0x28
+-                              0x80278 0x28
+-                              0x802a0 0x28>;
++                      reg =3D <0x80200 0xc8>;   /* only 1 ICU */
+                };
+ +              watchdog@803f0 {
+--- a/arch/mips/boot/dts/falcon.dtsi   2019-03-10 19:03:35.747182390 +0100
++++ b/arch/mips/boot/dts/falcon.dtsi   2019-05-17 05:00:42.536997478 +0200
+@@ -293,11 +293,8 @@
+                        #interrupt-cells =3D <1>;
+                        interrupt-controller;
+                        compatible =3D "lantiq,icu";
+-                      reg =3D <0x80200 0x28
+-                              0x80228 0x28
+-                              0x80250 0x28
+-                              0x80278 0x28
+-                              0x802a0 0x28>;
++                      reg =3D <0x80200 0xc8>;
++                      /* TODO I don't know if there is another ICU */
+                };
+ +              watchdog@803F0 {
--
2.21.0


--_000_SG2PR0201MB2190923946B6E21C579ECC28C20B0SG2PR0201MB2190_
Content-Type: text/html; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
250">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.x_MsoHyperlinkFollowed
	{color:#954F72;
	text-decoration:underline}
.x_MsoChpDefault
	{}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Hi everyone, I am not sure if I need to reply to b=
oth emails but I shall do so anyway.</p>
<p class=3D"x_MsoNormal">Regarding the patches, I am using it already for m=
y 2 routers, namely TPLink TD-W8980 and HomeHub 5A and at the time when the=
se patches were first introduced there were considerable improvements in LA=
N and WiFi speeds. Now as OpenWrt
 has improved over time and it seems it=92s also catching up to the patches=
 slowly but still the patches have more to offer than what is already there=
 in OpenWrt.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">These patches, when applied to the base system, cr=
eated far better performance for Wifi on such low end devices. I was able t=
o get speeds around 60mbps on 75mbps link speed and around 120mbps on 150mb=
ps link speed. 150mbps link is when
 I turn on force 40mhz in settings on the router. After applying these patc=
hes I never experienced a crash on any of my routers. Although before they =
would crash if there was too much CPU load and also if someone was trying t=
o fetch data from the connected
 HardDrive. But with these patches, CPU load seems to be adjusting itself q=
uite nicely. At the moment I am using TD-W8980 with a external drive 500gb =
and it=92s running transmission and aria2 and also collectd. BT HomeHub 5A =
is running 4mb ADSL with AdBlock and
 OpenVPN and VPN-Policy-Routing,. It=92s also running an instance of collec=
td to collect data from itself and TD-W8980.
</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I can provide further details if needed. In my opi=
nion the patch-set should be merged so it can improve the performance of th=
ese devices for everyone.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Regards,</p>
<p class=3D"x_MsoNormal">Ahmar</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwli=
nk/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Petr Cvek &lt;petrc=
vekcz@gmail.com&gt;<br>
<b>Sent:</b> Friday, May 17, 2019 8:44:35 AM<br>
<b>To:</b> openwrt-devel@lists.openwrt.org<br>
<b>Cc:</b> Hauke Mehrtens; pakahmar@hotmail.com<br>
<b>Subject:</b> [PATCH v5] kernel: lantiq: add support for SMP IRQ routing<=
/font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">Some lantiq SoCs have multiple VPE support but no =
support for the IRQ<br>
routing, so only the first VPE is receiving interrupts. This patch adds<br>
support for rerouting interrupts to the other VPE. Basically it expands<br>
the current ICU driver for the second controller, adds new address<br>
ranges to the devicetree and fixes the interrupt masking on the second<br>
core.<br>
Some reg access locking was added too.<br>
<br>
The mode of the operation is that userdefined IRQ affinity CPU mask is<br>
either cycled between VPEs in every IRQ enable call<br>
(AUTO_AFFINITY_ROTATION), or only the first VPE from affinity CPU mask<br>
is used (AUTO_AFFINITY_ROTATION not defined).<br>
<br>
Tested on TD-W9980B device (both VPEs used as linux CPUs).<br>
<br>
Signed-off-by: Petr Cvek &lt;petrcvekcz@gmail.com&gt;<br>
---<br>
&nbsp;.../0901-add-icu-smp-support.patch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 436 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;1 file changed, 436 insertions(&#43;)<br>
&nbsp;create mode 100644<br>
target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch<br>
<br>
diff --git<br>
a/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch<br>
b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch<br>
new file mode 100644<br>
index 0000000000..eaefdf27a3<br>
--- /dev/null<br>
&#43;&#43;&#43; b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support=
.patch<br>
@@ -0,0 &#43;1,436 @@<br>
&#43;--- a/arch/mips/lantiq/irq.c&nbsp;&nbsp; 2019-03-10 20:44:58.755134326=
 &#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/lantiq/irq.c&nbsp;&nbsp; 2019-05-17 05:13:=
50.302149058 &#43;0200<br>
&#43;@@ -22,14 &#43;22,21 @@<br>
&#43; #include &lt;lantiq_soc.h&gt;<br>
&#43; #include &lt;irq.h&gt;<br>
&#43; &#43;&#43;/*<br>
&#43;&#43; * If defined, every IRQ enable call will switch the interrupt to=
<br>
&#43;&#43; * the other VPE. You can limit used VPEs from the userspace.<br>
&#43;&#43; *<br>
&#43;&#43; * If not defined, only the first configured VPE from the userspa=
ce<br>
&#43;&#43; * will be used.<br>
&#43;&#43; */<br>
&#43;&#43;#define AUTO_AFFINITY_ROTATION<br>
&#43;&#43;<br>
&#43; /* register definitions - internal irqs */<br>
&#43;-#define LTQ_ICU_IM0_ISR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0000<br>
&#43;-#define LTQ_ICU_IM0_IER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0008<br>
&#43;-#define LTQ_ICU_IM0_IOSR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0010<br>
&#43;-#define LTQ_ICU_IM0_IRSR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0018<br>
&#43;-#define LTQ_ICU_IM0_IMR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0020<br>
&#43;-#define LTQ_ICU_IM1_ISR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0028<br>
&#43;-#define LTQ_ICU_OFFSET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (LTQ_ICU_IM1_ISR - LTQ_ICU_IM0_=
ISR)<br>
&#43;&#43;#define LTQ_ICU_ISR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 0x0000<br>
&#43;&#43;#define LTQ_ICU_IER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 0x0008<br>
&#43;&#43;#define LTQ_ICU_IOSR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 0x0010<br>
&#43;&#43;#define LTQ_ICU_IRSR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 0x0018<br>
&#43;&#43;#define LTQ_ICU_IMR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 0x0020<br>
&#43; &#43; /* register definitions - external irqs */<br>
&#43; #define LTQ_EIU_EXIN_C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0000<br>
&#43;@@ -49,24 &#43;56,27 @@<br>
&#43;&nbsp; */<br>
&#43; #define LTQ_ICU_EBU_IRQ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 22<br>
&#43; &#43;-#define ltq_icu_w32(m, x, y)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; ltq_w32((x), ltq_icu_membase[m] &#43; (y))<br>
&#43;-#define ltq_icu_r32(m, x)&nbsp;&nbsp;&nbsp;&nbsp; ltq_r32(ltq_icu_mem=
base[m] &#43; (x))<br>
&#43;&#43;#define ltq_icu_w32(vpe, m, x, y)&nbsp;&nbsp;&nbsp;&nbsp; \<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_w32((x), ltq_icu_membase[vpe] =
&#43; m*0x28 &#43; (y))<br>
&#43;&#43;<br>
&#43;&#43;#define ltq_icu_r32(vpe, m, x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_r32(ltq_icu_membase[vpe] &#43;=
 m*0x28 &#43; (x))<br>
&#43; &#43; #define ltq_eiu_w32(x, y)&nbsp;&nbsp; ltq_w32((x), ltq_eiu_memb=
ase &#43; (y))<br>
&#43; #define ltq_eiu_r32(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_r32(ltq_eiu_membase &#43; (=
x))<br>
&#43; &#43;-/* our 2 ipi interrupts for VSMP */<br>
&#43;-#define MIPS_CPU_IPI_RESCHED_IRQ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0<br>
&#43;-#define MIPS_CPU_IPI_CALL_IRQ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; 1<br>
&#43;-<br>
&#43; /* we have a cascade of 8 irqs */<br>
&#43; #define MIPS_CPU_IRQ_CASCADE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 8<br>
&#43; &#43;&#43;#define MAX_VPES 2<br>
&#43;&#43;<br>
&#43; static int exin_avail;<br>
&#43; static u32 ltq_eiu_irq[MAX_EIU];<br>
&#43;-static void __iomem *ltq_icu_membase[MAX_IM];<br>
&#43;&#43;static void __iomem *ltq_icu_membase[MAX_VPES];<br>
&#43; static void __iomem *ltq_eiu_membase;<br>
&#43; static struct irq_domain *ltq_domain;<br>
&#43;&#43;static DEFINE_SPINLOCK(ltq_eiu_lock);<br>
&#43;&#43;static DEFINE_RAW_SPINLOCK(ltq_icu_lock);<br>
&#43; static int ltq_perfcount_irq;<br>
&#43; &#43; int ltq_eiu_get_irq(int exin)<br>
&#43;@@ -78,50 &#43;88,104 @@<br>
&#43; &#43; void ltq_disable_irq(struct irq_data *d)<br>
&#43; {<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 ier =3D LTQ_ICU_IM0_IER;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int offset =3D d-&gt;hwirq - MIPS_CPU_=
IRQ_CASCADE;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int im =3D offset / INT_NUM_IM_OFFSET;=
<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long offset =3D d-&gt;hwi=
rq - MIPS_CPU_IRQ_CASCADE;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long im =3D offset / INT_=
NUM_IM_OFFSET;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int vpe;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long flags;<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset %=3D INT_NUM_IM_OFFSET;<br=
>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(im, ltq_icu_r32(im, ier) &=
amp; ~BIT(offset), ier);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_lock_irqsave(&amp;ltq_icu=
_lock, flags);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_present_cpu(vpe) {<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ltq_icu_w32(vpe, im,<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ltq_icu_r32(vpe, im, LTQ_ICU_IER) &amp; ~BIT(offset),<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; LTQ_ICU_IER);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_unlock_irqrestore(&amp;lt=
q_icu_lock, flags);<br>
&#43; }<br>
&#43; &#43; void ltq_mask_and_ack_irq(struct irq_data *d)<br>
&#43; {<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 ier =3D LTQ_ICU_IM0_IER;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 isr =3D LTQ_ICU_IM0_ISR;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int offset =3D d-&gt;hwirq - MIPS_CPU_=
IRQ_CASCADE;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int im =3D offset / INT_NUM_IM_OFFSET;=
<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long offset =3D d-&gt;hwi=
rq - MIPS_CPU_IRQ_CASCADE;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long im =3D offset / INT_=
NUM_IM_OFFSET;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int vpe;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long flags;<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset %=3D INT_NUM_IM_OFFSET;<br=
>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(im, ltq_icu_r32(im, ier) &=
amp; ~BIT(offset), ier);<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(im, BIT(offset), isr);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_lock_irqsave(&amp;ltq_icu=
_lock, flags);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_present_cpu(vpe) {<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ltq_icu_w32(vpe, im,<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ltq_icu_r32(vpe, im, LTQ_ICU_IER) &amp; ~BIT(offset),<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; LTQ_ICU_IER);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_unlock_irqrestore(&amp;lt=
q_icu_lock, flags);<br>
&#43; }<br>
&#43; EXPORT_SYMBOL(ltq_mask_and_ack_irq);<br>
&#43; &#43; static void ltq_ack_irq(struct irq_data *d)<br>
&#43; {<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 isr =3D LTQ_ICU_IM0_ISR;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int offset =3D d-&gt;hwirq - MIPS_CPU_=
IRQ_CASCADE;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int im =3D offset / INT_NUM_IM_OFFSET;=
<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long offset =3D d-&gt;hwi=
rq - MIPS_CPU_IRQ_CASCADE;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long im =3D offset / INT_=
NUM_IM_OFFSET;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int vpe;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long flags;<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset %=3D INT_NUM_IM_OFFSET;<br=
>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(im, BIT(offset), isr);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_lock_irqsave(&amp;ltq_icu=
_lock, flags);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_present_cpu(vpe) {<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_unlock_irqrestore(&amp;lt=
q_icu_lock, flags);<br>
&#43; }<br>
&#43; &#43; void ltq_enable_irq(struct irq_data *d)<br>
&#43; {<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 ier =3D LTQ_ICU_IM0_IER;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int offset =3D d-&gt;hwirq - MIPS_CPU_=
IRQ_CASCADE;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int im =3D offset / INT_NUM_IM_OFFSET;=
<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long offset =3D d-&gt;hwi=
rq - MIPS_CPU_IRQ_CASCADE;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long im =3D offset / INT_=
NUM_IM_OFFSET;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int vpe;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long flags;<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset %=3D INT_NUM_IM_OFFSET;<br=
>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(im, ltq_icu_r32(im, ier) |=
 BIT(offset), ier);<br>
&#43;&#43;<br>
&#43;&#43;#if defined(AUTO_AFFINITY_ROTATION)<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vpe =3D cpumask_next(smp_processor=
_id(),<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; irq_data_get_effective_affinity_mask(d));<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * There is a theoretical rac=
e condition if affinity gets changed<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * meanwhile, but it would on=
ly caused a wrong VPE to be used until<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * the next IRQ enable. Also =
the SoC has only 2 VPEs which fits<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * the single u32. You can mo=
ve spinlock before first mask readout<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * and add it to ltq_icu_irq_=
set_affinity.<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (vpe &gt;=3D nr_cpu_ids)<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; vpe =3D cpumask_first(irq_data_get_effective_affinity_mask(d)=
);<br>
&#43;&#43;#else<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vpe =3D cpumask_first(irq_data_get=
_effective_affinity_mask(d));<br>
&#43;&#43;#endif<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* This shouldn't be even possible=
, maybe during CPU hotplug spam */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(vpe &gt;=3D nr_cpu_id=
s))<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; vpe =3D smp_processor_id();<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_lock_irqsave(&amp;ltq_icu=
_lock, flags);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* bugfix for fake interrupts? fro=
m UGW 3.x kernel */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(vpe, im, BIT(offset), =
LTQ_ICU_ISR);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(vpe, im, ltq_icu_r32(v=
pe, im, LTQ_ICU_IER) | BIT(offset),<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LTQ_ICU_IER);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raw_spin_unlock_irqrestore(&amp;lt=
q_icu_lock, flags);<br>
&#43; }<br>
&#43; &#43; static int ltq_eiu_settype(struct irq_data *d, unsigned int typ=
e)<br>
&#43; {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned long flags;<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; exin_avail; =
i&#43;&#43;) {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (d-&gt;hwirq =3D=3D ltq_eiu_irq[i]) {<br>
&#43;@@ -158,8 &#43;222,12 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ed=
ge)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; irq_set_handler(d-&gt;hwirq, hand=
le_edge_irq);<br>
&#43; &#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_eiu_w32(ltq_eiu_r32=
(LTQ_EIU_EXIN_C) |<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (val &lt;&lt; (i * 4)), LTQ_EIU_EXIN_C);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // v3.10 kern=
el has this atomic for SMP<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spin_lock_irq=
save(&amp;ltq_eiu_lock, flags);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_eiu_w32((=
ltq_eiu_r32(LTQ_EIU_EXIN_C) &amp;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (~(7 &lt;&lt; (i=
 * 4)))) | (val &lt;&lt; (i * 4)),<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LTQ_EIU_EXIN_C);=
<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; spin_unlock_i=
rqrestore(&amp;ltq_eiu_lock, flags);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; }<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43; &#43;@@ -203,6 &#43;271,21 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43; }<br>
&#43; &#43;&#43;#if defined(CONFIG_SMP)<br>
&#43;&#43;static int ltq_icu_irq_set_affinity(struct irq_data *d,<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct cpu=
mask *cpumask, bool force)<br>
&#43;&#43;{<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct cpumask tmask;<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!cpumask_and(&amp;tmask, cpuma=
sk, cpu_online_mask))<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; return -EINVAL;<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; irq_data_update_effective_affinity=
(d, &amp;tmask);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return IRQ_SET_MASK_OK;<br>
&#43;&#43;}<br>
&#43;&#43;#endif<br>
&#43;&#43;<br>
&#43; static struct irq_chip ltq_irq_type =3D {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .name =3D &quot;icu&quot;,<=
br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_enable =3D ltq_enable_=
irq,<br>
&#43;@@ -211,6 &#43;294,9 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_ack =3D ltq_ack_irq,<b=
r>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_mask =3D ltq_disable_i=
rq,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_mask_ack =3D ltq_mask_=
and_ack_irq,<br>
&#43;&#43;#if defined(CONFIG_SMP)<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_set_affinity =3D ltq_icu_irq_=
set_affinity,<br>
&#43;&#43;#endif<br>
&#43; };<br>
&#43; &#43; static struct irq_chip ltq_eiu_type =3D {<br>
&#43;@@ -224,15 &#43;310,19 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_mask =3D ltq_disable_i=
rq,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_mask_ack =3D ltq_mask_=
and_ack_irq,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_set_type =3D ltq_eiu_s=
ettype,<br>
&#43;&#43;#if defined(CONFIG_SMP)<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .irq_set_affinity =3D ltq_icu_irq_=
set_affinity,<br>
&#43;&#43;#endif<br>
&#43; };<br>
&#43; &#43; static void ltq_hw_irq_handler(struct irq_desc *desc)<br>
&#43; {<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int module =3D irq_desc_get_irq(desc) =
- 2;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int module =3D irq_desc_g=
et_irq(desc) - 2;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 irq;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int hwirq;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; irq_hw_number_t hwirq;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int vpe =3D smp_processor=
_id();<br>
&#43; &#43;-&nbsp;&nbsp;&nbsp; irq =3D ltq_icu_r32(module, LTQ_ICU_IM0_IOSR=
);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; irq =3D ltq_icu_r32(vpe, module, L=
TQ_ICU_IOSR);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (irq =3D=3D 0)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; return;<br>
&#43; &#43;@@ -253,6 &#43;343,7 @@<br>
&#43; static int icu_map(struct irq_domain *d, unsigned int irq,<br>
irq_hw_number_t hw)<br>
&#43; {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct irq_chip *chip =3D &=
amp;ltq_irq_type;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct irq_data *data;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (hw &lt; MIPS_CPU_IRQ_CASCADE)=
<br>
&#43;@@ -262,6 &#43;353,10 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; if (hw =3D=3D ltq_eiu_irq[i])<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chip =
=3D &amp;ltq_eiu_type;<br>
&#43; &#43;&#43;&nbsp;&nbsp;&nbsp; data =3D irq_get_irq_data(irq);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; irq_data_update_effective_affinity=
(data, cpumask_of(0));<br>
&#43;&#43;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; irq_set_chip_and_handler(ir=
q, chip, handle_level_irq);<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&#43;@@ -276,28 &#43;371,40 @@<br>
&#43; {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct device_node *eiu_nod=
e;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct resource res;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, ret;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, ret, vpe;<br>
&#43; &#43;-&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; MAX_IM; i&#43;&#43;) {<=
br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; if (of_address_to_resource(node, i, &amp;res))<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; panic(&quot;Faile=
d to get icu memory range&quot;);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* TODO someone pls update&#43;tes=
t devicetr5ee for danube (not SMP,<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * foreach bellow should run =
once), ar9, amazon, falcon (no info).<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Addresses are known only f=
or vr9, tested only in generic SMP<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * ( =3D no VPE reserved for =
firmware).<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_possible_cpu(vpe) {<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; if (of_address_to_resource(node, vpe, &amp;res))<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; panic(&quot;F=
ailed to get icu%i memory range&quot;, vpe);<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; if (!request_mem_region(res.start, resource_size(&amp;res),<=
br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; res.name))<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pr_err(&quot;Fail=
ed to request icu memory&quot;);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pr_err(&quot;=
Failed to request icu%i memory\n&quot;, vpe);<br>
&#43; &#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; ltq_icu_membase[i] =3D ioremap_nocache(res.start,<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ltq_icu_membase[vpe] =3D ioremap_nocache(res.start,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; resource_size(&amp;res));<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; if (!ltq_icu_membase[i])<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; panic(&quot;Faile=
d to remap icu memory&quot;);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; if (!ltq_icu_membase[vpe])<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; panic(&quot;F=
ailed to remap icu%i memory&quot;, vpe);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* turn off all irqs by default *=
/<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i &lt; MAX_IM; i&#43;&#4=
3;) {<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; /* make sure all irqs are turned off by default */<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ltq_icu_w32(i, 0, LTQ_ICU_IM0_IER);<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; /* clear all possibly pending interrupts */<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; ltq_icu_w32(i, ~0, LTQ_ICU_IM0_ISR);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_possible_cpu(vpe) {<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; for (i =3D 0; i &lt; MAX_IM; i&#43;&#43;) {<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* make sure =
all irqs are turned off by default */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(v=
pe, i, 0, LTQ_ICU_IER);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* clear all =
possibly pending interrupts */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(v=
pe, i, ~0, LTQ_ICU_ISR);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(v=
pe, i, ~0, LTQ_ICU_IMR);<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ltq_icu_w32(v=
pe, i, 0, LTQ_ICU_IRSR);<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; }<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mips_cpu_irq_init();<br>
&#43;@@ -358,7 &#43;465,7 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return MIPS_CPU_TIMER_IRQ;<=
br>
&#43; }<br>
&#43; &#43;-static struct of_device_id __initdata of_irq_ids[] =3D {<br>
&#43;&#43;static const struct of_device_id of_irq_ids[] __initconst =3D {<b=
r>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; { .compatible =3D &quot;lan=
tiq,icu&quot;, .data =3D icu_of_init },<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {},<br>
&#43; };<br>
&#43;--- a/arch/mips/kernel/smp-mt.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 2019-03-05 17:58:03.000000000 &#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/kernel/smp-mt.c&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 2019-05-16 03:09:02.268859090 &#43;0200<br>
&#43;@@ -125,6 &#43;125,8 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; STATUSF_IP6 | STATUSF_IP7);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; change_c0_status(ST0_IM, STATUSF_IP0 | STATUSF_IP1 |<b=
r>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; STATUSF_IP2 | STATUSF_IP3 |<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; STATUSF_IP4 | STATUSF_IP5 |<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; STATUSF_IP6 | STATUSF_IP7);<br>
&#43; }<br>
&#43; &#43;--- a/arch/mips/boot/dts/vr9.dtsi&nbsp;&nbsp;&nbsp; 2019-03-10 1=
9:03:35.747182390 &#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/boot/dts/vr9.dtsi&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 2019-05-17 05:01:36.789319230 &#43;0200<br>
&#43;@@ -38,11 &#43;38,9 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #inter=
rupt-cells =3D &lt;1&gt;;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interr=
upt-controller;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compat=
ible =3D &quot;lantiq,icu&quot;;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x802=
00 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80228 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80250 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80278 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x802a0 0x28&gt;;<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
x80200 0xc8&nbsp;&nbsp;&nbsp;&nbsp; /* icu0 */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80300 0xc8&gt;;&nbsp; /* icu1 */<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; };<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; watchdog@803f0 {<br>
&#43;--- a/arch/mips/boot/dts/danube.dtsi&nbsp;&nbsp; 2019-03-10 19:03:35.7=
46182403 &#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/boot/dts/danube.dtsi&nbsp;&nbsp; 2019-05-1=
7 04:55:28.777920006 &#43;0200<br>
&#43;@@ -34,11 &#43;34,12 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #inter=
rupt-cells =3D &lt;1&gt;;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interr=
upt-controller;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compat=
ible =3D &quot;lantiq,icu&quot;;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x802=
00 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80228 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80250 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80278 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x802a0 0x28&gt;;<br>
&#43;&#43;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * There=
 is a second ICU, but the SoC is not SMP<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * capab=
le.<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
x80200 0xc8&gt;;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; };<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; watchdog@803f0 {<br>
&#43;--- a/arch/mips/boot/dts/ar9.dtsi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2019-0=
3-10 19:03:35.746182403 &#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/boot/dts/ar9.dtsi&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 2019-05-17 04:58:17.080815930 &#43;0200<br>
&#43;@@ -34,11 &#43;34,8 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #inter=
rupt-cells =3D &lt;1&gt;;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interr=
upt-controller;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compat=
ible =3D &quot;lantiq,icu&quot;;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x802=
00 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80228 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80250 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80278 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x802a0 0x28&gt;;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
x80200 0xc8&gt;;&nbsp;&nbsp; /* ICU0 */<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* TODO AR9 s=
hould have ICU1 (like VR9) too */<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; };<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; watchdog@803f0 {<br>
&#43;--- a/arch/mips/boot/dts/amazonse.dtsi 2019-03-10 19:03:35.746182403 &=
#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/boot/dts/amazonse.dtsi 2019-05-17 04:58:56=
.343325081 &#43;0200<br>
&#43;@@ -34,11 &#43;34,7 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #inter=
rupt-cells =3D &lt;1&gt;;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interr=
upt-controller;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compat=
ible =3D &quot;lantiq,icu&quot;;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x802=
00 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80228 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80250 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80278 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x802a0 0x28&gt;;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
x80200 0xc8&gt;;&nbsp;&nbsp; /* only 1 ICU */<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; };<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; watchdog@803f0 {<br>
&#43;--- a/arch/mips/boot/dts/falcon.dtsi&nbsp;&nbsp; 2019-03-10 19:03:35.7=
47182390 &#43;0100<br>
&#43;&#43;&#43;&#43; b/arch/mips/boot/dts/falcon.dtsi&nbsp;&nbsp; 2019-05-1=
7 05:00:42.536997478 &#43;0200<br>
&#43;@@ -293,11 &#43;293,8 @@<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #inter=
rupt-cells =3D &lt;1&gt;;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; interr=
upt-controller;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; compat=
ible =3D &quot;lantiq,icu&quot;;<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0x802=
00 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80228 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80250 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x80278 0x28<br>
&#43;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x802a0 0x28&gt;;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg =3D &lt;0=
x80200 0xc8&gt;;<br>
&#43;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* TODO I don=
't know if there is another ICU */<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; };<br>
&#43; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; watchdog@803F0 {<br>
-- <br>
2.21.0<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_SG2PR0201MB2190923946B6E21C579ECC28C20B0SG2PR0201MB2190_--


--===============2273790448502992826==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2273790448502992826==--

