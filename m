Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3564B9D16
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Sep 2019 10:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSb1zvlu7k20WfUw+tDKSUgwQM+Q4hKuAcb8BFATPss=; b=sB1/P+Hc/yF2Uh
	ooIWY2DHyIysRF4GpK9f/pKyrKCGzfh1aD5uSEdAHSWwk9HfjRzeWbbMRUACOxjZ1pvjk1zAALXom
	j/M5mH7Fq0KakSTImMWBrFFJFJTogKdqJeUxfeg1KZnT3u1lrrTLWufJ6sIE70l+3ZbX8xsKbxWkY
	ifSyRaN1ikQoEXjPuqaDVYCQC1NjM3+hqGZ3+tpOtYkh7AMUMRcpCaO27lXT8PCGz1ckk5QJFaE3I
	lXU1VPYohB68cvmt9wsrKvwP4tjb1y+6lnxvKeMavuqG2YkXtOx018LdqZn4vuWTZU8wz6KG9CeId
	BUenF2q2x4LTh+VDnoYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBbDo-0004Fo-DW; Sat, 21 Sep 2019 08:58:28 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBbDf-0004FQ-1g
 for openwrt-devel@lists.openwrt.org; Sat, 21 Sep 2019 08:58:20 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id EB1C4A61125; Sat, 21 Sep 2019 01:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 05CEAA60E97;
 Sat, 21 Sep 2019 01:58:08 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87imprcybz.fsf@husum.klickitat.com> <1650711.Cc8WsVpOxL@debian64>
 <CAHP3WfPEfwWQDM0_Lc1GowbQXN3m5RKEEWuXi_vxoVxguk1fNw@mail.gmail.com>
Date: Sat, 21 Sep 2019 01:58:07 -0700
In-Reply-To: <CAHP3WfPEfwWQDM0_Lc1GowbQXN3m5RKEEWuXi_vxoVxguk1fNw@mail.gmail.com>
 (Russell Senior's message of "Fri, 20 Sep 2019 18:57:29 -0700")
Message-ID: <875zlm58m8.fsf_-_@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_015819_140071_7A086A2F 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCHv2] apm821xx: remove unnecessary kernel
 padding
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
Cc: openwrt-devel@lists.openwrt.org, Chris Blake <chrisrblake93@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


The allocation of LEBs to ubi volumes is handled by the sysupgrade script:

  package/base-files/files/lib/upgrade/nand.sh

and the ubimkvol and or ubirsvol command. Therefore, padding of the
kernel blob is not needed at all, so use cat instead of dd. The
BLOCKSIZE variable was only used in the dd command.  In any case, 63k
made no sense for the way BLOCKSIZE was being used.

63k (64512) does make sense for DTB_SIZE because of the offsets expected
by u-boot given extant u-boot-env variables.

Tested on Meraki MR24.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---

v2: got rid of blocking the kernel blob altogether

 target/linux/apm821xx/image/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index 8203de39c5..108f63cb7a 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -58,7 +58,7 @@ define Build/MerakiAdd-dtb
 	$(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb)
 	( \
 		dd if=$@.dtb bs=$(DTB_SIZE) conv=sync; \
-		dd if=$@ bs=$(BLOCKSIZE) conv=sync; \
+		cat $@ ; \
 	) > $@.new
 	@mv $@.new $@
 endef
@@ -127,7 +127,6 @@ define Device/meraki_mr24
   DEVICE_PACKAGES := kmod-spi-gpio -swconfig
   BOARD_NAME := mr24
   DEVICE_DTS := meraki-mr24
-  BLOCKSIZE := 63k
   IMAGES := sysupgrade.bin
   DTB_SIZE := 64512
   IMAGE_SIZE := 8191k
-- 
2.23.0



-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
