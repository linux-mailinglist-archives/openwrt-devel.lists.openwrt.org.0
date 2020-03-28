Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEEA196596
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 12:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9YPGIOrjjbv5LogvUczOMioX0eyq43yMy5gD6vzmvDI=; b=jX83NoOEjmOiPJ
	j/iGB6LuCzkA1/LU25DCS1Q4XBX5DkqgCf4E/msuFTqC5O3/L3RbMVsh2huqo4K4YLtCBNbGiFuc0
	tgleQc2/zAVmHHaFYmUD0+2kpK3T6hHSnv/vfmrnVl+sYy7ucWIWNKZNs4EB0dMl5HQm2lXb7kFqK
	Y4JHbP1+N7PJciUI7cfnkRGhtCpOAM/P2SIOsc6MSJhmqjRE0gRNGGaoLCWpefRg84FT6mWnw9pdP
	8rttGvr6fSfpu+qtClK9CDg0WXJSF44eFWBZfAZWAHCclAksCD9AA93WM1sbWmStLqhwn4TYxA3u4
	auZdqNjDReqcaIOB9ItA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9Oc-0007xr-6i; Sat, 28 Mar 2020 11:12:58 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9OU-0007x1-8a
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 11:12:51 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 2BD1AC0FB9
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Mar 2020 11:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585393968; bh=BtsV/LhorxsIF8ac9Q+NIq8AHRGuXzKywEhXrafx6uM=;
 h=From:To:Cc:Subject:Date:From;
 b=csn7MexM3uQRTPrCwzRYNR3pJQT9sK+cLRWLZ5uQIuozDse7ayCPzc86bNv5eteGq
 CBmH7uRrTXKdrOb4hRmh4Rjc4DBFF0ssqzbEzo5lFG4H+F2De5Q0V5G/Ykjo0imes6
 xB+059DSMtadKhvUs5E5ueJLX6ur9va31IkGd1W0YJnqQLW97yhJCPs0yn/UCczlbu
 suPUyxPWM1dlQ29TAQHvWLV9euyQeESgzhjW6YOhrEOxjwikFccy3jF4EKbttVwy22
 OFkHdYlf61YgdG8VzNU37fs/1C5BArV7I543DVsPYx4FPJdYNME9dxAOVldQjt9bUR
 XU5gPsSlNtIlA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 32EE1A005C;
 Sat, 28 Mar 2020 11:12:46 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 14:12:33 +0300
Message-Id: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_041250_340375_19CF9CFE 
X-CRM114-Status: GOOD (  11.58  )
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
Subject: [OpenWrt-Devel] [PATCH 0/4 v2] archs38: kernel 5.4 suuport
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch switches kernel version to 5.4 for archs38.

Changes since v1:
1) Remove disabling of ath9k-htc package usage.
   On initial port in config-5.4 file the option
   "CONFIG_USB_SUPPORT" was missing what caused 
   build failure.
2) Instead of switching to GCC9 introduce Linux kernel
  patch which adds compiler option to workaround ICE


Evgeniy Didin (4):
  archs38: add kernel 5.4 config
  archs38: Add patch for gcc8 compilance
  archs38: switch to kernel 5.4 by default
  kernel: update arc-specific patch

 target/linux/archs38/Makefile                 |   2 +-
 target/linux/archs38/config-5.4               | 309 ++++++++++++++++++
 ...h-arc-Add-compiler-option-for-gcc8.4.patch |  26 ++
 .../332-arc-add-OWRTDTB-section.patch         |  31 +-
 4 files changed, 356 insertions(+), 12 deletions(-)
 create mode 100644 target/linux/archs38/config-5.4
 create mode 100644 target/linux/archs38/patches-5.4/0001-arch-arc-Add-compiler-option-for-gcc8.4.patch

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
