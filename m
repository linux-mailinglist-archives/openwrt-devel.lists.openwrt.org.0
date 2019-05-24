Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93B12904C
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 07:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCCTo9BruHvq5IebfaMQ6felrq6UpRYTY3KOxL8+bdU=; b=lK2eHWEat/3riL
	D7V7+5rjpubSnYqAA43k0G2IYrtzoZzuN0kIaMUrGdIVpnibw3zc6q/UX5N9qfaVEy6JtEdIx0zs0
	kLy5VfH0cIAYsrqCPCFYk3GtvjFFdLcIBUEtNFAjP1dk4U6qgGSzyg5CTUQcVayidaEU3vcu9iNwv
	/O45LOjS4dYQhk1hv6w1AjWGjbaBnQ2VctlT9Xc6T6YvEYuLOnvrxbJVsaYUPvA1JJzLniCwCz0hK
	27QT1pfzdV47MoBym7GmYq5Vzgh5sSWnxQFQCRRGqMkmxTdE8nLNnZ4heAF/3qZ6l3QnTFo+Djii3
	xmdQYa8zgpU7YxSTdTiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2Wg-0005ix-Ue; Fri, 24 May 2019 05:13:54 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2WW-0005iF-4K
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 05:13:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id f8so8547967wrt.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 23 May 2019 22:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=rHiaYJTqAsgjfuwGiCPV1JgTy8L/BzBTV2FMxd7gqmU=;
 b=DHWSOdn1gA/rfsw+uyXhOlD0qwi9CcZEXJBRJQ/Su06tQDUI0ZpEbXSMhGyeYxGuau
 Ig2n8pyICW9PYPTqqKwGZ7Y68Tt4V8g7D33eNvfq5ZTbEGY7ccFMi6NG41xSoDt871Qa
 vPu5fJlO+AukNGL4aVFO1h5vjTU+MztTWHcKVEPMBEOqVl/E8DmDCvlmyokK9nh4+fPn
 f1eY1LRw2ofYSqrRkuEpbKr5uC8tTbggrgu5nErxZk0nb6txoKmAeXdASjyBRl1dnoO1
 u7on02NVhuhSHrtHUrmJvrEbImmRVUr7Ui7lbZoavc3OnT7pecJG8h92KPPLIsj8vo+c
 ngIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rHiaYJTqAsgjfuwGiCPV1JgTy8L/BzBTV2FMxd7gqmU=;
 b=F+jL+3iqZPrGwwZOZlFNIxSXFB0+E12IlqA8hlNuQdGtS6QJWXlMi3luNdYEr3+aQn
 aYtzL13m4nAfSKzRs+3Udduu4bI4Up+PsO7VDfZIlOEqf4oYmZedA7VQMMXUzwlguDk7
 sXIq0X+FptjclcE6POf5C3jJ3dZUhNmWyRm8WQQrW5pvi2SS8xsvOID/JIOR6vSKH2lR
 a+2ju0cLCFYtD3roP63EP9EBSZhKC6I6w+OPtuj33GcYSHSq1cLHkssV7xiOZlfZWWDh
 iMKqCSs9HmLXn/U4OT3JHXYRJjBy7RwQwo4v+EufhWEWf1iowRF9H9p5Wukadf99PbW9
 AX3g==
X-Gm-Message-State: APjAAAWFkXMqtYR0/XHM4pXi+FccFcUMHm7ONVLdQ67UaScMrfitZBVG
 xewLvmmBuEn6Mf6Zoq3l5HTSXLwx
X-Google-Smtp-Source: APXvYqxq6ENbXG326XlgtU7GFrys4hNxq8QUomsbRT9zqkBX21nfa4lVakYyJj1AInayxjeUGtOCQw==
X-Received: by 2002:adf:df8f:: with SMTP id z15mr56920537wrl.140.1558674819135; 
 Thu, 23 May 2019 22:13:39 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-c063-f27b-18bd-163d.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:c063:f27b:18bd:163d])
 by smtp.gmail.com with ESMTPSA id b206sm1336045wmd.28.2019.05.23.22.13.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 22:13:38 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <40efd247-c72d-c341-de31-b46ac9b3ad69@gmail.com>
 <3c63292c-c97e-b0a2-47f6-f0b84d276902@hauke-m.de>
 <123cc18d-1bc3-9973-1c7a-a8d7a4f652db@hauke-m.de>
 <308d3f1c-9dd5-ed22-5d4c-7ac48e59a31c@gmail.com>
 <f237b8c1-084f-5392-94db-d9d85b390024@hauke-m.de>
 <7861b2ce-21e7-d1d9-6339-61056f9dfa8f@gmail.com>
 <c05dbe29-30d8-2223-406f-81d6aed875b7@hauke-m.de>
From: Petr Cvek <petrcvekcz@gmail.com>
Message-ID: <59cba685-74ce-0888-5fba-c127c6deec51@gmail.com>
Date: Fri, 24 May 2019 07:15:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <c05dbe29-30d8-2223-406f-81d6aed875b7@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_221344_195866_A5020937 
X-CRM114-Status: GOOD (  36.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC] [PATCH v4] lantiq: IRQ balancing,
 ethernet driver, wave300
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dne 19. 05. 19 v 11:24 Hauke Mehrtens napsal(a):
> On 5/18/19 4:08 AM, Petr Cvek wrote:
>> Hi again,
>>
>> I'm finishing the ethernet driver and it is still sort of slow for my
>> taste, but it seems I've reached the hardware limit.
> 
> Will you send these patches also to the upstream kernel? I would like to
> see the improvements to the DMA controller and the scatter DMA in the
> mainline kernel then we do not have to maintain this separately in
> OpenWrt any more.

