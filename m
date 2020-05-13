Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349921D1420
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 15:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QhwKz+Qi5o5CrT+IBSzrJDrulNszzjpKX3KyD3jPTas=; b=kALf8CcxB2eIfIdaf8euvQGgRC
	DiOZbE0/e0J4sf1VjK+NI+fPesXOnvm7w/nl3/2I4DOZdrIUh0dVa+PdMn9BemJ52f8oWya5UKO4A
	uZhLDhDkfrXST3WRSmSA/CJzh2k8ZpsEOvDqM7NW2FYW6QogzX/Bee0WZIE7KbGTBbM6c99N4Gqa+
	MdYHe969lud7aSPLMEipN6GGwkxq030+0+J15yg0zQCiBfxbmgaKewXWhEhsgCMhTkjrdaxm18ugu
	Xw27V5nKJ36wRGhFmB9ISrwz9diTuP0ai7CKnO2S2pd2mL8gvLTgnP3XNoDP1Np4nMUO/x6OqaxKE
	i3qNPVXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr8j-000529-BF; Wed, 13 May 2020 13:09:37 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr7q-0004Ik-NX
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 13:08:46 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MZCOl-1jcrJv2syX-00V9pM for <openwrt-devel@lists.openwrt.org>; Wed, 13
 May 2020 15:08:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 15:07:20 +0200
Message-Id: <20200513130721.49794-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
References: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:JvcnazTq6D7/j7ob3mOHmfBGUab+8ln7POzg2K6iHsHqmJ+gdGd
 GIVHjDRQ/dGBrvEuVxdVA2tHc9jJmd6H+lukblsfYQWOhqojlEcPylx2LK2Dor/ywZ+5rwP
 Zx+UniGct8+430IUtIxNKXseBuXrdxR556uM0gyw7YLeixI42mVSVaoDUm7qUc0/ViJVlCF
 BY9MzhvkIZIzPambTnoiw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z2ynRCRvM6U=:mJBtkHxBCYOmdRWrURJzQy
 Z737sfTyHsgEIE9qgg4p+UhAiebfGUlj2hUrdAQZMWe8squBG0MNgTKarW6faoCQZyKge76Hz
 vi3aTXgZkSSi6L4sX0V7YmNJTnAtZkmMcMFAlbROe3nqseqITQB9TTlR8OGDJ9UOI/WM6CRxx
 GaX3Z4ZJFVr7kOdxzX9RvIKuWZncakYTyXhTM9lE7EVKYozPgEMuJTpa5P/51HYHM2FBRT6TN
 8bJGRm8kv6c5vVXVOYNlg9Y6bnLWT8f7SyqBzeU3HCHRMxablb07r3azzJZE0nCe04qvlhsSL
 EaKnYfkhsKuSN8+hPPocFvX899+TdftvD2HIqrMfU7gUhUbqBktimAD6vHuI1aRWDEXTZbhpX
 NkiOf4HexTt+KEeJfqSwTfhG5ZgEGZyXN90A1iG0ASQAjTag7g4+hIAWry42rFBt7GrC37Agy
 sCHt9LmC+kPay5HctbzWgif3iyDrhFEoBedaqmoN2Fvkt1s191qodss+UgYEuy2WfhWFAhFPW
 PQnl6gVnWSFDmBItqOfFbY4ixYdzKFiPcMAiYmrZ3K4e2otv4bh05kITD1R7Tlpncy+CIzMRL
 K8yunlYst8okBw0P6DgXOWd913hPXX87PcpbC9fw0Ve6XTxPyXByoPZJh9XfIfaI+BbGLCOwL
 s/FC82aWC401UzJuEHB1XBKO3wdN1krmfDoVECfPOhjUE4OgsNgmhkrjxfapgwl5wGfv/dCaV
 ZpiWyeP9qezuApKr7j1sgcVT26LC2EeHpTvQeBst5W8yYCA/9h6iG0njKkmbelo1VggcpNSgd
 kSC2fN2cCZOT95KMxj13YOAbW+DvjGdnp2kHw7SqeYvDbgFHtQknxcR+gkfZQm1iHT2Aues
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060843_076717_CF532AF9 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 3/4] bcm27xx: drop outdated kernel version
 switches from patches-5.4
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

