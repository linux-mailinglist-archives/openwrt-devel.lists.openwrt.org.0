Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAC6A6511
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 11:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAcdykH2v91XvF4BcH1AMJoMYUIN5zxkuO4rVC7hyd0=; b=UzipIwuezttjLy
	njK+CU7fmxpMvl3wXjaoKTBIEzEt5EbReRI3avMwfEProt1yJCI/z705Qiahyf0G0P4Zp0rItb3za
	36aj2m2VDBv4aSJi2z/Vltp0wsXGdLt+WwNYzbJ3I4lyZGa6BFTOTJrAvFe24LRglIQLVPaJUnYA7
	pEMIoirGWrM2reXlLpk0FevM/xSVLZOjz8ZfTLGzge+czJnUMEiu1xvTCPZqfa3zlf0KEnac+/qEF
	HhYFusaUIrqHxB2wrZzp77MjNp8G3et7BmW/5u5nfVXjFU4i2+eI8nH4+aNm9zFnef+iUKwA9yioC
	5a+taoTdQgJLn++c7ezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i552O-0007pn-1B; Tue, 03 Sep 2019 09:23:44 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5524-0007ol-3J
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 09:23:25 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 025A257AB2; Tue,  3 Sep 2019 11:23:20 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id D998657AB0
 for <openwrt-devel@lists.openwrt.org>; Tue,  3 Sep 2019 11:23:18 +0200 (CEST)
Received: (qmail 73256 invoked from network); 3 Sep 2019 11:23:18 +0200
Received: from unknown (HELO j460.lan) (jo%wwsnet.net@24.134.185.161)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 3 Sep 2019 11:23:18 +0200
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Sep 2019 11:23:17 +0200
Message-Id: <20190903092317.29931-1-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190616170050.27126-3-ansuelsmth@gmail.com>
References: <20190616170050.27126-3-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_022324_313290_FD517E44 
X-CRM114-Status: UNSURE (   2.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: libblkid-tiny:
 addsblkid_probe_set_utf8label support
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
Cc: Jo-Philipp Wich <jo@mein.io>, Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into project/fstools.git, branch master.
Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
