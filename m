Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC46A1E962C
	for <lists+openwrt-devel@lfdr.de>; Sun, 31 May 2020 09:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EZJkZQst5wYvzet1fjC6zqfF3BTmolN5v2PyrNvAeiQ=; b=X9Q9nIojTnjYwo
	XZAnwBR8/rimvLnR+M72U+9R9WJskzMtsosEaPxjj94ul4x7v+CIAye8turDNiGKU9YL5n/3QVIhY
	tBKSFwxGhErhNwS55lBKAHcz6Dt/GsYlEY3BHz+iDV4OlysPCO5+ulAq8Q/TEZBwo6/m8+kDEMCMJ
	CQbSaO70iZCo8UAdCr3AI/QMNlUudUkyHegA3d8U4sLiu7zPzyksLY3971lZTHYO+zKeM6ntx0MoJ
	U+i4Bp83N49CdfZGBTexFWKThVJ0jto83iuFm9SoIHPfzPFjtgsJ9MtsnN8PjOYZhFUgX/qwVgQX+
	NxJYR7hiKW5aDjKYYHAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfIdg-0001ZM-6Q; Sun, 31 May 2020 07:44:12 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfIdZ-0001Yr-1F
 for openwrt-devel@lists.openwrt.org; Sun, 31 May 2020 07:44:07 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 49ZVg55Zw5zQlFN;
 Sun, 31 May 2020 09:44:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1590911039;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=bMIP6/m2kFK7CQOEEA7LB4SJYY1RpKd89iOxrl2ZuIM=;
 b=LTQe63OVfmz1kbOiEIcpRKKW3gpmcoh6mLsa+UBWK04UWtGdL60H2lJoTBWdZi6fq+F+p0
 ILNX+dVtd8Juri0u8GhcilCkkqcu5zwGWv6FqyqiV+GMksIZ1BiVk3XevJzXkkUYDHdDH8
 GDRwWhgkKRIBQvaTRyE7i17Mq5ch6WI1kbPl6d6d5LnzAVhhJu/I1vz9t//C0WR51hZm22
 cUG7fUVmzxzSqopwKB3+m2i9mX/M1XZKSWl6JoyPisvmxw2OXGBlqffD84Moq8WcsfRsjg
 6fBpqPrtHjEvNrRPR0hqgdreHjoqORDL33V6ztSHFq2xQ4TiJgRZH1HA28t+fQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id nIY-DTz1_MHa; Sun, 31 May 2020 09:43:57 +0200 (CEST)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 31 May 2020 16:42:23 +0900
Message-Id: <20200531074223.6095-1-mans0n@gorani.run>
MIME-Version: 1.0
X-Rspamd-Queue-Id: DDC561693
X-Rspamd-Score: -10.45 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_004405_296933_972B03BC 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] bcm47xx: fix brcm-wl module loading
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

X2RtYV9jYWNoZV93YmFja19pbnYgbmVlZHMgdG8gYmUgZXhwb3J0ZWQgdG8gbG9hZCB3bCBtb2R1
bGUgc3VjY2Vzc2Z1bGx5LgoKcm9vdEBPcGVuV3J0Oi8jIGluc21vZCB3bApbICAzNjMuODY3Nzc5
XSB3bDogVW5rbm93biBzeW1ib2wgX2RtYV9jYWNoZV93YmFja19pbnYgKGVyciAtMikKZmFpbGVk
IHRvIGluc2VydCAvbGliL21vZHVsZXMvNS40LjQwL3dsLmtvCgpTaWduZWQtb2ZmLWJ5OiBTdW5n
Ym8gRW8gPG1hbnMwbkBnb3JhbmkucnVuPgpDYzogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxl
Y2tpLnBsPgotLS0KIHRhcmdldC9saW51eC9iY200N3h4L3BhdGNoZXMtNS40Lzk5OS13bF9leHBv
cnRzLnBhdGNoIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNDd4eC9wYXRjaGVzLTUuNC85
OTktd2xfZXhwb3J0cy5wYXRjaCBiL3RhcmdldC9saW51eC9iY200N3h4L3BhdGNoZXMtNS40Lzk5
OS13bF9leHBvcnRzLnBhdGNoCmluZGV4IDYwN2M1NTI4ODUuLjdkY2YwMjhhYjEgMTAwNjQ0Ci0t
LSBhL3RhcmdldC9saW51eC9iY200N3h4L3BhdGNoZXMtNS40Lzk5OS13bF9leHBvcnRzLnBhdGNo
CisrKyBiL3RhcmdldC9saW51eC9iY200N3h4L3BhdGNoZXMtNS40Lzk5OS13bF9leHBvcnRzLnBh
dGNoCkBAIC0xMiwxMCArMTIsMTEgQEAKICBzdGF0aWMgaW50IGNmZV9lbnY7CiAtLS0gYS9hcmNo
L21pcHMvbW0vY2FjaGUuYwogKysrIGIvYXJjaC9taXBzL21tL2NhY2hlLmMKLUBAIC02Miw2ICs2
Miw4IEBAIHZvaWQgKCpfZG1hX2NhY2hlX3diYWNrX2ludikodW5zaWduZWQgbG8KK0BAIC02Miw2
ICs2Miw5IEBAIHZvaWQgKCpfZG1hX2NhY2hlX3diYWNrX2ludikodW5zaWduZWQgbG8KICB2b2lk
ICgqX2RtYV9jYWNoZV93YmFjaykodW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBz
aXplKTsKICB2b2lkICgqX2RtYV9jYWNoZV9pbnYpKHVuc2lnbmVkIGxvbmcgc3RhcnQsIHVuc2ln
bmVkIGxvbmcgc2l6ZSk7CiAgCisrRVhQT1JUX1NZTUJPTChfZG1hX2NhY2hlX3diYWNrX2ludik7
CiArRVhQT1JUX1NZTUJPTChfZG1hX2NhY2hlX2ludik7CiArCiAgI2VuZGlmIC8qIENPTkZJR19E
TUFfTk9OQ09IRVJFTlQgKi8KLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
