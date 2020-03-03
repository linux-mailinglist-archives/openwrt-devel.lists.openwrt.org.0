Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12281784F1
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 22:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E0QN0898Ogj2yj+jcuq3riqq69iaKKsNQJSQweAcQ5w=; b=dY2ZDQnQOeQJdI
	rC6kcSClNW8kTyhQ6+m0ZUu6Bv/a7E+WTK66SlPdSdsoRzZsekC3dIe7Lry0eaFQjRCSn7SBjWV8i
	MLl2nDiCNLEkJPcqWoDaY7jSUEDdBNQqOUZCYY95bpQUkSJgRQC8a0Mi7GveVkmi6596GkX8lB3fz
	zYhp6JBW5BOIrCA7U0k50+bEQIalEwO0vc3AVt7B33XsPFCUlXjoLytaoLmxuM4d/4/24FcZxqbMq
	nZkCMjZxJN7S5R9VbjhAGCY1Le9SlDTXfko8CE+z/W3SXK32cfCBnP7LxthXTf8/o7i14I9dNllOU
	vnElepg5hLkp5MLeNDmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9FAF-0008LF-1K; Tue, 03 Mar 2020 21:33:19 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9FA7-0008Ke-Hc
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 21:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583271187;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=OJFFeLwyJ7vNTHQSMYOElpmWuuAK3Op+r3GUN466nJI=;
 b=RqARn8iX0UB2ZmFwuH2KCQCQ47G8JyUVuErOFZ+P5PrroDmuJpXZMPMPGNPDA/1PzX
 LdfyHKJhLHi++wT88aADTZLFxG0OsUi5qOIXNDfkWntE43J9NUZKV4wujtxLhBskP8xi
 xUnkaLPbihoi9H3g8XqU71dr3i4RJySv2RGIFckFZm6Ia5wiabMb000d8TqeAcB2SVyk
 Mm8D+ImszCndQmJohdrmvPvejeVw12+cpX9jyptGPxtKJzrhlxq7pjckRRVtjzs86KQo
 llslS3ddg910SGC+cOC07HY5LCRxyDEvIydBK+32S8L15z0diwzw8q3/WGJWsJBri3pf
 XDgw==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGTOWHr182H3hRgAa4QhA=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 46.2.0 DYNA|AUTH)
 with ESMTPSA id Q06422w23LX5M4W
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Tue, 3 Mar 2020 22:33:05 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 93F0C149C00;
 Tue,  3 Mar 2020 22:33:04 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: Zoltan HERPAI <wigyori@uid0.hu>, Hauke Mehrtens <hauke@hauke-m.de>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Date: Tue,  3 Mar 2020 22:32:42 +0100
Message-Id: <20200303213242.20668-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_133312_174927_8B20AB43 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] mxs: switch to kernel 5.4
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
Cc: openwrt-devel@lists.openwrt.org, Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Compiled for and run-tested on
 - I2SE Duckbill board
 - Olimex OLinuXino Maxi board

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 target/linux/mxs/Makefile                    | 2 +-
 target/linux/mxs/{config-4.19 => config-5.4} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename target/linux/mxs/{config-4.19 => config-5.4} (100%)

diff --git a/target/linux/mxs/Makefile b/target/linux/mxs/Makefile
index 96aba031d7..6071329371 100644
--- a/target/linux/mxs/Makefile
+++ b/target/linux/mxs/Makefile
@@ -13,7 +13,7 @@ FEATURES:=ext4 rtc usb gpio
 CPU_TYPE:=arm926ej-s
 
 MAINTAINER:=Zoltan HERPAI <wigyori@uid0.hu>
-KERNEL_PATCHVER:=4.19
+KERNEL_PATCHVER:=5.4
 KERNELNAME:=zImage dtbs
 
 define Target/Description
diff --git a/target/linux/mxs/config-4.19 b/target/linux/mxs/config-5.4
similarity index 100%
rename from target/linux/mxs/config-4.19
rename to target/linux/mxs/config-5.4
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