This drops some ancient kernel version switches from patches on
bcm27xx target. The patch only adjusts the latest kernel 5.4, as
doing it a second time for an older kernel seems a waste of time
for a cosmetic change.

Refresh remaining target patches.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../950-0037-Add-dwc_otg-driver.patch         | 192 +-----------------
 ...are-DMA-capability-with-HCD_DMA-flag.patch |   2 +-
 ...-the-urb-transfer_buffer-too-early-3.patch |   4 +-
 ...n-endpoint-max-packet-and-transfer-s.patch |   4 +-
 4 files changed, 12 insertions(+), 190 deletions(-)

diff --git a/target/linux/bcm27xx/patches-5.4/950-0037-Add-dwc_otg-driver.patch b/target/linux/bcm27xx/patches-5.4/950-0037-Add-dwc_otg-driver.patch
index a613aa6e60..3e2d74ed56 100644
--- a/target/linux/bcm27xx/patches-5.4/950-0037-Add-dwc_otg-driver.patch
+++ b/target/linux/bcm27xx/patches-5.4/950-0037-Add-dwc_otg-driver.patch
@@ -7658,7 +7658,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +}
 --- /dev/null
 +++ b/drivers/usb/host/dwc_common_port/dwc_common_linux.c
-@@ -0,0 +1,1409 @@
+@@ -0,0 +1,1405 @@
 +#include <linux/kernel.h>
 +#include <linux/init.h>
 +#include <linux/module.h>
@@ -7703,11 +7703,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +
 +#include <linux/version.h>
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,24)
 +# include <linux/usb/gadget.h>
-+#else
-+# include <linux/usb_gadget.h>
-+#endif
 +
 +#include <asm/io.h>
 +#include <asm/page.h>
@@ -15687,7 +15683,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +SEARCHENGINE           = NO
 --- /dev/null
 +++ b/drivers/usb/host/dwc_otg/dummy_audio.c
-@@ -0,0 +1,1574 @@
+@@ -0,0 +1,1570 @@
 +/*
 + * zero.c -- Gadget Zero, for USB development
 + *
@@ -15774,11 +15770,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#include <asm/system.h>
 +#include <asm/unaligned.h>
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,21)
 +# include <linux/usb/ch9.h>
-+#else
-+# include <linux/usb_ch9.h>
-+#endif
 +
 +#include <linux/usb_gadget.h>
 +
@@ -32906,7 +32898,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#endif
 --- /dev/null
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_driver.c
-@@ -0,0 +1,1772 @@
+@@ -0,0 +1,1768 @@
 +/* ==========================================================================
 + * $File: //dwh/usb_iip/dev/software/otg/linux/drivers/dwc_otg_driver.c $
 + * $Revision: #92 $
@@ -33842,11 +33834,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#if defined(LM_INTERFACE) || defined(PLATFORM_INTERFACE)
 +	dev_dbg(&_dev->dev, "Calling set_irq_type\n");
 +	set_irq_type(devirq,
-+#if (LINUX_VERSION_CODE < KERNEL_VERSION(2,6,30))
-+                     IRQT_LOW
-+#else
 +                     IRQ_TYPE_LEVEL_LOW
-+#endif
 +                    );
 +#endif
 +#endif /*IRQF_TRIGGER_LOW*/
