Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D9518CF3
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 17:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QKDA2EixVFSGE/E5KWNOD6BfETxAywo93nMLbj84V6s=; b=WdIIjj9AwF/4b9
	V9c8Tsfzw2X/3cwwO4rmZJbOBsgMXmX8AvtDmAdVrJxQbQDRFwcT/18IKiyxKeHvUAfqIbEBoCvp/
	T1fC4o+j1yYA0HdtchCkRNuUHjIC3y6keGcAbUtlzGzZo+lxDq1ihnmY7ChhzcgEcVUegBSHcXMrI
	WWb562fOXlekzYTyvSCBEsbNZ83A/3Kg2bYdZLhQ46q9mAnto2oB+4Ryx70GASvdqcLqIgI1v92if
	wqzatHbV9xIAmjovCA4AqBBNRajSQkPDC0xnYmByMShKMXs3KI36XO/dwoW+COwVu4FDgmBqvBv2k
	pTNr/mRHTS4xtgz9c30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkxx-0003eK-6P; Thu, 09 May 2019 15:28:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkxr-0003da-8U
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 15:28:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id y197so3733002wmd.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 May 2019 08:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e9qhSjYqnpJPm/nAbaepRNJsKzKAnqTakhKiKsOeGck=;
 b=DUes7N+BJoQzBgtMFLOgRMVn71eAcjKCBekihYeDYjjqQqDnN1aIzJF1cDmh8KC3dR
 pgeLZQ4T2xNckfUTqBIu3wjux/lmK8GHent1QlCbchEhg/XmnmBpLHTpQWyMLxhIgHxv
 P3PB7fNtmig1YrqpgZeb3TwAO+f2Nh/l0/Kv2DbqfnEiZfBSHzNX8RZitDArTexOnWwY
 Xdj103dnrMBs6BNaRaV0coE6ycA39Fam4YG8JYzjGzGntZhawo3ZQwrQWW4qd2jcMDIF
 2f0tGan7OoThvbb5G3rx6MD7TCWO+afXj37NrjmLtOFy6QQyxfTLRbF/gLVRq+0j+dow
 c42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e9qhSjYqnpJPm/nAbaepRNJsKzKAnqTakhKiKsOeGck=;
 b=DXBUXijfQ6hXD3588qPKrww/RrB4/mJLQ5uiCYf7pAs6ryHUCKjQ6in2b3Dqwe3CUY
 r3eQ66URApF4pX3LgQsTLq1oMqKCOix647tW0Zt5KcrQsQGWgvDGNnj9BHm8U6HDLUEl
 0VP7/LMTEZXZP99hDSSZHmyERkYH3BnEmCTPCHttzS4WXErnF1m1qpcXAyU2iRrZsvU/
 Q/xlq47/z4WlAfNQWUOpD2dBYDoxWAQUjHfzdfKmKMvrXAa/TBTdXHeiX+Iv7j91jTem
 qTrVxEln/wzPULBIyZOB6S4MdShHV26SoFC3///8Au5OI6pE0y8xCvKXUlnh8HON/aqj
 lUqw==
X-Gm-Message-State: APjAAAU9firokwOiLCpGNbMSjJUlVFork604zymyJKwR0JUanCg3VQlD
 ft4K8OzK8pbDNk5finAHEnFNY08T
X-Google-Smtp-Source: APXvYqwxdyGCEvOVa2tK+EL5jtERlmf3iMWous+wpaYLHMtox1Y2YtBbsFwuErCDVLNKC4JgBDrypQ==
X-Received: by 2002:a1c:eb18:: with SMTP id j24mr3611870wmh.32.1557415683064; 
 Thu, 09 May 2019 08:28:03 -0700 (PDT)
Received: from localhost.localdomain (93-137-250-241.adsl.net.t-com.hr.
 [93.137.250.241])
 by smtp.gmail.com with ESMTPSA id c9sm1395400wrv.62.2019.05.09.08.28.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 08:28:02 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 17:27:57 +0200
Message-Id: <20190509152758.20998-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_082807_300627_4F48DA28 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ath10k-firmware: update Candela Tech
 firmware images
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Here are recent release notes:

wave-1:

   *  April 2, 2019:  Support some get/set API for eeprom rate power tables.  Mostly
                      backported from 10.2

   *  April 2, 2019:  Support adaptive-CCA, backported from 10.2

   *  April 3, 2019:  Support adding eeprom configAddr pairs via the set-special API.
                      These configAddrs can be used to change the default register settings
                      for up to 12 registers.

   *  May 3, 2019:  Fix tx-power settings for 2x2, 3x3 rates.  Original logic I put in back in
                    2016 set 2x2 and 3x3 lower than the needed to be when using most NICs (very
                    high powered NICs would not have been affected I think, not sure any of those
                    exist though.)  This improves throughput for 2x2 and 3x3 devices,
                    especially when the signal is weaker.