Yeah eventually, but the patches will be untested (I don't think I can run linux-next in openwrt on lantiq modem without big changes from the current 4.14).

I didn't add scattergather DMA into the kernel I'm just using individual descriptors for skb fragments. The DMA patches are only for FIFO length and some register tuning.

> 
>> As someone who well knows the internals of the SoC, could you guess the
>> maximum hardware possible speed of TX bandwidth speed (roughly big
>> saturated UDP packets)?
>>
>> If I'm evaluating this correctly, there is DDR2 controller @250MHz... I
>> don't know if 250MHz is the bus speed as my modem has DDR2-800 chip,
>> which means 400MHz bus speed (pretty big 150MHz reserve).
> 
> I would not be surprised if the RAM is running with a lower frequency
> than what would be supported by the RAM chips, but I haven't checked
> what is the maximum supported frequency by the SoC itself.

I was just poking around ugw sources from tplink and it seems they maybe 600/300 MHz (CPU RAM) settings. So if the chip is in the limits it could make the network even faster.

> 
>> But if I'm right that would mean the data are transferred at 500MT/s
>> over 16bit bus. So the continuous construction of the UDP packets in CPU
>> (500MHZ@32bit) would ate the whole RAM bandwidth.
>>
>> This result seems wrong as the VPE needs to load instructions too and
>> there is up to 4 threads. And most importantly there are the gigabit
>> switch with multiple ports and PCI(e) peripherals too.
>>
>> Anyway my measurements shows the saturated UDP traffic on localhost
>> interface are only up to around 400Mbit/s and they are only mem/cache
>> transfers.
>>
>> Am I right? Is it impossible to obtain the full 1Gbit/s with vrx-268?
> 
> The SoC and many of the competition SoCs are not build to handle all the
> traffic in Linux. This SoC is designed that the data traffic should be
> handled by the hardware or some specialized FW. There is even some SRAM
> in the chip which is used by these HW blocks to avoid coping the data to
> the RAM.
> 
> The VRX200 line has the GSWIP which can handle the layer 2 switching at
> line rate (1 GBit/s) at least for normal packages sizes.
> 
> NAT, PPPoE and some other L3 handling is done by the PP32 hardware block
> which runs a separate FW and also has some specialized HW blocks. This
> block can also directly take packages from the DSL and wifi and forward
> packages to these peripherals.
> 

Yeah DSL is fine, it is in the software limits of my driver, but I was worried about wifi speeds. 

Anyway that was just my thinking about where is the weak spot and if it is in the driver, because bus speed 250MHz@32bit is fine for multiple 1G ethernets. But if it is the CPU, then I'm fine ;-).


BTW in Dlink GPL kernel source (probably UGW 6.x), there is this table:

                const struct ifx_dma_chan_map dma_map[28] = {
                /* portnum, device name, channel direction, class value,
                 * IRQ number, relative channel number */
                {0, "PPE",      IFX_DMA_RX_CH,  0,  DMA_CH0_INT,    0},
                {0, "PPE",      IFX_DMA_TX_CH,  0,  DMA_CH1_INT,    0},
                {0, "PPE",      IFX_DMA_RX_CH,  1,  DMA_CH2_INT,    1},
                {0, "PPE",      IFX_DMA_TX_CH,  1,  DMA_CH3_INT,    1},
                {0, "PPE",      IFX_DMA_RX_CH,  2,  DMA_CH4_INT,    2},
                {0, "PPE",      IFX_DMA_TX_CH,  2,  DMA_CH5_INT,    2},
                {0, "PPE",      IFX_DMA_RX_CH,  3,  DMA_CH6_INT,    3},
                {0, "PPE",      IFX_DMA_TX_CH,  3,  DMA_CH7_INT,    3},
                {1, "DEU",      IFX_DMA_RX_CH,  0,  DMA_CH8_INT,    0},
                {1, "DEU",      IFX_DMA_TX_CH,  0,  DMA_CH9_INT,    0},
                {1, "DEU",      IFX_DMA_RX_CH,  1,  DMA_CH10_INT,   1},
                {1, "DEU",      IFX_DMA_TX_CH,  1,  DMA_CH11_INT,   1},
                {2, "SPI",      IFX_DMA_RX_CH,  0,  DMA_CH12_INT,   0},
                {2, "SPI",      IFX_DMA_TX_CH,  0,  DMA_CH13_INT,   0},
                {3, "SDIO",     IFX_DMA_RX_CH,  0,  DMA_CH14_INT,   0},
                {3, "SDIO",     IFX_DMA_TX_CH,  0,  DMA_CH15_INT,   0},
                {4, "MCTRL",    IFX_DMA_RX_CH,  0,  DMA_CH16_INT,   0},
                {4, "MCTRL",    IFX_DMA_TX_CH,  0,  DMA_CH17_INT,   0},
                {4, "MCTRL",    IFX_DMA_RX_CH,  1,  DMA_CH18_INT,   1},
                {4, "MCTRL",    IFX_DMA_TX_CH,  1,  DMA_CH19_INT,   1},
                {0, "PPE",      IFX_DMA_RX_CH,  4,  DMA_CH20_INT,   4},
                {0, "PPE",      IFX_DMA_RX_CH,  5,  DMA_CH21_INT,   5},
                {0, "PPE",      IFX_DMA_RX_CH,  6,  DMA_CH22_INT,   6},
                {0, "PPE",      IFX_DMA_RX_CH,  7,  DMA_CH23_INT,   7},
                {5, "USIF",     IFX_DMA_RX_CH,  0,  DMA_CH24_INT,   0},
                {5, "USIF",     IFX_DMA_TX_CH,  0,  DMA_CH25_INT,   0},
                {6, "HSNAND",   IFX_DMA_RX_CH,  0,  DMA_CH26_INT,   0},
                {6, "HSNAND",   IFX_DMA_TX_CH,  0,  DMA_CH27_INT,   0},

Are there 6 TX and 6 RX DMA channels for PPE? 

In the current code I'm using ch1 and ch3 (TXs) for the first and second VPE, so the driver can choose which core will do the cleaning of the TX rings (no speed drops). The problem is the EASY80920 device has two eth interfaces: LAN and WAN and is using ch1 for one and ch3 for the other one. So to make the driver universal I would need to use 4 TX channels. 

If these channels have the equal function I could change the driver to allow mapping of the channels to the interfaces and ports from devicetree, so the support for EASY80920 and for SMP can coexists (also if somebody wants to make port exclusive or reserved PPE channel). 

Is this fine?

Also I didn't get from the original driver how one can assign ethernet port to an RX DMA channel (or if hardware can switch somehow between them).

Actual (in devel) state of the driver attached. Not working on EASY80920 (multiple ethX). TX DMA IRQs should be limited to a single, different VPE or the speeds will be lower. Without some netfilter kernel modules the TX speeds can be +30Mbps.

TCP from host to lantiq	= 323 Mbits/sec
TCP from lantiq to host	= 273 Mbits/sec
UDP from host to lantiq	= 845 Mbits/sec (varies on my slow machine)
UDP from lantiq to host	= 308 Mbits/sec (this one limits the TCP, roughly raw TX traffic)

P.S. I hope the patch survives my thunderbird. I've tried to reconfigure its wrapping settings.

Petr

---
--- a/drivers/net/ethernet/lantiq_xrx200.c	2019-03-10 20:44:58.797133801 +0100
+++ b/drivers/net/ethernet/lantiq_xrx200.c	2019-05-24 04:48:02.217779380 +0200
@@ -36,16 +36,14 @@
 #include "lantiq_pce.h"
 #include "lantiq_xrx200_sw.h"
 
-#define SW_POLLING
-#define SW_ROUTING
+#define SW_POLLING	//polls phy
+#define SW_ROUTING	//adds vlan field
+#define NUM_TX_QUEUES		2	/* set number of TX queues: 1-2 */
 
-#ifdef SW_ROUTING
-#define XRX200_MAX_DEV		2
-#else
-#define XRX200_MAX_DEV		1
-#endif
+#define mystats 1	//TODO tests how locking slows the DMA rings
 
 #define XRX200_MAX_VLAN		64
+
 #define XRX200_PCE_ACTVLAN_IDX	0x01
 #define XRX200_PCE_VLANMAP_IDX	0x02
 
@@ -54,7 +52,8 @@
 
 #define XRX200_HEADROOM		4
 
-#define XRX200_TX_TIMEOUT	(10 * HZ)
+//TODO fine tune
+#define XRX200_TX_TIMEOUT	(30 * HZ)
 
 /* port type */
 #define XRX200_PORT_TYPE_PHY	1
@@ -62,12 +61,12 @@
 
 /* DMA */
 #define XRX200_DMA_DATA_LEN	0x600
+#define XRX200_DMA_TX_ALIGN	(32 - 1)
+
 #define XRX200_DMA_IRQ		INT_NUM_IM2_IRL0
 #define XRX200_DMA_RX		0
 #define XRX200_DMA_TX		1
 #define XRX200_DMA_TX_2		3
-#define XRX200_DMA_IS_TX(x)	(x%2)
-#define XRX200_DMA_IS_RX(x)	(!XRX200_DMA_IS_TX(x))
 
 /* fetch / store dma */
 #define FDMA_PCTRL0		0x2A00
@@ -188,6 +187,54 @@
 #define MDIO_DEVAD_NONE		(-1)
 #define ADVERTIZE_MPD		(1 << 10)
 
+/* this is used in DMA ring to match skb during cleanup */
+struct xrx200_skb {
+	/* skb in use reference */
+	struct sk_buff *skb;
+
+	/* saved dma address for unmap */
+	dma_addr_t addr;
+
+	/* saved length for unmap */
+	size_t size;
+};
+
+struct xrx200_tx_queue {
+	struct xrx200_skb dma_skb[LTQ_DESC_NUM];
+
+	struct napi_struct napi;
+
+	struct ltq_dma_channel dma;
+
+	struct u64_stats_sync syncp;
+	__u64 tx_packets;
+	__u64 tx_bytes;
+	__u64 tx_errors;
+	__u64 tx_dropped;
+
+	struct xrx200_priv *priv;
+
+	/* ring buffer tail pointer */
+	unsigned int tx_free ____cacheline_aligned_in_smp;
+
+	u8 queue_id;	/* which TX queue is it */
+};
+
+struct xrx200_rx_queue {
+	//TODO NUM per channel
+	struct xrx200_skb dma_skb[LTQ_DESC_NUM];
+
+	struct napi_struct napi;
+
+	struct ltq_dma_channel dma;
+
+	struct u64_stats_sync syncp;
+	__u64 rx_packets;
+	__u64 rx_bytes;
+
+	struct xrx200_priv *priv;
+};
+
 struct xrx200_port {
 	u8 num;
 	u8 phy_addr;
@@ -202,53 +249,39 @@
 	struct device_node *phy_node;
 };
 
-struct xrx200_chan {
-	int idx;
-	int refcount;
-	int tx_free;
+struct xrx200_priv {
+	//TODO dynamic?
+	struct xrx200_tx_queue txq[NUM_TX_QUEUES];
+	//TODO dynamic?
+	struct xrx200_rx_queue rxq;
 
-	struct net_device dummy_dev;
-	struct net_device *devs[XRX200_MAX_DEV];
+	struct clk *clk;
 
-	struct tasklet_struct tasklet;
-	struct napi_struct napi;
-	struct ltq_dma_channel dma;
-	struct sk_buff *skb[LTQ_DESC_NUM];
+	struct net_device *net_dev;
+	struct device *dev;
 
-	spinlock_t lock;
-};
+	struct u64_stats_sync syncp;
+	__u64 tx_errors;
+
+	struct xrx200_port port[XRX200_MAX_PORT];
+	int num_port;
+	bool wan;
+	bool sw;
+	unsigned short d_port_map;
+	unsigned char mac[6];
 
-struct xrx200_hw {
-	struct clk *clk;
 	struct mii_bus *mii_bus;
 
-	struct xrx200_chan chan[XRX200_MAX_DMA];
 	u16 vlan_vid[XRX200_MAX_VLAN];
 	u16 vlan_port_map[XRX200_MAX_VLAN];
 
-	struct net_device *devs[XRX200_MAX_DEV];
-	int num_devs;
-
+	// TODO pc2005 not implemented multiple ports, EASY80920 "lantiq,xrx200-pdi"
 	int port_map[XRX200_MAX_PORT];
 	unsigned short wan_map;
 
 	struct switch_dev swdev;
 };
 
-struct xrx200_priv {
-	struct net_device_stats stats;
-	int id;
-
-	struct xrx200_port port[XRX200_MAX_PORT];
-	int num_port;
-	bool wan;
-	bool sw;
-	unsigned short port_map;
-	unsigned char mac[6];
-
-	struct xrx200_hw *hw;
-};
-
 static __iomem void *xrx200_switch_membase;
 static __iomem void *xrx200_mii_membase;
 static __iomem void *xrx200_mdio_membase;
@@ -470,14 +503,14 @@
 }
 
 // swconfig interface
-static void xrx200_hw_init(struct xrx200_hw *hw);
+static void xrx200_hw_init(struct xrx200_priv *priv);
 
 // global
 static int xrx200sw_reset_switch(struct switch_dev *dev)
 {
-	struct xrx200_hw *hw = container_of(dev, struct xrx200_hw, swdev);
+	struct xrx200_priv *priv = container_of(dev, struct xrx200_priv, swdev);
 
-	xrx200_hw_init(hw);
+	xrx200_hw_init(priv);
 
 	return 0;
 }
@@ -523,7 +556,7 @@
 static int xrx200sw_set_vlan_vid(struct switch_dev *dev, const struct switch_attr *attr,
 				 struct switch_val *val)
 {
-	struct xrx200_hw *hw = container_of(dev, struct xrx200_hw, swdev);
+	struct xrx200_priv *priv = container_of(dev, struct xrx200_priv, swdev);
 	int i;
 	struct xrx200_pce_table_entry tev;
 	struct xrx200_pce_table_entry tem;
@@ -538,7 +571,7 @@
 			return -EINVAL;
 	}
 
-	hw->vlan_vid[val->port_vlan] = val->value.i;
+	priv->vlan_vid[val->port_vlan] = val->value.i;
 
 	tev.index = val->port_vlan;
 	xrx200_pce_table_entry_read(&tev);
@@ -571,7 +604,7 @@
 
 static int xrx200sw_set_vlan_ports(struct switch_dev *dev, struct switch_val *val)
 {
-	struct xrx200_hw *hw = container_of(dev, struct xrx200_hw, swdev);
+	struct xrx200_priv *priv = container_of(dev, struct xrx200_priv, swdev);
 	int i, portmap, tagmap, untagged;
 	struct xrx200_pce_table_entry tem;
 
@@ -624,7 +657,7 @@
 
 	ltq_switch_w32_mask(0, portmap, PCE_PMAP2);
 	ltq_switch_w32_mask(0, portmap, PCE_PMAP3);
-	hw->vlan_port_map[val->port_vlan] = portmap;
+	priv->vlan_port_map[val->port_vlan] = portmap;
 
 	xrx200sw_fixup_pvids();
 
@@ -722,8 +755,8 @@
 
 	link->duplex = xrx200sw_read_x(XRX200_MAC_PSTAT_FDUP, port);
 
-	link->rx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) && 0x0010);
-	link->tx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) && 0x0020);
+	link->rx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) & 0x0010);
+	link->tx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) & 0x0020);
 	link->aneg = !(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port));
 
 	link->speed = SWITCH_PORT_SPEED_10;
