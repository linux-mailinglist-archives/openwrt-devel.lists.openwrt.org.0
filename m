Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D08512D13
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 14:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hO+YcuTq4+N1CQBVPqW0fAa1iMvabn+OMaNDLB/cGIg=; b=sLUaF+p/GEjBmp
	1Y4W9jZ0Jcr+PedDJ+gkT/vUCSV6dUgnsWPfvbikz4tCV05ARr1ISl8wwWQ+ZgrWv407wwQhPLIwJ
	y4H3AWfE5G/drgqubreiOip1HhtywhuSnrZyHgamOdtfu6EQzLXbq8llfuOA6oNuTPg63sybxLLb5
	2h03yeSEnylAxebL5nHe3KiR1diY7nRiDUY6YUAhd6V8UyyqNdISL70x8/aOFwnSpBwFGcf2Ivn+i
	caPviEAjHyZLSN79EUd2qKiiCSQ1xoLWLDYqc/LTJrtJdvl9nUDuXKEw0B8sEdGXZy3Z2C/0XaEX4
	RziKBCLCEdeq5SohjX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWs4-00018k-Rr; Fri, 03 May 2019 12:00:56 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWrr-0000zW-99
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 12:00:44 +0000
Received: from mail.allycomm.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPS id E91D4396ED
 for <openwrt-devel@lists.openwrt.org>; Fri,  3 May 2019 05:00:09 -0700 (PDT)
Received: by mail.allycomm.com (Postfix, from userid 58)
 id B69D4CFFB; Fri,  3 May 2019 05:00:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.allycomm.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
 SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0000]
X-Original-To: openwrt-devel@lists.openwrt.org
Received: from deb-devel.wired (deb-devel.bevandjeff.com [192.168.6.49])
 by mail.allycomm.com (Postfix) with ESMTP id F13F7CFEE;
 Fri,  3 May 2019 05:00:07 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 04:59:58 -0700
Message-Id: <20190503115959.11835-1-lede@allycomm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_050043_321575_BA868765 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ath79: glinet_gl-ar750s: Use QCA9887
 firmware
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

This is a resubmission of the garbled
https://patchwork.ozlabs.org/patch/1088433/

Jeff Kletsky



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
