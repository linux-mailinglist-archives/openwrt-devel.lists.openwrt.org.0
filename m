Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5E212D17
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 14:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzxQuaiDk4qKL6kWmg8FjxfYRZWpFI0R6GzwxKY1x04=; b=i1zBnYGaRrIMUS
	VFkBLK9Fz//jwH9GWR0ZeIUCFqm5cfEbAw44ZErhdpFUjzmeadadV8k2sxvTQ0cE2O9ebRntKPvEQ
	cZ6RS45S+73Vb04z7dAxv67XLVs3QtwSBG2zX3ZbbVCGi2QIUSZF7wlzDyoHoawHkbRgR5Ev14QN6
	J28iw8oA5PpzCyTekaiITPax3L1oieGQwTl5bHLnOu2cNcpbEVCPnil+iEYyHUKiBgUfl4ZrjKLx3
	d5e/gNYa1C9SAVTnJeXvPaXOvLKMDYE8dxgxNXXr4Ck7AOuRkJRAldg9Nhe3Q3A+xhc0iyl4mZW3I
	SJ53SfgyCKxdQ3au5Thw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWut-0001aG-UA; Fri, 03 May 2019 12:03:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWun-0001Zi-Hf
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 12:03:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7A8F4444C;
 Fri,  3 May 2019 14:03:43 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3b4bab53;
 Fri, 3 May 2019 14:03:42 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 14:03:37 +0200
Message-Id: <1556885017-25656-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20190503115959.11835-2-lede@allycomm.com>
References: <20190503115959.11835-2-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_050345_736656_F3DAD368 
X-CRM114-Status: UNSURE (   2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] Merged: ath79: glinet_gl-ar750s: Use QCA9887
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Jeff Kletsky <lede@allycomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