@@ -834,30 +867,42 @@
 //	.get_port_stats = xrx200sw_get_port_stats, //TODO
 };
 
-static int xrx200sw_init(struct xrx200_hw *hw)
+static void xrx200sw_init(struct xrx200_priv *priv)
 {
-	int netdev_num;
 
-	for (netdev_num = 0; netdev_num < hw->num_devs; netdev_num++)
-	{
-		struct switch_dev *swdev;
-		struct net_device *dev = hw->devs[netdev_num];
-		struct xrx200_priv *priv = netdev_priv(dev);
-		if (!priv->sw)
-			continue;
+	struct switch_dev *swdev;
+	if (!priv->sw) {
+		return;
+	}
 
-		swdev = &hw->swdev;
+	swdev = &priv->swdev;
 
-		swdev->name = "Lantiq XRX200 Switch";
-		swdev->vlans = XRX200_MAX_VLAN;
-		swdev->ports = XRX200_MAX_PORT;
-		swdev->cpu_port = 6;
-		swdev->ops = &xrx200sw_ops;
+	swdev->name = "Lantiq XRX200 Switch";
+	swdev->vlans = XRX200_MAX_VLAN;
+	swdev->ports = XRX200_MAX_PORT;
+	swdev->cpu_port = 6;
+	swdev->ops = &xrx200sw_ops;
 
-		register_switch(swdev, dev);
-		return 0; // enough switches
+	register_switch(swdev, priv->net_dev);
+	return;
+}
+
+/* drop all the packets from the DMA ring */
+static void xrx200_flush_dma(struct ltq_dma_channel *dma)
+{
+	int i;
+
+	for (i = 0; i < LTQ_DESC_NUM; i++) {
+		struct ltq_dma_desc *desc = &dma->desc_base[dma->desc];
+
+		if ((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) != LTQ_DMA_C)
+			break;
+
+		desc->ctl = LTQ_DMA_OWN | LTQ_DMA_RX_OFFSET(NET_IP_ALIGN) |
+				XRX200_DMA_DATA_LEN;
+
+		dma->desc = (dma->desc + 1) % LTQ_DESC_NUM;
 	}
-	return 0;
 }
 
 static int xrx200_open(struct net_device *dev)
@@ -865,22 +910,32 @@
 	struct xrx200_priv *priv = netdev_priv(dev);
 	int i;
 
-	for (i = 0; i < XRX200_MAX_DMA; i++) {
-		if (!priv->hw->chan[i].dma.irq)
-			continue;
-		spin_lock_bh(&priv->hw->chan[i].lock);
-		if (!priv->hw->chan[i].refcount) {
-			if (XRX200_DMA_IS_RX(i))
-				napi_enable(&priv->hw->chan[i].napi);
-			ltq_dma_open(&priv->hw->chan[i].dma);
-		}
-		priv->hw->chan[i].refcount++;
-		spin_unlock_bh(&priv->hw->chan[i].lock);
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		napi_enable(&priv->txq[i].napi);
+		ltq_dma_open(&priv->txq[i].dma);
+		ltq_dma_enable_irq(&priv->txq[i].dma);
 	}
+
+	napi_enable(&priv->rxq.napi);
+	ltq_dma_open(&priv->rxq.dma);
+
+	/* The boot loader does not always deactivate the receiving of frames
+	 * on the ports and then some packets queue up in the PPE buffers.
+	 * They already passed the PMAC so they do not have the tags
+	 * configured here. Read the these packets here and drop them.
+	 * The HW should have written them into memory after 10us
+	 */
+	usleep_range(20, 40);
+	xrx200_flush_dma(&priv->rxq.dma);
+
+	ltq_dma_enable_irq(&priv->rxq.dma);
+
 	for (i = 0; i < priv->num_port; i++)
 		if (priv->port[i].phydev)
 			phy_start(priv->port[i].phydev);
-	netif_wake_queue(dev);
+
+	/* works with a single tx queue too */
+	netif_tx_wake_all_queues(dev);
 
 	return 0;
 }
@@ -890,198 +945,314 @@
 	struct xrx200_priv *priv = netdev_priv(dev);
 	int i;
 
-	netif_stop_queue(dev);
+	netif_tx_stop_all_queues(dev);
 
 	for (i = 0; i < priv->num_port; i++)
 		if (priv->port[i].phydev)
 			phy_stop(priv->port[i].phydev);
 
-	for (i = 0; i < XRX200_MAX_DMA; i++) {
-		if (!priv->hw->chan[i].dma.irq)
-			continue;
+	napi_disable(&priv->rxq.napi);
+	ltq_dma_close(&priv->rxq.dma);
 
-		priv->hw->chan[i].refcount--;
-		if (!priv->hw->chan[i].refcount) {
-			if (XRX200_DMA_IS_RX(i))
-				napi_disable(&priv->hw->chan[i].napi);
-			spin_lock_bh(&priv->hw->chan[i].lock);
-			ltq_dma_close(&priv->hw->chan[XRX200_DMA_RX].dma);
-			spin_unlock_bh(&priv->hw->chan[i].lock);
-		}
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		napi_disable(&priv->txq[i].napi);
+		ltq_dma_close(&priv->txq[i].dma);
 	}
 
 	return 0;
 }
 
-static int xrx200_alloc_skb(struct xrx200_chan *ch)
+static int xrx200_alloc_skb(struct xrx200_priv *priv,
+			    struct ltq_dma_channel *dma,
+			    struct xrx200_skb *dma_skb)
 {
+	struct ltq_dma_desc *base = &dma->desc_base[dma->desc];
+	struct sk_buff *skb;
+
 #define DMA_PAD	(NET_IP_ALIGN + NET_SKB_PAD)
-	ch->skb[ch->dma.desc] = dev_alloc_skb(XRX200_DMA_DATA_LEN + DMA_PAD);
-	if (!ch->skb[ch->dma.desc])
+
+
+	skb = napi_alloc_skb(&priv->rxq.napi, XRX200_DMA_DATA_LEN );
+//   	skb = netdev_alloc_skb(priv->net_dev, XRX200_DMA_DATA_LEN + DMA_PAD);
+//	pr_info("idx:%i %px\n",dma->desc, skb->data);
+
+	//TODO fix fail path
+	if (unlikely(!skb)) {
+		pr_err("skb alloc failed\n");
+
+		/* leave the old skb if not enough memory */
 		goto skip;
+	}
+#if 1
+	dma_unmap_single(priv->dev, dma_skb->addr, XRX200_DMA_DATA_LEN,
+			 DMA_FROM_DEVICE);
+#endif
+	// 	skb_reserve(skb, NET_SKB_PAD);
+	skb_reserve(skb, -NET_IP_ALIGN);
+
+	base->addr = dma_skb->addr =
+		dma_map_single(priv->dev, skb->data,
+			       XRX200_DMA_DATA_LEN, DMA_FROM_DEVICE);
+
+
+// 		if (dma_mapping_error(&cp->pdev->dev, new_mapping)) {
+// 			dev->stats.rx_dropped++;
+// 			kfree_skb(new_skb);
+// 			goto rx_next;
+// 		}
+
 
-	skb_reserve(ch->skb[ch->dma.desc], NET_SKB_PAD);
-	ch->dma.desc_base[ch->dma.desc].addr = dma_map_single(NULL,
-		ch->skb[ch->dma.desc]->data, XRX200_DMA_DATA_LEN,
-			DMA_FROM_DEVICE);
-	ch->dma.desc_base[ch->dma.desc].addr =
-		CPHYSADDR(ch->skb[ch->dma.desc]->data);
-	skb_reserve(ch->skb[ch->dma.desc], NET_IP_ALIGN);
+ 	skb_reserve(skb, NET_IP_ALIGN);
+
+	dma_skb->skb = skb;
+
+	wmb();
 
 skip:
-	ch->dma.desc_base[ch->dma.desc].ctl =
-		LTQ_DMA_OWN | LTQ_DMA_RX_OFFSET(NET_IP_ALIGN) |
+	base->ctl = LTQ_DMA_OWN | LTQ_DMA_RX_OFFSET(NET_IP_ALIGN) |
 		XRX200_DMA_DATA_LEN;
 
+	dma->desc = (dma->desc + 1) % LTQ_DESC_NUM;
+
 	return 0;
 }
 
