Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7049319DBB
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 15:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=agztst0jo4vNHRLaHVQtzFWjucrGoaLyTCoUWGjlzfI=; b=chZR53KWrrVLXK
	tKX1I1JGHzJ7dNP6KL2McFW9+2Wqmo/oCH/T4yyY1HVxnEmemtI1uH1RElOtsO79jbvZAtwwpFeoV
	Q6SbE7LkpS8BDLGqr28ObZCPhtWF7S7GdjvgKwXmrOXBW6wkj1HOoUU9Uhc4N0cs1wcqebdCxaxIR
	gY4Q+etVgA/zkO8WZN9m+nO4qZHndaWrg5GtvWjh8oTcvrFaxRDAtL24Ovg1F9gNV2jjQMAiDtAps
	EImh3Frav8xbGtTHGWWiCV+Sd+4rLtYug6mHuke/2KIkIRR4Kkweics7Maol3+rMFG8dDDLwciKI8
	mYTa9v3s7NJ1Exlucmtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5AD-000821-GK; Fri, 10 May 2019 13:02:13 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5A7-00081e-P6
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 13:02:09 +0000
Received: from localhost.localdomain (184-23-191-103.vpn.dynamic.sonic.net
 [184.23.191.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id D4DCE40BBC;
 Fri, 10 May 2019 06:02:05 -0700 (PDT)
From: lede@allycomm.com
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 06:01:46 -0700
Message-Id: <20190510130147.30341-1-lede@allycomm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060207_814843_AE416345 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] generic-4.19: Backport spi-nand support for
 GigaDevice A/E
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This backport patch serves as groundwork for supporting SPI NAND
devices on the ath79 platform. Other manufacturers' devices are also
available upstream. The GigaDevice was backported as it is used in the
GL.iNet AR750S.

Patches to support the newer GigaDevice chip in use in the AR750S
have been submitted upstream.

mtd: spinand: Add support for GigaDevice GD5F1GQ4UFxxG
https://patchwork.ozlabs.org/patch/1098024/

Based on the combination of this patch and local application of above
I have been able to sucessfully bring up the AR750S on the ath79-nand
subtarget with Linux 4.19, including sysupgrade.

Jeff


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