wave-2:

   *  April 8, 2019:   When setting keys, if high bit of high value of  key_rsc_counter is set to 0x1,
                       then the lower 48 bits will be used as the PN value.  By default, PN is set to
                       1 each time the key is set.

   *  April 8, 2019:   Pack PN into un-used 'excretries' aka 'num_pkt_loss_excess_retry' high
                       16 bits.  This lets us report peer PN, but *only* if driver has previously
                       set a PN when setting key (or set-special cmd is used to enable PN reporting).
                       This is done so that we know the driver is recent
                       enough to deal with the PN stat reporting.

   *  April 16, 2019:  Support specifying tx rate on a per-beacon packet.
                       See ath10k_wmi_op_gen_beacon_dma and ath10k_convert_hw_rate_to_rate_info
                       for API details.  Driver needs additional work to actually enable this
                       feature currently.

   *  April 30, 2019   Compile out tx-prefetch caching logic.  It is full of tricky bugs that cause
                       tx hangs.  I fixed at least one, but more remain and I have wasted too much
                       time on this already.

   *  May 8, 2019  Start rate-ctrl at mcs-3 instead of mcs-5.  This significantly helps DHCP happen
                   quickly, probably because the initial rate being too high would take a while to
                   ramp down, especially since there are few packets sent by the time DHCP needs to
                   start.  This bug was triggered by me decreasing retries of 0x1e (upstream default)
                   to 0x4.  But, I think it is better to start with lower initial MCS instead
                   of always having a very high retry count.

Tested on 8devices Jalapeno dev board(IPQ4019)

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/firmware/ath10k-firmware/Makefile | 48 +++++++++++------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/package/firmware/ath10k-firmware/Makefile b/package/firmware/ath10k-firmware/Makefile
index 452e7a36b3..dca1520ec4 100644
--- a/package/firmware/ath10k-firmware/Makefile
+++ b/package/firmware/ath10k-firmware/Makefile
@@ -64,92 +64,92 @@ define Download/ct-firmware-htt
   URL_FILE:=$($(1)_FIRMWARE_FILE_CT_HTT)
 endef
 
-QCA988X_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.007
+QCA988X_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.008
 define Download/ath10k-firmware-qca988x-ct
   $(call Download/ct-firmware,QCA988X,)
-  HASH:=56b8faa255d053404981fc0e2ffa8dec1aa6adfffd4e4a2af2b6ac25f131ecce
+  HASH:=c2407cbdaaf143c9796e654aed026f0aa70fc93a82dd1244c62e95ede894e829
 endef
 $(eval $(call Download,ath10k-firmware-qca988x-ct))
 
-QCA988X_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.007
+QCA988X_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.008
 define Download/ath10k-firmware-qca988x-ct-htt
   $(call Download/ct-firmware-htt,QCA988X,)
-  HASH:=f85296afae06548256167a58ecf58f11cc79aba7f96629124dc7b07611f4614f
+  HASH:=789c4d1c8ac5edeb43d507157944102b564cd6970c365a14b50cab08ffa4e3b5
 endef
 $(eval $(call Download,ath10k-firmware-qca988x-ct-htt))
 
 
-QCA9887_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.007
+QCA9887_FIRMWARE_FILE_CT:=firmware-2-ct-full-community-22.bin.lede.008
 define Download/ath10k-firmware-qca9887-ct
   $(call Download/ct-firmware,QCA9887,ath10k-9887)
-  HASH:=d42d57ded7de4f8caf4bfd163db0910af7f0e155b11e484dbaa94c341f1e6dec
+  HASH:=07692a63ab9d11a65c17cc896aff89ea33b7af4e0e1e51ae100651291afe3a4d
 endef
 $(eval $(call Download,ath10k-firmware-qca9887-ct))
 
-QCA9887_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.007
+QCA9887_FIRMWARE_FILE_CT_HTT:=firmware-2-ct-full-htt-mgt-community-22.bin.lede.008
 define Download/ath10k-firmware-qca9887-ct-htt
   $(call Download/ct-firmware-htt,QCA9887,ath10k-9887)
-  HASH:=2b016a6f59520925ff9996e458c26dde3422e2d142a36e235cca7aad822ad2b6
+  HASH:=ef336462d4a44ab9a0d89e83064124e647a9fb4a8af8be9df5724378611d2e82
 endef
 $(eval $(call Download,ath10k-firmware-qca9887-ct-htt))
 
 
