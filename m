Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE82196599
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 12:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/LxxAhnWsWk8GnVOPtb7wfTFi+HjtRPOEnis4IvcQhY=; b=ctJkwUWtXPMNP7NL7t64OVGug
	noKxk/Nc3+JDzLjL2tidJCs31DGOmeD99gxsSeGu3UtEa5mhEI1ki7Dekr9Z8jjo3NpOWkwyRECZR
	goZ7W6GigQvlK9B6MpHREJTsHzH/9yEkyXhlBhcHY+fe7LlXA6frQbaXX9x/0FgoyknnChtrgUVF5
	mRpBFlA8lUilcUY60hJ988XFnCuLz6ckThB3/xTUNVOlydWFUgNs8WpsQp3wgtiJLWPmawpEZzHG0
	q/Ii1Ek/PQOmLw7HdHzHKq/a2fbU8Y+nYh/HLvcJpqPLNwsuw6THccNn5pmtnW3rrYWEGXP+Fx6Hq
	JDNo1VO2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9PG-0000Dd-Sq; Sat, 28 Mar 2020 11:13:38 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9Oi-00089q-Gm
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 11:13:06 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0B3E643B0C;
 Sat, 28 Mar 2020 11:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585393984; bh=CABXUPA1gMDfJH1aTNONM8GCdc7V+MOgP9ccaBAWnik=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EMr5Vn4m6YRSqZHFf98vN2EhoCmw44K92HajbPmDSoOoq1l7aSRKb3cEkrsM5CQ8S
 H1xFUIoUt109FmZWBz7TR90EiGwJvGnTe/4OdIZRgzs0vH+dZAt5y6h+8QKCMOBAE/
 nnK79fNAx58X44qOfJjVHmX4yDL6NgH20eQjqPwf7Rjxx+qUCfMS1nBhuWHTSlioNv
 mgg/+92WJGp3VAXt8xBqRsw2HOnCkKh3srL1a3gzCWd2sb63E9V0IYSgE7X8gkT25+
 IzsgXYcpMdfDT10QDhXgWZ9sA9RqK81W4Y7sp/bte24CgMcNTAwzVg8W9+pZGFzfX8
 QppmXsk+E4zOw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 2CA8BA005C;
 Sat, 28 Mar 2020 11:13:02 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 14:12:36 +0300
Message-Id: <20200328111237.18763-4-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
References: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_041304_585731_401948FB 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/4 v2] archs38: switch to kernel 5.4 by
 default
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============0712664751732713003=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0712664751732713003==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Petr Štetiar <ynezz@true.cz>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Cc: John Crispin <john@phrozen.org>
---
No changes since v1.

 target/linux/archs38/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/archs38/Makefile b/target/linux/archs38/Makefile
index a6ac05b9df..55708a09b0 100644
--- a/target/linux/archs38/Makefile
+++ b/target/linux/archs38/Makefile
@@ -12,7 +12,7 @@ BOARD:=archs38
 BOARDNAME:=Synopsys DesignWare ARC HS38
 SUBTARGETS:=generic
 
-KERNEL_PATCHVER:=4.14
+KERNEL_PATCHVER:=5.4
 
 DEVICE_TYPE:=developerboard
 
-- 
2.23.0



--===============0712664751732713003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0712664751732713003==--