@@ -36683,7 +36671,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +END(_dwc_otg_fiq_stub)
 --- /dev/null
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_hcd.c
-@@ -0,0 +1,4327 @@
+@@ -0,0 +1,4325 @@
 +
 +/* ==========================================================================
 + * $File: //dwh/usb_iip/dev/software/otg/linux/drivers/dwc_otg_hcd.c $
@@ -37368,7 +37356,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	return retval;
 +}
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,30)
 +int dwc_otg_hcd_endpoint_reset(dwc_otg_hcd_t * hcd, void *ep_handle)
 +{
 +	int retval = 0;
@@ -37379,7 +37366,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	qh->data_toggle = DWC_OTG_HC_PID_DATA0;
 +	return retval;
 +}
-+#endif
 +
 +/**
 + * HCD Callback structure for handling mode switching.
@@ -46207,7 +46193,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#endif /* DWC_DEVICE_ONLY */
 --- /dev/null
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.c
-@@ -0,0 +1,1083 @@
+@@ -0,0 +1,1034 @@
 +
 +/* ==========================================================================
 + * $File: //dwh/usb_iip/dev/software/otg/linux/drivers/dwc_otg_hcd_linux.c $
@@ -46265,18 +46251,10 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#include <asm/fiq.h>
 +#endif
 +#include <linux/usb.h>
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,35)
-+#include <../drivers/usb/core/hcd.h>
-+#else
 +#include <linux/usb/hcd.h>
-+#endif
 +#include <asm/bug.h>
 +
-+#if (LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,30))
 +#define USB_URB_EP_LINKING 1
-+#else
-+#define USB_URB_EP_LINKING 0
-+#endif
 +
 +#include "dwc_otg_hcd_if.h"
 +#include "dwc_otg_dbg.h"
@@ -46307,24 +46285,13 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +/** @{ */
 +/* manage i/o requests, device state */
 +static int dwc_otg_urb_enqueue(struct usb_hcd *hcd,
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+		       struct usb_host_endpoint *ep,
-+#endif
 +		       struct urb *urb, gfp_t mem_flags);
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,30)
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+static int dwc_otg_urb_dequeue(struct usb_hcd *hcd, struct urb *urb);
-+#endif
-+#else /* kernels at or post 2.6.30 */
 +static int dwc_otg_urb_dequeue(struct usb_hcd *hcd,
 +                               struct urb *urb, int status);
-+#endif /* LINUX_VERSION_CODE < KERNEL_VERSION(2,6,30) */
 +
 +static void endpoint_disable(struct usb_hcd *hcd, struct usb_host_endpoint *ep);
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,30)
 +static void endpoint_reset(struct usb_hcd *hcd, struct usb_host_endpoint *ep);
-+#endif
 +static irqreturn_t dwc_otg_hcd_irq(struct usb_hcd *hcd);
 +extern int hcd_start(struct usb_hcd *hcd);
 +extern void hcd_stop(struct usb_hcd *hcd);
@@ -46359,9 +46326,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	.urb_enqueue = dwc_otg_urb_enqueue,
 +	.urb_dequeue = dwc_otg_urb_dequeue,
 +	.endpoint_disable = endpoint_disable,
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,30)
 +	.endpoint_reset = endpoint_reset,
-+#endif
 +	.get_frame_number = get_frame_number,
 +
 +	.hub_status_data = hub_status_data,
@@ -46583,11 +46548,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#if USB_URB_EP_LINKING
 +		usb_hcd_unlink_urb_from_ep(dwc_otg_hcd_to_hcd(hcd), urb);
 +#endif
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+		usb_hcd_giveback_urb(dwc_otg_hcd_to_hcd(hcd), urb);
-+#else
 +		usb_hcd_giveback_urb(dwc_otg_hcd_to_hcd(hcd), urb, urb->status);
-+#endif
 +	} else {
 +		new_entry->urb = urb;
 +#if USB_URB_EP_LINKING
@@ -46787,14 +46748,10 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	 * Allocate memory for the base HCD plus the DWC OTG HCD.
 +	 * Initialize the base HCD.
 +	 */
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,30)
-+	hcd = usb_create_hcd(&dwc_otg_hc_driver, &_dev->dev, _dev->dev.bus_id);
-+#else
 +	hcd = usb_create_hcd(&dwc_otg_hc_driver, &_dev->dev, dev_name(&_dev->dev));
 +	hcd->has_tt = 1;
 +//      hcd->uses_new_polling = 1;
 +//      hcd->poll_rh = 0;