-static void xrx200_hw_receive(struct xrx200_chan *ch, int id)
+static void xrx200_hw_receive(struct xrx200_rx_queue *rxq,
+			      struct ltq_dma_channel *dma,
+			      struct xrx200_skb *dma_skb, int id)
 {
-	struct net_device *dev = ch->devs[id];
-	struct xrx200_priv *priv = netdev_priv(dev);
-	struct ltq_dma_desc *desc = &ch->dma.desc_base[ch->dma.desc];
-	struct sk_buff *skb = ch->skb[ch->dma.desc];
+	//	struct net_device *dev = rxq->priv->net_dev;
+	struct net_device *dev = rxq->napi.dev;
+	struct ltq_dma_desc *desc = &dma->desc_base[dma->desc];
 	int len = (desc->ctl & LTQ_DMA_SIZE_MASK);
 	int ret;
+	/* struct value will get overwritten by xrx200_alloc_skb */
+	struct sk_buff *filled_skb = dma_skb->skb;
 
-	ret = xrx200_alloc_skb(ch);
-
-	ch->dma.desc++;
-	ch->dma.desc %= LTQ_DESC_NUM;
+	/* alloc new skb first so DMA ring can work during netif_receive_skb */
+	ret = xrx200_alloc_skb(rxq->priv, dma, dma_skb);
 
 	if (ret) {
 		netdev_err(dev,
 			"failed to allocate new rx buffer\n");
+
+		//TODO
 		return;
 	}
 
-	skb_put(skb, len);
+	/* set skb length for netdev */
+	skb_put(filled_skb, len);
 #ifdef SW_ROUTING
-	skb_pull(skb, 8);
+	/* remove special tag */
+	skb_pull(filled_skb, 8);
+#endif
+
+	filled_skb->dev = dev;
+	filled_skb->protocol = eth_type_trans(filled_skb, dev);
+
+	netif_receive_skb(filled_skb);
+////////	napi_gro_receive(&rxq->napi, filled_skb);
+
+#ifdef mystats
+	u64_stats_update_begin(&rxq->syncp);
+	rxq->rx_bytes += len;
+	rxq->rx_packets++;
+	u64_stats_update_end(&rxq->syncp);
 #endif
-	skb->dev = dev;
-	skb->protocol = eth_type_trans(skb, dev);
-	netif_receive_skb(skb);
-	priv->stats.rx_packets++;
-	priv->stats.rx_bytes+=len;
 }
 
 static int xrx200_poll_rx(struct napi_struct *napi, int budget)
 {
-	struct xrx200_chan *ch = container_of(napi,
-				struct xrx200_chan, napi);
-	struct xrx200_priv *priv = netdev_priv(ch->devs[0]);
+	struct xrx200_rx_queue *rxq = container_of(napi,
+						  struct xrx200_rx_queue, napi);
+	struct ltq_dma_channel *dma = &rxq->dma;
 	int rx = 0;
-	int complete = 0;
 
-	while ((rx < budget) && !complete) {
-		struct ltq_dma_desc *desc = &ch->dma.desc_base[ch->dma.desc];
-		if ((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) == LTQ_DMA_C) {
+	while (rx < budget) {
+		struct ltq_dma_desc *desc = &dma->desc_base[dma->desc];
+		if (likely((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) == LTQ_DMA_C)) {
+			struct xrx200_skb *dma_skb = &rxq->dma_skb[dma->desc];
+
 #ifdef SW_ROUTING
-			struct sk_buff *skb = ch->skb[ch->dma.desc];
-			u8 *special_tag = (u8*)skb->data;
+			u8 *special_tag = (u8*)dma_skb->skb->data;
 			int port = (special_tag[7] >> SPPID_SHIFT) & SPPID_MASK;
-			xrx200_hw_receive(ch, priv->hw->port_map[port]);
+
+			xrx200_hw_receive(rxq, dma, dma_skb, rxq->priv->port_map[port]);
 #else
-			xrx200_hw_receive(ch, 0);
+			xrx200_hw_receive(rxq, dma, dma_skb, 0);
 #endif
 			rx++;
 		} else {
-			complete = 1;
+			break;
 		}
 	}
 
-	if (complete || !rx) {
-		napi_complete(&ch->napi);
-		ltq_dma_enable_irq(&ch->dma);
+//pr_info("R %i\n",rx);
+
+	if (rx < budget) {
+		if (napi_complete_done(napi, rx)) {
+//can an unacked irq event wait here now?
+			ltq_dma_enable_irq(dma);
+		}
+	} else {
+// pr_info("F\n");
+
 	}
 
 	return rx;
 }
 
-static void xrx200_tx_housekeeping(unsigned long ptr)
-{
-	struct xrx200_chan *ch = (struct xrx200_chan *) ptr;
+
+#define TX_BUFFS_AVAIL(tail, head)		\
+	((tail <= head) ?			\
+	  tail + (LTQ_DESC_NUM - 1) - head :	\
+	  tail - head - 1)
+
+static int xrx200_tx_housekeeping(struct napi_struct *napi, int budget)
+{
+	struct xrx200_tx_queue *txq =
+		container_of(napi, struct xrx200_tx_queue, napi);
+		//	struct net_device *net_dev = txq->priv->net_dev;
+	struct net_device *net_dev = napi->dev;
 	int pkts = 0;
-	int i;
+	unsigned long bytes = 0;
 
-	spin_lock_bh(&ch->lock);
-	ltq_dma_ack_irq(&ch->dma);
-	while ((ch->dma.desc_base[ch->tx_free].ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) == LTQ_DMA_C) {
-		struct sk_buff *skb = ch->skb[ch->tx_free];
+//	while (1) {
+	while (pkts < budget) {
+		struct ltq_dma_desc *desc = &txq->dma.desc_base[txq->tx_free];
 
-		pkts++;
-		ch->skb[ch->tx_free] = NULL;
-		dev_kfree_skb(skb);
-		memset(&ch->dma.desc_base[ch->tx_free], 0,
-			sizeof(struct ltq_dma_desc));
-		ch->tx_free++;
-		ch->tx_free %= LTQ_DESC_NUM;
+		if ((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) == LTQ_DMA_C) {
+			struct xrx200_skb *dma_skb = &txq->dma_skb[txq->tx_free];
+
+			bytes += dma_skb->size;
+
+#if 1
+//TODO use it, but this ate ~4Mbps in one test, old version is missing it
+			dma_unmap_single(txq->priv->dev, dma_skb->addr,
+					 dma_skb->size, DMA_TO_DEVICE);
+#endif
+			/* Consume skb only at last fragment */
+			if (desc->ctl & LTQ_DMA_EOP) {
+				dev_consume_skb_irq(dma_skb->skb);
+				pkts++;
+			}
+
+			dma_skb->skb = NULL;
+//only control word must be erased, rest is fine
+//			memset(desc, 0, sizeof(struct ltq_dma_desc));
+			desc->ctl = 0;
+
+			txq->tx_free = (txq->tx_free + 1) % LTQ_DESC_NUM;
+		} else {
+			break;
+		}
 	}
-	ltq_dma_enable_irq(&ch->dma);
-	spin_unlock_bh(&ch->lock);
 
-	if (!pkts)
-		return;
+#ifdef mystats
+	u64_stats_update_begin(&txq->syncp);
+	txq->tx_packets += pkts;
+	txq->tx_bytes += bytes;
+	u64_stats_update_end(&txq->syncp);
+#endif
 
-	for (i = 0; i < XRX200_MAX_DEV && ch->devs[i]; i++)
-		netif_wake_queue(ch->devs[i]);
-}
+	// HACK, free all descriptors, even over budget (else there will be queue stalls, slow CPU)
+//  	pkts = pkts ? (budget - 1) : 0;
 
-static struct net_device_stats *xrx200_get_stats (struct net_device *dev)
-{
-	struct xrx200_priv *priv = netdev_priv(dev);
+// pr_info("ch->tx_free %i %i, %i %i\n",ch->tx_free,ch->dma.desc,pkts,budget);
+
+	if (pkts < budget) {
+		if (napi_complete_done(napi, pkts)) {
+			ltq_dma_enable_irq(&txq->dma);
+		}
+	}
 
-	return &priv->stats;
+	if (netif_tx_queue_stopped(netdev_get_tx_queue(net_dev, txq->queue_id))) {
+		if (unlikely(TX_BUFFS_AVAIL(txq->tx_free, txq->dma.desc) > (MAX_SKB_FRAGS + 1))) {
+			netif_tx_wake_queue(netdev_get_tx_queue(net_dev, txq->queue_id));
+		}
+	}
+
+	return pkts;
 }
 
 static void xrx200_tx_timeout(struct net_device *dev)
 {
 	struct xrx200_priv *priv = netdev_priv(dev);
 
-	printk(KERN_ERR "%s: transmit timed out, disable the dma channel irq\n", dev->name);
+	netdev_err(dev, "transmit timed out!\n");
+
+	u64_stats_update_begin(&priv->syncp);
+	priv->tx_errors++;
+	u64_stats_update_end(&priv->syncp);
+
+//TODO this should be enough, but timed out messages usually means driver bugs
+	netif_tx_wake_all_queues(dev);
 
-	priv->stats.tx_errors++;
-	netif_wake_queue(dev);
+// 	if (netif_queue_stopped(dev)) {
+// 		netif_wake_queue(dev);
+// 	} else {
+// 		netdev_warn(dev, "high transmit load\n");
+// 	}
+}
+
+static void xrx200_unwind_mapped_tx_skb(struct xrx200_tx_queue *txq,
+					int tail,
+					int head)
+{
+	for (; tail != head; tail = (tail + 1) % LTQ_DESC_NUM) {
+		dma_unmap_single(txq->priv->dev, txq->dma_skb[tail].addr,
+				 txq->dma_skb[tail].size, DMA_TO_DEVICE);
+		txq->dma.desc_base[tail].ctl = 0;
+	}
 }
 
-static int xrx200_start_xmit(struct sk_buff *skb, struct net_device *dev)
+static netdev_tx_t xrx200_start_xmit(struct sk_buff *skb,
+				     struct net_device *dev)
 {
 	struct xrx200_priv *priv = netdev_priv(dev);
-	struct xrx200_chan *ch;
+	struct xrx200_tx_queue *txq;
+	unsigned int skb_idx;
 	struct ltq_dma_desc *desc;
-	u32 byte_offset;
 	int ret = NETDEV_TX_OK;
 	int len;
+	int i;
+	dma_addr_t mapping;
+	u8 queue_id;
+	struct netdev_queue *netq;
 #ifdef SW_ROUTING
 	u32 special_tag = (SPID_CPU_PORT << SPID_SHIFT) | DPID_ENABLE;
 #endif
-	if(priv->id)
-		ch = &priv->hw->chan[XRX200_DMA_TX_2];
-	else
-		ch = &priv->hw->chan[XRX200_DMA_TX];
 
-	desc = &ch->dma.desc_base[ch->dma.desc];
+	queue_id = skb_get_queue_mapping(skb);
+	netq = netdev_get_tx_queue(dev, queue_id);
+
+	// TX2 is always queue 1, TX is always queue 0
+	txq = &priv->txq[queue_id];
+
+	if (skb_put_padto(skb, ETH_ZLEN)) {
 
-	skb->dev = dev;
-	len = skb->len < ETH_ZLEN ? ETH_ZLEN : skb->len;
+		u64_stats_update_begin(&txq->syncp);
+		txq->tx_dropped++;
+		u64_stats_update_end(&txq->syncp);
+
+		return NETDEV_TX_OK;
+	}
 
 #ifdef SW_ROUTING
 	if (is_multicast_ether_addr(eth_hdr(skb)->h_dest)) {
-		u16 port_map = priv->port_map;
+		u16 port_map = priv->d_port_map;
 
 		if (priv->sw && skb->protocol == htons(ETH_P_8021Q)) {
 			u16 vid;
 			int i;
 
-			port_map = 0;
+ 			port_map = 0;
 			if (!__vlan_get_tag(skb, &vid)) {
 				for (i = 0; i < XRX200_MAX_VLAN; i++) {
-					if (priv->hw->vlan_vid[i] != vid)
-						continue;
-					port_map = priv->hw->vlan_port_map[i];
-					break;
+					if (priv->vlan_vid[i] == vid) {
+						port_map = priv->vlan_port_map[i];
+						break;
+					}
 				}
 			}
 		}
@@ -1089,108 +1260,219 @@
 		special_tag |= (port_map << PORT_MAP_SHIFT) |
 			       PORT_MAP_SEL | PORT_MAP_EN;
 	}
-	if(priv->wan)
+
+	if (priv->wan)
 		special_tag |= (1 << DPID_SHIFT);
-	if(skb_headroom(skb) < 4) {
-		struct sk_buff *tmp = skb_realloc_headroom(skb, 4);
+
+	if (skb_headroom(skb) < XRX200_HEADROOM) {
+		struct sk_buff *tmp = skb_realloc_headroom(skb, XRX200_HEADROOM);
 		dev_kfree_skb_any(skb);
 		skb = tmp;
 	}
-	skb_push(skb, 4);
+
+	skb_push(skb, XRX200_HEADROOM);
 	memcpy(skb->data, &special_tag, sizeof(u32));
-	len += 4;
 #endif
 
-	/* dma needs to start on a 16 byte aligned address */
-	byte_offset = CPHYSADDR(skb->data) % 16;
+	skb_idx = txq->dma.desc;
+
+	if (TX_BUFFS_AVAIL(txq->tx_free, skb_idx) <= (MAX_SKB_FRAGS + 1)) {
+		netif_tx_stop_queue(netq);
+		netdev_err(dev, "not enough TX ring space on queue %i\n", queue_id);
+		return NETDEV_TX_BUSY;
+	}
+
+	/* Send first fragment */
+	desc = &txq->dma.desc_base[skb_idx];
+
+	if (skb_shinfo(skb)->nr_frags == 0) {
+		len = skb->len;
+	} else {
+		len = skb_headlen(skb);
+	}
+
+	mapping = dma_map_single(priv->dev, skb->data, len, DMA_TO_DEVICE);
+	if (unlikely(dma_mapping_error(priv->dev, mapping))) {
+		dev_kfree_skb(skb);
+		netdev_err(dev, "DMA mapping failed\n");
+
+		u64_stats_update_begin(&txq->syncp);
+		txq->tx_dropped++;
+		txq->tx_errors++;
+		u64_stats_update_end(&txq->syncp);
 
-	spin_lock_bh(&ch->lock);
-	if ((desc->ctl & (LTQ_DMA_OWN | LTQ_DMA_C)) || ch->skb[ch->dma.desc]) {
-		netdev_err(dev, "tx ring full\n");
-		netif_stop_queue(dev);
-		ret = NETDEV_TX_BUSY;
+		ret = NETDEV_TX_OK;
 		goto out;
 	}
 
-	ch->skb[ch->dma.desc] = skb;
+	txq->dma_skb[skb_idx].skb = skb;
+	txq->dma_skb[skb_idx].addr = mapping;
+	txq->dma_skb[skb_idx].size = len;
+
+	desc->addr = (mapping & 0x1fffffe0) | (1<<31);
+
+	/* Don't set LTQ_DMA_OWN before filling all fragments descriptors */
+	desc->ctl = LTQ_DMA_SOP | LTQ_DMA_TX_OFFSET(mapping & XRX200_DMA_TX_ALIGN)
+			| (len & LTQ_DMA_SIZE_MASK);
+
+	if (!skb_shinfo(skb)->nr_frags)
+		desc->ctl |= LTQ_DMA_EOP;
+
+	/* Send rest of fragments */
+	for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
+		unsigned int frag_idx = (skb_idx + i + 1) % LTQ_DESC_NUM;
+		struct xrx200_skb *dma_skb = &txq->dma_skb[frag_idx];
+		struct ltq_dma_desc *frag_desc = &txq->dma.desc_base[frag_idx];
+
+		len = skb_frag_size(&skb_shinfo(skb)->frags[i]);
+
+// TODO weird, etop uses virt_to_phys, why it is working there??
+		mapping = dma_map_single(priv->dev,
+					 skb_frag_address(&skb_shinfo(skb)->frags[i]),
+					 len, DMA_TO_DEVICE);
+		if (unlikely(dma_mapping_error(priv->dev, mapping))) {
+
+			xrx200_unwind_mapped_tx_skb(txq, skb_idx, frag_idx);
+
+			netdev_err(dev, "DMA mapping for fragment failed\n");
+			dev_kfree_skb(skb);
 
-	netif_trans_update(dev);
+			u64_stats_update_begin(&txq->syncp);
+			txq->tx_dropped++;
+			txq->tx_errors++;
+			u64_stats_update_end(&txq->syncp);
+
+			ret = NETDEV_TX_OK;
+			goto out;
+		}
+
+		dma_skb->skb = skb;
+		dma_skb->addr = mapping;
+		dma_skb->size = len;
+
+		frag_desc = &txq->dma.desc_base[frag_idx];
+
+		frag_desc->addr = (mapping & 0x1fffffe0) | (1<<31);
+
+		frag_desc->ctl = LTQ_DMA_OWN |
+			LTQ_DMA_TX_OFFSET(mapping & XRX200_DMA_TX_ALIGN) | (len & LTQ_DMA_SIZE_MASK);
+
+		if (i == (skb_shinfo(skb)->nr_frags - 1))
+			frag_desc->ctl |= LTQ_DMA_EOP;
+	}
+
+	/* Increment TX ring index */
+	txq->dma.desc = (skb_idx + skb_shinfo(skb)->nr_frags + 1) % LTQ_DESC_NUM;
 
-	desc->addr = ((unsigned int) dma_map_single(NULL, skb->data, len,
-						DMA_TO_DEVICE)) - byte_offset;
 	wmb();
-	desc->ctl = LTQ_DMA_OWN | LTQ_DMA_SOP | LTQ_DMA_EOP |
-		LTQ_DMA_TX_OFFSET(byte_offset) | (len & LTQ_DMA_SIZE_MASK);
-	ch->dma.desc++;
-	ch->dma.desc %= LTQ_DESC_NUM;
-	if (ch->dma.desc == ch->tx_free)
-		netif_stop_queue(dev);
 
+	/* Start TX DMA */
+	desc->ctl |= LTQ_DMA_OWN;
 
-	priv->stats.tx_packets++;
-	priv->stats.tx_bytes+=len;
+	if (unlikely(TX_BUFFS_AVAIL(txq->tx_free, txq->dma.desc) <= (MAX_SKB_FRAGS + 1))) {
+		netif_tx_stop_queue(netq);
+	}
 
-out:
-	spin_unlock_bh(&ch->lock);
+	skb_tx_timestamp(skb);
 
+out:
 	return ret;
 }
 
-static irqreturn_t xrx200_dma_irq(int irq, void *priv)
+static irqreturn_t xrx200_tx_dma_irq(int irq, void *ptr)
 {
-	struct xrx200_hw *hw = priv;
-	int chnr = irq - XRX200_DMA_IRQ;
-	struct xrx200_chan *ch = &hw->chan[chnr];
+	struct xrx200_tx_queue *txq = ptr;
 
-	ltq_dma_disable_irq(&ch->dma);
-	ltq_dma_ack_irq(&ch->dma);
+	ltq_dma_disable_irq(&txq->dma);
+	ltq_dma_ack_irq(&txq->dma);
+	napi_schedule_irqoff(&txq->napi);
 
-	if (chnr % 2)
-		tasklet_schedule(&ch->tasklet);
-	else
-		napi_schedule(&ch->napi);
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t xrx200_rx_dma_irq(int irq, void *ptr)
+{
+	struct xrx200_rx_queue *rxq = ptr;
+
+	ltq_dma_disable_irq(&rxq->dma);
+	ltq_dma_ack_irq(&rxq->dma);
+	napi_schedule_irqoff(&rxq->napi);
 
 	return IRQ_HANDLED;
 }
 
-static int xrx200_dma_init(struct xrx200_hw *hw)
+static int xrx200_dma_init(struct xrx200_priv *priv)
 {
-	int i, err = 0;
+	int i;
+	struct xrx200_rx_queue *rxq = &priv->rxq;
+	int ret;
 
 	ltq_dma_init_port(DMA_PORT_ETOP);
 
-	for (i = 0; i < 8 && !err; i++) {
-		int irq = XRX200_DMA_IRQ + i;
-		struct xrx200_chan *ch = &hw->chan[i];
-
-		spin_lock_init(&ch->lock);
-
-		ch->idx = ch->dma.nr = i;
-
-		if (i == XRX200_DMA_TX) {
-			ltq_dma_alloc_tx(&ch->dma);
-			err = request_irq(irq, xrx200_dma_irq, 0, "vrx200_tx", hw);
-		} else if (i == XRX200_DMA_TX_2) {
-			ltq_dma_alloc_tx(&ch->dma);
-			err = request_irq(irq, xrx200_dma_irq, 0, "vrx200_tx_2", hw);
-		} else if (i == XRX200_DMA_RX) {
-			ltq_dma_alloc_rx(&ch->dma);
-			for (ch->dma.desc = 0; ch->dma.desc < LTQ_DESC_NUM;
-					ch->dma.desc++)
-				if (xrx200_alloc_skb(ch))
-					err = -ENOMEM;
-			ch->dma.desc = 0;
-			err = request_irq(irq, xrx200_dma_irq, 0, "vrx200_rx", hw);
-		} else
-			continue;
+	rxq->dma.nr = XRX200_DMA_RX;
+	rxq->priv = priv;
 
-		if (!err)
-			ch->dma.irq = irq;
-		else
-			pr_err("net-xrx200: failed to request irq %d\n", irq);
+	ltq_dma_alloc_rx(&rxq->dma);
+	//TODO careful about desc incrementing in original alloc_skb
+	rxq->dma.desc = 0;
+
+	for (i = 0; i < LTQ_DESC_NUM; i++) {
+		ret = xrx200_alloc_skb(priv, &rxq->dma,
+				       &rxq->dma_skb[rxq->dma.desc]);
+		if (ret)
+			goto rx_free;
 	}
+	rxq->dma.desc = 0;
 
-	return err;
+	ret = devm_request_irq(priv->dev, rxq->dma.irq, xrx200_rx_dma_irq, 0,
+			       "xrx200-net rx", &priv->rxq);
+	if (ret) {
+		dev_err(priv->dev, "failed to request RX irq %d\n",
+			rxq->dma.irq);
+		goto rx_ring_free;
+	}
+
+	//TODO this is HACK, devicetree? or at least array
+	priv->txq[0].dma.nr = XRX200_DMA_TX;
+#if (NUM_TX_QUEUES > 1)
+	priv->txq[1].dma.nr = XRX200_DMA_TX_2;
+#endif
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		char *irq_name;
+
+		priv->txq[i].priv = priv;
+
+		ltq_dma_alloc_tx(&priv->txq[i].dma);
+		irq_name = devm_kasprintf(priv->dev, GFP_KERNEL, "xrx200-net tx%d", i);
+
+		ret = devm_request_irq(priv->dev, priv->txq[i].dma.irq,
+				       xrx200_tx_dma_irq, 0, irq_name,
+				       &priv->txq[i]);
+
+		if (ret) {
+			dev_err(priv->dev, "failed to request TX irq %d\n",
+				priv->txq[i].dma.irq);
+
+			for (; i >= 0; i--) {
+				ltq_dma_free(&priv->txq[i].dma);
+			}
+
+			goto rx_ring_free;
+		}
+	}
+
+	return ret;
+
+rx_ring_free:
+	/* free the allocated RX ring */
+	for (i = 0; i < LTQ_DESC_NUM; i++) {
+		if (rxq->dma_skb[i].skb)
+			dev_kfree_skb_any(rxq->dma_skb[i].skb);
+	}
+
+rx_free:
+	ltq_dma_free(&rxq->dma);
+	return ret;
 }
 
 #ifdef SW_POLLING
@@ -1310,8 +1592,8 @@
 
 static int xrx200_phy_has_link(struct net_device *dev)
 {
-	struct xrx200_priv *priv = netdev_priv(dev);
 	int i;
+	struct xrx200_priv *priv = netdev_priv(dev);
 
 	for (i = 0; i < priv->num_port; i++) {
 		if (!priv->port[i].phydev)
@@ -1328,11 +1610,12 @@
 {
 	struct net_device *netdev = phydev->attached_dev;
 
-	if (do_carrier)
+	if (do_carrier) {
 		if (up)
 			netif_carrier_on(netdev);
 		else if (!xrx200_phy_has_link(netdev))
 			netif_carrier_off(netdev);
+	}
 
 	phydev->adjust_link(netdev);
 }
@@ -1343,7 +1626,7 @@
 	struct phy_device *phydev = NULL;
 	unsigned val;
 
-	phydev = mdiobus_get_phy(priv->hw->mii_bus, port->phy_addr);
+	phydev = mdiobus_get_phy(priv->mii_bus, port->phy_addr);
 
 	if (!phydev) {
 		netdev_err(dev, "no PHY found\n");
@@ -1376,10 +1659,10 @@
 #ifdef SW_POLLING
 	phy_read_status(phydev);
 
-	val = xrx200_mdio_rd(priv->hw->mii_bus, MDIO_DEVAD_NONE, MII_CTRL1000);
+	val = xrx200_mdio_rd(priv->mii_bus, MDIO_DEVAD_NONE, MII_CTRL1000);
 	val |= ADVERTIZE_MPD;
-	xrx200_mdio_wr(priv->hw->mii_bus, MDIO_DEVAD_NONE, MII_CTRL1000, val);
-	xrx200_mdio_wr(priv->hw->mii_bus, 0, 0, 0x1040);
+	xrx200_mdio_wr(priv->mii_bus, MDIO_DEVAD_NONE, MII_CTRL1000, val);
+	xrx200_mdio_wr(priv->mii_bus, 0, 0, 0x1040);
 
 	phy_start_aneg(phydev);
 #endif
@@ -1476,7 +1759,7 @@
 
 	memcpy(&mac.sa_data, priv->mac, ETH_ALEN);
 	if (!is_valid_ether_addr(mac.sa_data)) {
-		pr_warn("net-xrx200: invalid MAC, using random\n");
+		netdev_warn(dev, "net-xrx200: invalid MAC, using random\n");
 		eth_random_addr(mac.sa_data);
 		dev->addr_assign_type |= NET_ADDR_RANDOM;
 	}
@@ -1487,7 +1770,7 @@
 
 	for (i = 0; i < priv->num_port; i++)
 		if (xrx200_mdio_probe(dev, &priv->port[i]))
-			pr_warn("xrx200-mdio: probing phy of port %d failed\n",
+			netdev_warn(dev, "xrx200-mdio: probing phy of port %d failed\n",
 					 priv->port[i].num);
 
 	return 0;
@@ -1522,19 +1805,20 @@
 	ltq_switch_w32_mask(0, BIT(3), PCE_GCTRL_REG(0));
 }
 
-static void xrx200_hw_init(struct xrx200_hw *hw)
+static void xrx200_hw_init(struct xrx200_priv *priv)
 {
 	int i;
 
 	/* enable clock gate */
-	clk_enable(hw->clk);
+	clk_enable(priv->clk);
 
 	ltq_switch_w32(1, 0);
 	mdelay(100);
 	ltq_switch_w32(0, 0);
+
 	/*
-	 * TODO: we should really disbale all phys/miis here and explicitly
-	 * enable them in the device secific init function
+	 * TODO: we should really disable all phys/miis here and explicitly
+	 * enable them in the device specific init function
 	 */
 
 	/* disable port fetch/store dma */
@@ -1554,16 +1838,18 @@
 	ltq_switch_w32(0x40, PCE_PMAP2);
 	ltq_switch_w32(0x40, PCE_PMAP3);
 
+//TODO search XRX200_BM_GCTRL_FR_RBC
+
 	/* RMON Counter Enable for all physical ports */
-	for (i = 0; i < 7; i++)
-		ltq_switch_w32(0x1, BM_PCFG(i));
+//	for (i = 0; i < 7; i++)
+//		ltq_switch_w32(0x1, BM_PCFG(i));
 
 	/* disable auto polling */
 	ltq_mdio_w32(0x0, MDIO_CLK_CFG0);
 
 	/* enable port statistic counters */
-	for (i = 0; i < 7; i++)
-		ltq_switch_w32(0x1, BM_PCFGx(i));
+//	for (i = 0; i < 7; i++)
+//		ltq_switch_w32(0x1, BM_PCFGx(i));
 
 	/* set IPG to 12 */
 	ltq_pmac_w32_mask(PMAC_IPG_MASK, 0xb, PMAC_RX_IPG);
@@ -1595,49 +1881,48 @@
 	xrx200sw_write_x(1, XRX200_BM_QUEUE_GCTRL_GL_MOD, 0);
 
 	for (i = 0; i < XRX200_MAX_VLAN; i++)
-		hw->vlan_vid[i] = i;
+		priv->vlan_vid[i] = i;
 }
 
-static void xrx200_hw_cleanup(struct xrx200_hw *hw)
+static void xrx200_hw_cleanup(struct xrx200_priv *priv)
 {
 	int i;
 
 	/* disable the switch */
 	ltq_mdio_w32_mask(MDIO_GLOB_ENABLE, 0, MDIO_GLOB);
 
-	/* free the channels and IRQs */
-	for (i = 0; i < 2; i++) {
-		ltq_dma_free(&hw->chan[i].dma);
-		if (hw->chan[i].dma.irq)
-			free_irq(hw->chan[i].dma.irq, hw);
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		ltq_dma_free(&priv->txq[i].dma);
 	}
 
+	ltq_dma_free(&priv->rxq.dma);
+
 	/* free the allocated RX ring */
 	for (i = 0; i < LTQ_DESC_NUM; i++)
-		dev_kfree_skb_any(hw->chan[XRX200_DMA_RX].skb[i]);
+		dev_kfree_skb_any(priv->rxq.dma_skb[i].skb);
 
 	/* clear the mdio bus */
-	mdiobus_unregister(hw->mii_bus);
-	mdiobus_free(hw->mii_bus);
+	mdiobus_unregister(priv->mii_bus);
+	mdiobus_free(priv->mii_bus);
 
 	/* release the clock */
-	clk_disable(hw->clk);
-	clk_put(hw->clk);
+	clk_disable(priv->clk);
+	clk_put(priv->clk);
 }
 
-static int xrx200_of_mdio(struct xrx200_hw *hw, struct device_node *np)
+static int xrx200_of_mdio(struct xrx200_priv *priv, struct device_node *np)
 {
-	hw->mii_bus = mdiobus_alloc();
-	if (!hw->mii_bus)
+	priv->mii_bus = mdiobus_alloc();
+	if (!priv->mii_bus)
 		return -ENOMEM;
 
-	hw->mii_bus->read = xrx200_mdio_rd;
-	hw->mii_bus->write = xrx200_mdio_wr;
-	hw->mii_bus->name = "lantiq,xrx200-mdio";
-	snprintf(hw->mii_bus->id, MII_BUS_ID_SIZE, "%x", 0);
+	priv->mii_bus->read = xrx200_mdio_rd;
+	priv->mii_bus->write = xrx200_mdio_wr;
+	priv->mii_bus->name = "lantiq,xrx200-mdio";
+	snprintf(priv->mii_bus->id, MII_BUS_ID_SIZE, "%x", 0);
 
-	if (of_mdiobus_register(hw->mii_bus, np)) {
-		mdiobus_free(hw->mii_bus);
+	if (of_mdiobus_register(priv->mii_bus, np)) {
+		mdiobus_free(priv->mii_bus);
 		return -ENXIO;
 	}
 
@@ -1655,6 +1940,7 @@
 	memset(p, 0, sizeof(struct xrx200_port));
 	p->phy_node = of_parse_phandle(port, "phy-handle", 0);
 	addr = of_get_property(p->phy_node, "reg", NULL);
+
 	if (!addr)
 		return;
 
@@ -1665,6 +1951,7 @@
 		p->flags = XRX200_PORT_TYPE_MAC;
 	else
 		p->flags = XRX200_PORT_TYPE_PHY;
+
 	priv->num_port++;
 
 	p->gpio = of_get_gpio_flags(port, 0, &p->gpio_flags);
@@ -1677,14 +1964,95 @@
 		}
 	/* is this port a wan port ? */
 	if (priv->wan)
-		priv->hw->wan_map |= BIT(p->num);
+		priv->wan_map |= BIT(p->num);
 
-	priv->port_map |= BIT(p->num);
+	priv->d_port_map |= BIT(p->num);
 
 	/* store the port id in the hw struct so we can map ports -> devices */
-	priv->hw->port_map[p->num] = priv->hw->num_devs;
+	priv->port_map[p->num] = 0;
+}
+
+static void xrx200_get_stats64(struct net_device *dev,
+			       struct rtnl_link_stats64 *storage)
+{
+	struct xrx200_priv *priv = netdev_priv(dev);
+	unsigned int start;
+	int i;
+
+//TODO are there HW registers?
+	do {
+		start = u64_stats_fetch_begin_irq(&priv->rxq.syncp);
+		storage->rx_packets = priv->rxq.rx_packets;
+		storage->rx_bytes = priv->rxq.rx_bytes;
+	} while (u64_stats_fetch_retry_irq(&priv->rxq.syncp, start));
+
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		do {
+			start = u64_stats_fetch_begin_irq(&priv->txq[i].syncp);
+			storage->tx_packets += priv->txq[i].tx_packets;
+			storage->tx_bytes += priv->txq[i].tx_bytes;
+			storage->tx_errors += priv->txq[i].tx_errors;
+			storage->tx_dropped += priv->txq[i].tx_dropped;
+		} while (u64_stats_fetch_retry_irq(&priv->txq[i].syncp, start));
+	}
+
+	do {
+		start = u64_stats_fetch_begin_irq(&priv->syncp);
+		storage->tx_errors += priv->tx_errors;
+	} while (u64_stats_fetch_retry_irq(&priv->syncp, start));
+}
+
+//TODO this too?
+// * int (*ndo_change_mtu)(struct net_device *dev, int new_mtu);
+// *	Called when a user wants to change the Maximum Transfer Unit
+// *	of a device.
+
+u16 glqid=0;
+
+static u16 xrx200_select_queue(struct net_device *dev, struct sk_buff *skb,
+			    void *accel_priv, select_queue_fallback_t fallback)
+{
+	u16 qid;
+
+	/*
+	 * The SoC seems to be slowed down by tx housekeeping so for
+	 * the best network speed is to schedule tx housekeeping interrupt
+	 * to the other VPE.
+	 *
+	 * The default netdev queue select causes TX speed drops as
+	 * userspace is sometimes scheduled to the same VPE which is making
+	 * housekeeping.
+	 *
+	 * The TX DMAs IRQ should be constrained to a single VPE as the
+	 * cycling through them will cause 50% of time to have the housekeeping
+	 * on the same VPE.
+	 */
+
+	//TODO cornercases: single queue, singlecore, constrained affinity
+
+
+#if 0
+	if (skb_rx_queue_recorded(skb))
+		qid = skb_get_rx_queue(skb);
+	else
+		qid = fallback(dev, skb);
+//#else
+// 	qid = glqid?1:0;
+
+// 	glqid = !glqid;
+#endif
+
+	//HACK only two VPEs max
+	if (smp_processor_id()) {
+		qid = 0;
+	} else {
+		qid = 1;
+	}
+
+	return qid;
 }
 
+
 static const struct net_device_ops xrx200_netdev_ops = {
 	.ndo_init		= xrx200_init,
 	.ndo_open		= xrx200_open,
@@ -1692,33 +2060,23 @@
 	.ndo_start_xmit		= xrx200_start_xmit,
 	.ndo_set_mac_address	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
-	.ndo_get_stats		= xrx200_get_stats,
 	.ndo_tx_timeout		= xrx200_tx_timeout,
+	.ndo_get_stats64	= xrx200_get_stats64,
+ 	.ndo_select_queue	= xrx200_select_queue,
 };
 
-static void xrx200_of_iface(struct xrx200_hw *hw, struct device_node *iface, struct device *dev)
+static void xrx200_of_iface(struct xrx200_priv *priv, struct device_node *iface, struct device *dev)
 {
-	struct xrx200_priv *priv;
 	struct device_node *port;
 	const __be32 *wan;
 	const u8 *mac;
 
-	/* alloc the network device */
-	hw->devs[hw->num_devs] = alloc_etherdev(sizeof(struct xrx200_priv));
-	if (!hw->devs[hw->num_devs])
-		return;
-
 	/* setup the network device */
-	strcpy(hw->devs[hw->num_devs]->name, "eth%d");
-	hw->devs[hw->num_devs]->netdev_ops = &xrx200_netdev_ops;
-	hw->devs[hw->num_devs]->watchdog_timeo = XRX200_TX_TIMEOUT;
-	hw->devs[hw->num_devs]->needed_headroom = XRX200_HEADROOM;
-	SET_NETDEV_DEV(hw->devs[hw->num_devs], dev);
-
-	/* setup our private data */
-	priv = netdev_priv(hw->devs[hw->num_devs]);
-	priv->hw = hw;
-	priv->id = hw->num_devs;
+	strcpy(priv->net_dev->name, "eth%d");
+	priv->net_dev->netdev_ops = &xrx200_netdev_ops;
+	priv->net_dev->watchdog_timeo = XRX200_TX_TIMEOUT;
+	priv->net_dev->needed_headroom = XRX200_HEADROOM;
+	SET_NETDEV_DEV(priv->net_dev, dev);
 
 	mac = of_get_mac_address(iface);
 	if (mac)
@@ -1738,20 +2096,34 @@
 		if (of_device_is_compatible(port, "lantiq,xrx200-pdi-port"))
 			xrx200_of_port(priv, port);
 
-	/* register the actual device */
-	if (!register_netdev(hw->devs[hw->num_devs]))
-		hw->num_devs++;
 }
 
-static struct xrx200_hw xrx200_hw;
-
 static int xrx200_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct resource *res[4];
 	struct device_node *mdio_np, *iface_np, *phy_np;
 	struct of_phandle_iterator it;
 	int err;
 	int i;
+	struct xrx200_priv *priv;
+	struct net_device *net_dev;
+
+	/* alloc the network device */
+	net_dev = devm_alloc_etherdev_mqs(dev, sizeof(struct xrx200_priv),
+					  NUM_TX_QUEUES, 1);
+
+	if (!net_dev)
+		return -ENOMEM;
+
+	priv = netdev_priv(net_dev);
+	priv->net_dev = net_dev;
+	priv->dev = dev;
+
+	net_dev->netdev_ops = &xrx200_netdev_ops;
+	SET_NETDEV_DEV(net_dev, dev);
+	net_dev->min_mtu = ETH_ZLEN;
+	net_dev->max_mtu = XRX200_DMA_DATA_LEN;
 
 	/* load the memory ranges */
 	for (i = 0; i < 4; i++) {
@@ -1761,10 +2133,12 @@
 			return -ENOENT;
 		}
 	}
+
 	xrx200_switch_membase = devm_ioremap_resource(&pdev->dev, res[0]);
 	xrx200_mdio_membase = devm_ioremap_resource(&pdev->dev, res[1]);
 	xrx200_mii_membase = devm_ioremap_resource(&pdev->dev, res[2]);
 	xrx200_pmac_membase = devm_ioremap_resource(&pdev->dev, res[3]);
+
 	if (!xrx200_switch_membase || !xrx200_mdio_membase ||
 			!xrx200_mii_membase || !xrx200_pmac_membase) {
 		dev_err(&pdev->dev, "failed to request and remap io ranges \n");
@@ -1775,91 +2149,117 @@
 		phy_np = it.node;
 		if (phy_np) {
 			struct platform_device *phy = of_find_device_by_node(phy_np);
-	
+
 			of_node_put(phy_np);
 			if (!platform_get_drvdata(phy))
 				return -EPROBE_DEFER;
 		}
 	}
 
+	priv->rxq.dma.irq = XRX200_DMA_IRQ + XRX200_DMA_RX;
+	priv->rxq.priv = priv;
+
+	//TODO this is HACK, devicetree? or at least array
+	priv->txq[0].dma.irq = XRX200_DMA_IRQ + XRX200_DMA_TX;
+#if (NUM_TX_QUEUES > 1)
+	priv->txq[1].dma.irq = XRX200_DMA_IRQ + XRX200_DMA_TX_2;
+#endif
+
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		priv->txq[i].priv = priv;
+		priv->txq[i].queue_id = i;
+	}
+
 	/* get the clock */
-	xrx200_hw.clk = clk_get(&pdev->dev, NULL);
-	if (IS_ERR(xrx200_hw.clk)) {
+	priv->clk = clk_get(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk)) {
 		dev_err(&pdev->dev, "failed to get clock\n");
-		return PTR_ERR(xrx200_hw.clk);
+		return PTR_ERR(priv->clk);
 	}
 
 	/* bring up the dma engine and IP core */
-	xrx200_dma_init(&xrx200_hw);
-	xrx200_hw_init(&xrx200_hw);
-	tasklet_init(&xrx200_hw.chan[XRX200_DMA_TX].tasklet, xrx200_tx_housekeeping, (u32) &xrx200_hw.chan[XRX200_DMA_TX]);
-	tasklet_init(&xrx200_hw.chan[XRX200_DMA_TX_2].tasklet, xrx200_tx_housekeeping, (u32) &xrx200_hw.chan[XRX200_DMA_TX_2]);
+	err = xrx200_dma_init(priv);
+	if (err)
+		return err;
+
+	/* enable clock gate */
+	err = clk_prepare_enable(priv->clk);
+	if (err)
+		goto err_uninit_dma;
+
+	xrx200_hw_init(priv);
 
 	/* bring up the mdio bus */
 	mdio_np = of_find_compatible_node(pdev->dev.of_node, NULL,
 				"lantiq,xrx200-mdio");
 	if (mdio_np)
-		if (xrx200_of_mdio(&xrx200_hw, mdio_np))
+		if (xrx200_of_mdio(priv, mdio_np))
 			dev_err(&pdev->dev, "mdio probe failed\n");
 
 	/* load the interfaces */
 	for_each_child_of_node(pdev->dev.of_node, iface_np)
-		if (of_device_is_compatible(iface_np, "lantiq,xrx200-pdi")) {
-			if (xrx200_hw.num_devs < XRX200_MAX_DEV)
-				xrx200_of_iface(&xrx200_hw, iface_np, &pdev->dev);
-			else
-				dev_err(&pdev->dev,
-					"only %d interfaces allowed\n",
-					XRX200_MAX_DEV);
-		}
-
-	if (!xrx200_hw.num_devs) {
-		xrx200_hw_cleanup(&xrx200_hw);
-		dev_err(&pdev->dev, "failed to load interfaces\n");
-		return -ENOENT;
-	}
+			if (of_device_is_compatible(iface_np, "lantiq,xrx200-pdi")) {
+				xrx200_of_iface(priv, iface_np, &pdev->dev);
+				break;	//hack
+			}
 
-	xrx200sw_init(&xrx200_hw);
+	xrx200sw_init(priv);
 
 	/* set wan port mask */
-	ltq_pmac_w32(xrx200_hw.wan_map, PMAC_EWAN);
+	ltq_pmac_w32(priv->wan_map, PMAC_EWAN);
 
-	for (i = 0; i < xrx200_hw.num_devs; i++) {
-		xrx200_hw.chan[XRX200_DMA_RX].devs[i] = xrx200_hw.devs[i];
-		xrx200_hw.chan[XRX200_DMA_TX].devs[i] = xrx200_hw.devs[i];
-		xrx200_hw.chan[XRX200_DMA_TX_2].devs[i] = xrx200_hw.devs[i];
+	/* setup NAPI */
+	netif_napi_add(net_dev, &priv->rxq.napi, xrx200_poll_rx, 64);	//32
+
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		netif_tx_napi_add(net_dev, &priv->txq[i].napi, xrx200_tx_housekeeping, 48);
 	}
 
-	/* setup NAPI */
-	init_dummy_netdev(&xrx200_hw.chan[XRX200_DMA_RX].dummy_dev);
-	netif_napi_add(&xrx200_hw.chan[XRX200_DMA_RX].dummy_dev,
-			&xrx200_hw.chan[XRX200_DMA_RX].napi, xrx200_poll_rx, 32);
+	net_dev->features |= NETIF_F_SG ;
+	net_dev->hw_features |= NETIF_F_SG;
+	net_dev->vlan_features |= NETIF_F_SG;
 
-	platform_set_drvdata(pdev, &xrx200_hw);
+	platform_set_drvdata(pdev, priv);
+
+	err = register_netdev(net_dev);
+	if (err)
+		goto err_unprepare_clk;
 
 	return 0;
+
+err_unprepare_clk:
+	clk_disable_unprepare(priv->clk);
+
+err_uninit_dma:
+	xrx200_hw_cleanup(priv);
+
+	return err;
 }
 
 static int xrx200_remove(struct platform_device *pdev)
 {
-	struct net_device *dev = platform_get_drvdata(pdev);
-	struct xrx200_priv *priv;
+	int i;
+	struct xrx200_priv *priv = platform_get_drvdata(pdev);
+	struct net_device *net_dev = priv->net_dev;
 
-	if (!dev)
-		return 0;
+	/* free stack related instances */
 
-	priv = netdev_priv(dev);
+	netif_tx_stop_all_queues(net_dev);
 
-	/* free stack related instances */
-	netif_stop_queue(dev);
-	netif_napi_del(&xrx200_hw.chan[XRX200_DMA_RX].napi);
+	for (i = 0; i < NUM_TX_QUEUES; i++) {
+		netif_napi_del(&priv->txq[i].napi);
+	}
 
-	/* shut down hardware */
-	xrx200_hw_cleanup(&xrx200_hw);
+	netif_napi_del(&priv->rxq.napi);
 
 	/* remove the actual device */
-	unregister_netdev(dev);
-	free_netdev(dev);
+	unregister_netdev(net_dev);
+
+	/* release the clock */
+	clk_disable_unprepare(priv->clk);
+
+	/* shut down hardware */
+	xrx200_hw_cleanup(priv);
 
 	return 0;
 }
--- a/arch/mips/include/asm/mach-lantiq/xway/xway_dma.h	2019-03-05 17:58:03.000000000 +0100
+++ b/arch/mips/include/asm/mach-lantiq/xway/xway_dma.h	2019-05-19 03:05:57.299963234 +0200
@@ -19,7 +19,7 @@
 #define LTQ_DMA_H__
 
 #define LTQ_DESC_SIZE		0x08	/* each descriptor is 64bit */
-#define LTQ_DESC_NUM		0x40	/* 64 descriptors / channel */
+#define LTQ_DESC_NUM		0x80	/* 128 descriptors / channel */
 
 #define LTQ_DMA_OWN		BIT(31) /* owner bit */
 #define LTQ_DMA_C		BIT(30) /* complete bit */
--- a/arch/mips/lantiq/xway/dma.c	2019-03-05 17:58:03.000000000 +0100
+++ b/arch/mips/lantiq/xway/dma.c	2019-05-19 03:05:57.301963209 +0200
@@ -49,7 +49,10 @@
 #define DMA_IRQ_ACK		0x7e		/* IRQ status register */
 #define DMA_POLL		BIT(31)		/* turn on channel polling */
 #define DMA_CLK_DIV4		BIT(6)		/* polling clock divider */
-#define DMA_2W_BURST		BIT(1)		/* 2 word burst length */
+#define DMA_1W_BURST		0x0		/* 1 word burst length/no burst */
+#define DMA_2W_BURST		0x1		/* 2 word burst length */
+#define DMA_4W_BURST		0x2		/* 4 word burst length */
+#define DMA_8W_BURST		0x3		/* 8 word burst length */
 #define DMA_MAX_CHANNEL		20		/* the soc has 20 channels */
 #define DMA_ETOP_ENDIANNESS	(0xf << 8) /* endianness swap etop channels */
 #define DMA_WEIGHT	(BIT(17) | BIT(16))	/* default channel wheight */
@@ -138,7 +141,7 @@
 	spin_lock_irqsave(&ltq_dma_lock, flags);
 	ltq_dma_w32(ch->nr, LTQ_DMA_CS);
 	ltq_dma_w32(ch->phys, LTQ_DMA_CDBA);
-	ltq_dma_w32(LTQ_DESC_NUM, LTQ_DMA_CDLEN);
+	ltq_dma_w32(LTQ_DESC_NUM, LTQ_DMA_CDLEN);	//0xff mask
 	ltq_dma_w32_mask(DMA_CHAN_ON, 0, LTQ_DMA_CCTRL);
 	wmb();
 	ltq_dma_w32_mask(0, DMA_CHAN_RST, LTQ_DMA_CCTRL);
@@ -155,7 +158,13 @@
 	ltq_dma_alloc(ch);
 
 	spin_lock_irqsave(&ltq_dma_lock, flags);
-	ltq_dma_w32(DMA_DESCPT, LTQ_DMA_CIE);
+
+//DMA_DESCPT BIT(3) //end of descriptor
+//BIT(1)	//end of packet
+//	ltq_dma_w32(DMA_DESCPT, LTQ_DMA_CIE);
+	ltq_dma_w32(BIT(1), LTQ_DMA_CIE);
+	
+	
 	ltq_dma_w32_mask(0, 1 << ch->nr, LTQ_DMA_IRNEN);
 	ltq_dma_w32(DMA_WEIGHT | DMA_TX, LTQ_DMA_CCTRL);
 	spin_unlock_irqrestore(&ltq_dma_lock, flags);
@@ -194,6 +203,12 @@
 	ltq_dma_w32(p, LTQ_DMA_PS);
 	switch (p) {
 	case DMA_PORT_ETOP:
+
+		/* 8 words burst, data must be aligned on 4*N bytes or freeze */
+//TODO? different bursts for TX and RX (RX is fine at 1G eth)		
+		ltq_dma_w32_mask(0x3c, (DMA_8W_BURST << 4) | (DMA_8W_BURST << 2),
+			LTQ_DMA_PCTRL);
+
 		/*
 		 * Tell the DMA engine to swap the endianness of data frames and
 		 * drop packets if the channel arbitration fails.
@@ -241,10 +256,18 @@
 	for (i = 0; i < DMA_MAX_CHANNEL; i++) {
 		ltq_dma_w32(i, LTQ_DMA_CS);
 		ltq_dma_w32(DMA_CHAN_RST, LTQ_DMA_CCTRL);
-		ltq_dma_w32(DMA_POLL | DMA_CLK_DIV4, LTQ_DMA_CPOLL);
 		ltq_dma_w32_mask(DMA_CHAN_ON, 0, LTQ_DMA_CCTRL);
 	}
 
+//TODO 0x100 << 4 fastest TX without fragments
+// 0x100 for fragments timeouts, 0x10 only under really _heavy_ load
+//TODO not dependent on channel select (LTQ_DMA_CS), why it was in for cycle
+	ltq_dma_w32(DMA_POLL | (0x10 << 4), LTQ_DMA_CPOLL);
+
+//TODO packet arbitration ???, test different values
+//0x3ff << 16 multiple burst count, 1<<30 multiple burst arbitration, 1<<31 packet arbitration, 1<<0 reset (!)
+//	ltq_dma_w32((1 << 31) | 0x40000, LTQ_DMA_CTRL);
+
 	id = ltq_dma_r32(LTQ_DMA_ID);
 	dev_info(&pdev->dev,
 		"Init done - hw rev: %X, ports: %d, channels: %d\n",

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
