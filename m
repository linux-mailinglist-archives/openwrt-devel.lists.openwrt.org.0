Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E901DD242
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 17:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NGep39OgO4agzGU3lsmk8jjM1GPwMlWFc2j/scjvu6M=; b=ISt0ksWQ7cEDtD
	V4A5OotPCuZRPPkuXPyWuwaAv6hAkdguDG2F6YYyBfaYzbINSPFJsvEo/ulYTUJJYVZp6eZ1cNHA1
	SHLAUQCHSZORMSQPZKFWAFK0eRgGdbqfeh3GIJ/HOcY5t2UN8FdnInTjzKYIwQ7nxrayZUnwne2Uy
	27WNPZ0c/1v0sXY1ZSEu8DL+wyOX5UQszmVCCgsaIFrn44UOe4LTdn0+DpGP2Y63wUuQTcnGJeNbC
	6n4ASZ7Cn9jfrQ45nw/ddZ180vjrxEt2kKIwbs+JYlP+KxzLXntk+rDffjekg55BRVIHrNV+ogxqC
	7/fK7L8TQ5Ksgvm4nWiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnOp-0004Hc-Ra; Thu, 21 May 2020 15:46:23 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnOk-0004Gq-9R
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 15:46:19 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id E0856600A8;
 Thu, 21 May 2020 17:45:36 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org E0856600A8
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org E0856600A8
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1590075938; bh=0Xha3XMPFNLxT/HkWrG2MYf4iCgM3zwyhWowRh44vAw=;
 h=From:To:Cc:Subject:Date:From;
 b=NCsFS1goEp6G9Dqj396Xm+gWlqk0gRPTwdlXY6W49G4ehycAmvPCLuWw+0ZhWlNpD
 TDUg+9zXohrYjAOxX6j9OCau7AST904aCCTHW+a2Ok8e/7zJ2xSRMhTwyMhHhA6MPM
 k4agzFdREl96y1OgiCvhTAM/V5ZIYyVcH2ChuBOM=
Received: by supercopter (sSMTP sendmail emulation);
 Thu, 21 May 2020 17:45:36 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 May 2020 17:45:10 +0200
Message-Id: <20200521154510.31736-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_084618_630202_A35F826C 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] packages/utils: fbtest fix Makefile
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIGNsZWFuIHRhcmdldCB0cmllcyB0byByZW1vdmUgd2hhdCBsb29rcyBsaWtlIGEgYm9ndXMg
J3JiY2ZnJywKcHJvYmFibHkgY2FycmllZCBvdmVyIGNvcHktcGFzdGEuIFJlbW92ZSB0aGUgbmFt
ZSBvZiB0aGUgZ2VuZXJhdGVkCmV4ZWN1dGFibGUgKCdmYnRlc3QnKSBpbnN0ZWFkLgoKU2lnbmVk
LW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0KIHBhY2th
Z2UvdXRpbHMvZmJ0ZXN0L3NyYy9NYWtlZmlsZSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvdXRpbHMvZmJ0
ZXN0L3NyYy9NYWtlZmlsZSBiL3BhY2thZ2UvdXRpbHMvZmJ0ZXN0L3NyYy9NYWtlZmlsZQppbmRl
eCAwNzViYzBlY2JmLi5mN2M5Zjg2YTg3IDEwMDY0NAotLS0gYS9wYWNrYWdlL3V0aWxzL2ZidGVz
dC9zcmMvTWFrZWZpbGUKKysrIGIvcGFja2FnZS91dGlscy9mYnRlc3Qvc3JjL01ha2VmaWxlCkBA
IC0xMSw0ICsxMSw0IEBAIGZidGVzdDogJChPQkpTKQogCSQoQ0MpIC1vICRAICQoT0JKUykKIAog
Y2xlYW46Ci0Jcm0gLWYgcmJjZmcgKi5vCisJcm0gLWYgZmJ0ZXN0ICoubwotLSAKMi4xMS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