-+#endif
 +	if (!hcd) {
 +		retval = -ENOMEM;
 +		goto error1;
@@ -46839,13 +46796,8 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#endif
 +
 +	hcd->self.otg_port = dwc_otg_hcd_otg_port(dwc_otg_hcd);
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,33) //don't support for LM(with 2.6.20.1 kernel)
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,35) //version field absent later
-+	hcd->self.otg_version = dwc_otg_get_otg_version(otg_dev->core_if);
-+#endif
 +	/* Don't support SG list at this point */
 +	hcd->self.sg_tablesize = 0;
-+#endif
 +	/*
 +	 * Finish generic HCD initialization and start the HCD. This function
 +	 * allocates the DMA buffer pool, registers the USB bus, requests the
@@ -47007,15 +46959,10 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 + * (URB). mem_flags indicates the type of memory allocation to use while
 + * processing this URB. */
 +static int dwc_otg_urb_enqueue(struct usb_hcd *hcd,
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+		       struct usb_host_endpoint *ep,
-+#endif
 +		       struct urb *urb, gfp_t mem_flags)
 +{
 +	int retval = 0;
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,28)
 +	struct usb_host_endpoint *ep = urb->ep;
-+#endif
 +	dwc_irqflags_t irqflags;
 +        void **ref_ep_hcpriv = &ep->hcpriv;
 +	dwc_otg_hcd_t *dwc_otg_hcd = hcd_to_dwc_otg_hcd(hcd);
@@ -47151,11 +47098,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +
 +/** Aborts/cancels a USB transfer request. Always returns 0 to indicate
 + * success.  */
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+static int dwc_otg_urb_dequeue(struct usb_hcd *hcd, struct urb *urb)
-+#else
 +static int dwc_otg_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
-+#endif
 +{
 +	dwc_irqflags_t flags;
 +	dwc_otg_hcd_t *dwc_otg_hcd;
@@ -47191,11 +47134,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +		DWC_SPINUNLOCK_IRQRESTORE(dwc_otg_hcd->lock, flags);
 +
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+                usb_hcd_giveback_urb(hcd, urb);
-+#else
 +                usb_hcd_giveback_urb(hcd, urb, status);
-+#endif
 +                if (CHK_DEBUG_LEVEL(DBG_HCDV | DBG_HCD_URB)) {
 +                        DWC_PRINTF("Called usb_hcd_giveback_urb() \n");
 +                        DWC_PRINTF("  1urb->status = %d\n", urb->status);
@@ -47225,7 +47164,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	ep->hcpriv = NULL;
 +}
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,30)
 +/* Resets endpoint specific parameter values, in current version used to reset
 + * the data toggle(as a WA). This function can be called from usb_clear_halt routine */
 +static void endpoint_reset(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
@@ -47241,7 +47179,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	}
 +	DWC_SPINUNLOCK_IRQRESTORE(dwc_otg_hcd->lock, flags);
 +}
-+#endif
 +
 +/** Handles host mode interrupts for the DWC_otg controller. Returns IRQ_NONE if
 + * there was no interrupt to handle. Returns IRQ_HANDLED if there was a valid
@@ -48266,7 +48203,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#endif /* DWC_DEVICE_ONLY */
 --- /dev/null
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_os_dep.h
-@@ -0,0 +1,199 @@
+@@ -0,0 +1,170 @@
 +#ifndef _DWC_OS_DEP_H_
 +#define _DWC_OS_DEP_H_
 +
@@ -48299,25 +48236,11 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +
 +#include <linux/version.h>
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,20)
 +# include <linux/irq.h>
-+#endif
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,21)
 +# include <linux/usb/ch9.h>
-+#else
-+# include <linux/usb_ch9.h>
-+#endif
 +
-+#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,24)
 +# include <linux/usb/gadget.h>
-+#else
-+# include <linux/usb_gadget.h>
-+#endif
-+
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,20)
-+# include <asm/irq.h>
-+#endif
 +
 +#ifdef PCI_INTERFACE
 +# include <asm/io.h>
@@ -48328,19 +48251,12 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +# include <asm/sizes.h>
 +# include <asm/param.h>
 +# include <asm/io.h>
