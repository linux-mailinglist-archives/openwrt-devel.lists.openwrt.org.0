Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124B821897
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 14:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1196Mqr2cDRKfeU91LsNWGdk3XQa8CnZ9O6/nKLD9w8=; b=lj1ibkEBlZZdYu
	MBjZ1toFjXCFf+A4v9UkkOovjd0nH6p59DV6bj1CyRR4ZqbCtyMltmZw5fdBWoxExBgFOEOTYEuHI
	AjYANinHR9MABT1QjQufNLJGDntQTeg1EXls3CfVVLP128RMPGqxLPUiyWmmZnVR0jp/R0plHMFFT
	fW31lLgo9hNtHTfi10VWjr6tpw+rjFHlmN8NBFZwv7FSGszStjjkduRFop6vNjChpVGvN+mcWMJhD
	RpMvwyZ0t22pv8Zbrq+vI7MmCguQLnk8QHE6jJh9lBnrrWKTOOd3cEIPK86SCwJvRDTe95Qv+OGb1
	7fKR/Mq8ZL8Ixu+ZdmZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcFm-00080V-DR; Fri, 17 May 2019 12:46:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcFf-00080E-PO
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 12:46:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4FB72168B;
 Fri, 17 May 2019 12:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558097179;
 bh=JaUrYoZV9rqgGBRrFaiPOdY7+bbSd4fDLNLfWdSDPOQ=;
 h=Subject:To:Cc:From:Date:From;
 b=Yk13jen9JTvJW+CydJuE7tLqCmzdv9+lKGq9EhqlzU57qOY0T7IuwZ5sS91LmTT+W
 cXCvGL1/eMSZVKpmk/JcoZ5t+Yg8wRvoyTVont1X3uTNXncvNFUCpZg5vr4x2kdBEW
 SOFQjFrPo+Fo6C471e8FjYTBIPmDxZy88hJ+z/UM=
To: agross@kernel.org, chunkeey@gmail.com, gregkh@linuxfoundation.org,
 mail@david-bauer.net, openwrt-devel@lists.openwrt.org
From: <gregkh@linuxfoundation.org>
Date: Fri, 17 May 2019 14:45:47 +0200
Message-ID: <155809714757240@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_054619_843836_5FA30FD7 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: [OpenWrt-Devel] Patch "ARM: dts: qcom: ipq4019: enlarge PCIe BAR
 range" has been added to the 5.0-stable tree
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


This is a note to let you know that I've just added the patch titled

    ARM: dts: qcom: ipq4019: enlarge PCIe BAR range

to the 5.0-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm-dts-qcom-ipq4019-enlarge-pcie-bar-range.patch
and it can be found in the queue-5.0 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From f3e35357cd460a8aeb48b8113dc4b761a7d5c828 Mon Sep 17 00:00:00 2001
From: Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 26 Feb 2019 01:12:01 +0100
Subject: ARM: dts: qcom: ipq4019: enlarge PCIe BAR range

From: Christian Lamparter <chunkeey@gmail.com>

commit f3e35357cd460a8aeb48b8113dc4b761a7d5c828 upstream.

David Bauer reported that the VDSL modem (attached via PCIe)
on his AVM Fritz!Box 7530 was complaining about not having
enough space in the BAR. A closer inspection of the old
qcom-ipq40xx.dtsi pulled from the GL-iNet repository listed:

| qcom,pcie@80000 {
|	compatible = "qcom,msm_pcie";
|	reg = <0x80000 0x2000>,
|	      <0x99000 0x800>,
|	      <0x40000000 0xf1d>,
|	      <0x40000f20 0xa8>,
|	      <0x40100000 0x1000>,
|	      <0x40200000 0x100000>,
|	      <0x40300000 0xd00000>;
|	reg-names = "parf", "phy", "dm_core", "elbi",
|			"conf", "io", "bars";

Matching the reg-names with the listed reg leads to
<0xd00000> as the size for the "bars".

Cc: stable@vger.kernel.org
BugLink: https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg45212.html
Reported-by: David Bauer <mail@david-bauer.net>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Andy Gross <agross@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/arm/boot/dts/qcom-ipq4019.dtsi |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -393,8 +393,8 @@
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			ranges = <0x81000000 0 0x40200000 0x40200000 0 0x00100000
-				  0x82000000 0 0x40300000 0x40300000 0 0x400000>;
+			ranges = <0x81000000 0 0x40200000 0x40200000 0 0x00100000>,
+				 <0x82000000 0 0x40300000 0x40300000 0 0x00d00000>;
 
 			interrupts = <GIC_SPI 141 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "msi";


Patches currently in stable-queue which might be from chunkeey@gmail.com are

queue-5.0/crypto-crypto4xx-fix-cfb-and-ofb-overran-dst-buffer-issues.patch
queue-5.0/arm-dts-qcom-ipq4019-enlarge-pcie-bar-range.patch
queue-5.0/crypto-crypto4xx-fix-ctr-aes-missing-output-iv.patch

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