-QCA99X0_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.007
+QCA99X0_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.008
 define Download/ath10k-firmware-qca99x0-ct
   $(call Download/ct-firmware,QCA99X0,ath10k-10-4b)
-  HASH:=3dbf966fdbad9e55936fa62516e2fcca2a5952030132407f80c41d7da819c82c
+  HASH:=3357d7ba739512619ccd14043338cfe8e148d5d8e99343e3ccf7a2ff0d07d05f
 endef
 $(eval $(call Download,ath10k-firmware-qca99x0-ct))
 
-QCA99X0_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.007
+QCA99X0_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
 define Download/ath10k-firmware-qca99x0-ct-htt
   $(call Download/ct-firmware-htt,QCA99X0,ath10k-10-4b)
-  HASH:=c98993f541fbe02e88dfd3d5ed70bbaaad228776da29260348c5b00966682b69
+  HASH:=ce81e1b9b80b30263e9d5010e38fac3f005214fd955dc2cff95e7fe633796212
 endef
 $(eval $(call Download,ath10k-firmware-qca99x0-ct-htt))
 
 
-QCA9984_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.007
+QCA9984_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.008
 define Download/ath10k-firmware-qca9984-ct
   $(call Download/ct-firmware,QCA9984,ath10k-9984-10-4b)
-  HASH:=1bdb2f62fb7f6947db992f0dc48b2864b51c7544ff8672a6c7570ecf2273054c
+  HASH:=e2794ce577ff7942dc5f767a77fa52167f323bc8f50f04570fc5efe92ed761cf
 endef
 $(eval $(call Download,ath10k-firmware-qca9984-ct))
 
-QCA9984_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.007
+QCA9984_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
 define Download/ath10k-firmware-qca9984-ct-htt
   $(call Download/ct-firmware-htt,QCA9984,ath10k-9984-10-4b)
-  HASH:=ff4c4f734711d4ead8a8ed226c5347073a9ce32b60b91d995f197b6e7809b7c6
+  HASH:=1f90555963c2e52ac8fc5581b2a0f9c658e3f5205844898bdc48c78d009bb6eb
 endef
 $(eval $(call Download,ath10k-firmware-qca9984-ct-htt))
 
 
-QCA4019_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.007
+QCA4019_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.008
 define Download/ath10k-firmware-qca4019-ct
   $(call Download/ct-firmware,QCA4019,ath10k-4019-10-4b)
-  HASH:=98568845cf82dea679b1f4dee23f3d3eb39755c6bcdaeb89ed188e52e0f42b2d
+  HASH:=4e73cf8e24e83df87d6dce2038e350b3f67753ccca37a8c0d1b861818991e6aa
 endef
 $(eval $(call Download,ath10k-firmware-qca4019-ct))
 
-QCA4019_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.007
+QCA4019_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
 define Download/ath10k-firmware-qca4019-ct-htt
   $(call Download/ct-firmware-htt,QCA4019,ath10k-4019-10-4b)
-  HASH:=b791820962e26ba186d2310c024dd16c5ec44bfbbaf40bfeb77ab30bb297e75f
+  HASH:=8f6434856d6f0207bc3f519cf50d2bf45df1bfcbc69b864ed02fcb5cd5ef6f4b
 endef
 $(eval $(call Download,ath10k-firmware-qca4019-ct-htt))
 
 
-QCA9888_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.007
+QCA9888_FIRMWARE_FILE_CT:=firmware-5-ct-full-community-12.bin-lede.008
 define Download/ath10k-firmware-qca9888-ct
   $(call Download/ct-firmware,QCA9888,ath10k-9888-10-4b)
-  HASH:=f96e5d62c9b5d79cad0b0ff702cdd2644c408bcaeb1bd23f340f0425a002c8cd
+  HASH:=6b627746f88c1bfecb872e72c61d6097192e389592e391630d2661b44f13b10d
 endef
 $(eval $(call Download,ath10k-firmware-qca9888-ct))
 
-QCA9888_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.007
+QCA9888_FIRMWARE_FILE_CT_HTT:=firmware-5-ct-full-htt-mgt-community-12.bin-lede.008
 define Download/ath10k-firmware-qca9888-ct-htt
   $(call Download/ct-firmware-htt,QCA9888,ath10k-9888-10-4b)
-  HASH:=1f6d872f29d1635df55737458fc054adc64803638b4ad220ce0ccb13be5c0010
+  HASH:=4ef46b2bdd3ddc894f79da2dbf90ee04cb58781f3eb193840bd5fdb8624b447b
 endef
 $(eval $(call Download,ath10k-firmware-qca9888-ct-htt))
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