-+# if (LINUX_VERSION_CODE < KERNEL_VERSION(2,6,30))
-+#  include <asm/arch/hardware.h>
-+#  include <asm/arch/lm.h>
-+#  include <asm/arch/irqs.h>
-+#  include <asm/arch/regs-irq.h>
-+# else
 +/* in 2.6.31, at least, we seem to have lost the generic LM infrastructure -
 +   here we assume that the machine architecture provides definitions
 +   in its own header
 +*/
 +#  include <mach/lm.h>
 +#  include <mach/hardware.h>
-+# endif
 +#endif
 +
 +#ifdef PLATFORM_INTERFACE
@@ -48353,14 +48269,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +/** The OS page size */
 +#define DWC_OS_PAGE_SIZE	PAGE_SIZE
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,14)
-+typedef int gfp_t;
-+#endif
-+
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,18)
-+# define IRQF_SHARED SA_SHIRQ
-+#endif
-+
 +typedef struct os_dependent {
 +	/** Base address returned from ioremap() */
 +	void *base;
@@ -56987,7 +56895,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +#endif /* DWC_HOST_ONLY */
 --- /dev/null
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_pcd_linux.c
-@@ -0,0 +1,1262 @@
+@@ -0,0 +1,1176 @@
 + /* ==========================================================================
 +  * $File: //dwh/usb_iip/dev/software/otg/linux/drivers/dwc_otg_pcd_linux.c $
 +  * $Revision: #21 $
@@ -57231,67 +57139,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	kfree(req);
 +}
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+/**
-+ * This function allocates an I/O buffer to be used for a transfer
-+ * to/from the specified endpoint.
-+ *
-+ * @param usb_ep The endpoint to be used with with the request
-+ * @param bytes The desired number of bytes for the buffer
-+ * @param dma Pointer to the buffer's DMA address; must be valid
-+ * @param gfp_flags the GFP_* flags to use.
-+ * @return address of a new buffer or null is buffer could not be allocated.
-+ */
-+static void *dwc_otg_pcd_alloc_buffer(struct usb_ep *usb_ep, unsigned bytes,
-+				      dma_addr_t * dma, gfp_t gfp_flags)
-+{
-+	void *buf;
-+	dwc_otg_pcd_t *pcd = 0;
-+
-+	pcd = gadget_wrapper->pcd;
-+
-+	DWC_DEBUGPL(DBG_PCDV, "%s(%p,%d,%p,%0x)\n", __func__, usb_ep, bytes,
-+		    dma, gfp_flags);
-+
-+	/* Check dword alignment */
-+	if ((bytes & 0x3UL) != 0) {
-+		DWC_WARN("%s() Buffer size is not a multiple of"
-+			 "DWORD size (%d)", __func__, bytes);
-+	}
-+
-+	buf = dma_alloc_coherent(NULL, bytes, dma, gfp_flags);
-+	WARN_ON(!buf);
-+
-+	/* Check dword alignment */
-+	if (((int)buf & 0x3UL) != 0) {
-+		DWC_WARN("%s() Buffer is not DWORD aligned (%p)",
-+			 __func__, buf);
-+	}
-+
-+	return buf;
-+}
-+
-+/**
-+ * This function frees an I/O buffer that was allocated by alloc_buffer.
-+ *
-+ * @param usb_ep the endpoint associated with the buffer
-+ * @param buf address of the buffer
-+ * @param dma The buffer's DMA address
-+ * @param bytes The number of bytes of the buffer
-+ */
-+static void dwc_otg_pcd_free_buffer(struct usb_ep *usb_ep, void *buf,
-+				    dma_addr_t dma, unsigned bytes)
-+{
-+	dwc_otg_pcd_t *pcd = 0;
-+
-+	pcd = gadget_wrapper->pcd;
-+
-+	DWC_DEBUGPL(DBG_PCDV, "%s(%p,%0x,%d)\n", __func__, buf, dma, bytes);
-+
-+	dma_free_coherent(NULL, bytes, buf, dma);
-+}
-+#endif
-+
 +/**
 + * This function is used to submit an I/O Request to an EP.
 + *
@@ -57347,9 +57194,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +		is_isoc_ep = 0;
 +	else
 +		is_isoc_ep = (ep->dwc_ep.type == DWC_OTG_EP_TYPE_ISOC) ? 1 : 0;
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+	dma_addr = usb_req->dma;
-+#else
 +	if (GET_CORE_IF(pcd)->dma_enable) {
 +                dwc_otg_device_t *otg_dev = gadget_wrapper->pcd->otg_dev;
 +                struct device *dev = NULL;
@@ -57366,7 +57210,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +                                                        DMA_FROM_DEVICE);
 +		}
 +	}
-+#endif
 +
 +#ifdef DWC_UTE_PER_IO
 +	if (is_isoc_ep == 1) {
@@ -57449,8 +57292,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	return retval;
 +}
 +
-+//#if (LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,30))
-+#if 0
 +/**
 + * ep_wedge: sets the halt feature and ignores clear requests
 + *
@@ -57483,7 +57324,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +
 +	return retval;
 +}
-+#endif
 +
 +#ifdef DWC_EN_ISOC
 +/**
@@ -57589,11 +57429,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +		   .alloc_request = dwc_otg_pcd_alloc_request,
 +		   .free_request = dwc_otg_pcd_free_request,
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+		   .alloc_buffer = dwc_otg_pcd_alloc_buffer,
-+		   .free_buffer = dwc_otg_pcd_free_buffer,
-+#endif
-+
 +		   .queue = ep_queue,
 +		   .dequeue = ep_dequeue,
 +
@@ -57633,13 +57468,8 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	.alloc_request = dwc_otg_pcd_alloc_request,
 +	.free_request = dwc_otg_pcd_free_request,
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,28)
-+	.alloc_buffer = dwc_otg_pcd_alloc_buffer,
-+	.free_buffer = dwc_otg_pcd_free_buffer,
-+#else
 +	/* .set_wedge = ep_wedge, */
 +        .set_wedge = NULL, /* uses set_halt instead */
-+#endif
 +
 +	.queue = ep_queue,
 +	.dequeue = ep_dequeue,
@@ -57853,9 +57683,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +		     void *req_handle, int32_t status, uint32_t actual)
 +{
 +	struct usb_request *req = (struct usb_request *)req_handle;
-+#if LINUX_VERSION_CODE > KERNEL_VERSION(2,6,27)
 +	struct dwc_otg_pcd_ep *ep = NULL;
-+#endif
 +
 +	if (req && req->complete) {
 +		switch (status) {
@@ -57881,7 +57709,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +		req->complete(ep_handle, req);
 +		DWC_SPINLOCK(pcd->lock);
 +	}
-+#if LINUX_VERSION_CODE > KERNEL_VERSION(2,6,27)
 +	ep = ep_from_handle(pcd, ep_handle);
 +	if (GET_CORE_IF(pcd)->dma_enable) {
 +                if (req->length != 0) {
@@ -57896,7 +57723,6 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +                                                DMA_TO_DEVICE: DMA_FROM_DEVICE);
 +                }
 +	}
-+#endif
 +
 +	return 0;
 +}
@@ -58147,11 +57973,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 +	d->gadget.name = pcd_name;
 +	d->pcd = otg_dev->pcd;
 +
-+#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,30)
-+	strcpy(d->gadget.dev.bus_id, "gadget");
-+#else
 +	dev_set_name(&d->gadget.dev, "%s", "gadget");
-+#endif
 +
 +	d->gadget.dev.parent = &_dev->dev;
 +	d->gadget.dev.release = dwc_otg_pcd_gadget_release;
diff --git a/target/linux/bcm27xx/patches-5.4/950-0342-dwc_otg-Declare-DMA-capability-with-HCD_DMA-flag.patch b/target/linux/bcm27xx/patches-5.4/950-0342-dwc_otg-Declare-DMA-capability-with-HCD_DMA-flag.patch
index 3307eacccf..afd72da286 100644
--- a/target/linux/bcm27xx/patches-5.4/950-0342-dwc_otg-Declare-DMA-capability-with-HCD_DMA-flag.patch
+++ b/target/linux/bcm27xx/patches-5.4/950-0342-dwc_otg-Declare-DMA-capability-with-HCD_DMA-flag.patch
@@ -16,7 +16,7 @@ Signed-off-by: Phil Elwell <phil@raspberrypi.org>
 
 --- a/drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.c
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.c
-@@ -138,7 +138,7 @@ static struct hc_driver dwc_otg_hc_drive
+@@ -119,7 +119,7 @@ static struct hc_driver dwc_otg_hc_drive
  
  	.irq = dwc_otg_hcd_irq,
  
diff --git a/target/linux/bcm27xx/patches-5.4/950-0363-dwc_otg-checking-the-urb-transfer_buffer-too-early-3.patch b/target/linux/bcm27xx/patches-5.4/950-0363-dwc_otg-checking-the-urb-transfer_buffer-too-early-3.patch
index ee12a0f5db..3bc9abde27 100644
--- a/target/linux/bcm27xx/patches-5.4/950-0363-dwc_otg-checking-the-urb-transfer_buffer-too-early-3.patch
+++ b/target/linux/bcm27xx/patches-5.4/950-0363-dwc_otg-checking-the-urb-transfer_buffer-too-early-3.patch
@@ -32,7 +32,7 @@ Signed-off-by: Hui Wang <hui.wang@canonical.com>
 
 --- a/drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.c
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_hcd_linux.c
-@@ -821,10 +821,6 @@ static int dwc_otg_urb_enqueue(struct us
+@@ -782,10 +782,6 @@ static int dwc_otg_urb_enqueue(struct us
  		dump_urb_info(urb, "dwc_otg_urb_enqueue");
  	}
  #endif
@@ -43,7 +43,7 @@ Signed-off-by: Hui Wang <hui.wang@canonical.com>
  	if ((usb_pipetype(urb->pipe) == PIPE_ISOCHRONOUS)
  	    || (usb_pipetype(urb->pipe) == PIPE_INTERRUPT)) {
  		if (!dwc_otg_hcd_is_bandwidth_allocated
-@@ -881,6 +877,13 @@ static int dwc_otg_urb_enqueue(struct us
+@@ -842,6 +838,13 @@ static int dwc_otg_urb_enqueue(struct us
  			      &urb->transfer_dma, buf);
  	}
  
diff --git a/target/linux/bcm27xx/patches-5.4/950-0393-dwc_otg-constrain-endpoint-max-packet-and-transfer-s.patch b/target/linux/bcm27xx/patches-5.4/950-0393-dwc_otg-constrain-endpoint-max-packet-and-transfer-s.patch
index 7e4a3f8b38..4de95a5449 100644
--- a/target/linux/bcm27xx/patches-5.4/950-0393-dwc_otg-constrain-endpoint-max-packet-and-transfer-s.patch
+++ b/target/linux/bcm27xx/patches-5.4/950-0393-dwc_otg-constrain-endpoint-max-packet-and-transfer-s.patch
@@ -23,7 +23,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
 
 --- a/drivers/usb/host/dwc_otg/dwc_otg_hcd.c
 +++ b/drivers/usb/host/dwc_otg/dwc_otg_hcd.c
-@@ -1813,7 +1813,7 @@ int fiq_fsm_queue_split_transaction(dwc_
+@@ -1811,7 +1811,7 @@ int fiq_fsm_queue_split_transaction(dwc_
  	st->nr_errors = 0;
  
  	st->hcchar_copy.d32 = 0;
@@ -32,7 +32,7 @@ Signed-off-by: Jonathan Bell <jonathan@raspberrypi.org>
  	st->hcchar_copy.b.epdir = hc->ep_is_in;
  	st->hcchar_copy.b.devaddr = hc->dev_addr;
  	st->hcchar_copy.b.epnum = hc->ep_num;
-@@ -1858,7 +1858,7 @@ int fiq_fsm_queue_split_transaction(dwc_
+@@ -1856,7 +1856,7 @@ int fiq_fsm_queue_split_transaction(dwc_
  	st->hctsiz_copy.b.pid = hc->data_pid_start;
  
  	if (hc->ep_is_in || (hc->xfer_len > hc->max_packet)) {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
