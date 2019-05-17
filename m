Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC58521807
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 14:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ADjnQhuYOBx5EhF7otFqYyAyh1zvpd7ySnm+ke2x7Pk=; b=TXqOyGckjsYgwT
	DcJw50Zjs7DuNGTs0mo4liptQhH79o/Flc8iZd0QK/Q9ykUmKlDSPauhvo/wlw9Uaj/nqo2aaINsh
	96GdAL59jRxtgtniBB9ivUO5mldVtT/yr7WKLW0E5nUoYOMhacFd+2CVJUbE2RVFwBa4QyV3Xqes2
	GWb2KARTHlyud8bhZ23BMl/qSEfAbFV6FJ4rwVjWVMt6QgRzJVBKBvNYk+RO6CbbXXtgnvzf0C3oh
	maUZ5RjOB77NOJ5qP0SgUvMIaoP+GyuIFFtmRiYqp7x9DOIyrhMune9mybGHbGoN+LaOvCBkZ2wQS
	YcvdUcREpIRiC8i+zDug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbjw-0001Ra-PW; Fri, 17 May 2019 12:13:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbjp-0001Qi-SP
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 12:13:27 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A94D4433E;
 Fri, 17 May 2019 14:13:19 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ce0fdec2;
 Fri, 17 May 2019 14:13:18 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 May 2019 14:13:15 +0200
Message-Id: <1558095195-17664-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_051326_145386_75D256E3 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: add leds migrations for archer-c7-v5
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

YXI3MXh4IHVzZXMgYGFyY2hlci1jNy12NWAgZm9yIGxlZCBwcmVmaXgsIGJ1dCBhdGg3OSBzdGlj
a3MgdG8gbW9yZQpnZW5lcmljIGB0cGxpbmtgIGFzIHRoZSBEVFMgaXMgcmV1c2VkIGJ5IG1vcmUg
Ym9hcmRzLCBzbyB3ZSBuZWVkIHRvCnBlcmZvcm0gbWlncmF0aW9ucyBvZiB0aGUgTEVEIG5hbWVz
IGR1cmluZyB1cGdyYWRlLgoKQ2M6IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0BhZHJpYW5z
Y2htdXR6bGVyLmRlPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
PgotLS0KIHRhcmdldC9saW51eC9hdGg3OS9iYXNlLWZpbGVzL2V0Yy91Y2ktZGVmYXVsdHMvMDRf
bGVkX21pZ3JhdGlvbiB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2Jhc2UtZmlsZXMvZXRjL3VjaS1kZWZhdWx0
cy8wNF9sZWRfbWlncmF0aW9uIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2Jhc2UtZmlsZXMvZXRjL3Vj
aS1kZWZhdWx0cy8wNF9sZWRfbWlncmF0aW9uCmluZGV4IDJjYTg3Y2NiMzRkNS4uZDljNjFmODEw
MzQ4IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXRoNzkvYmFzZS1maWxlcy9ldGMvdWNpLWRl
ZmF1bHRzLzA0X2xlZF9taWdyYXRpb24KKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2Jhc2UtZmls
ZXMvZXRjL3VjaS1kZWZhdWx0cy8wNF9sZWRfbWlncmF0aW9uCkBAIC05LDYgKzksOSBAQCBjYXNl
ICIkYm9hcmQiIGluCiBlbmdlbml1cyxlcGc1MDAwKQogCW1pZ3JhdGVfbGVkcyAiOndsYW4tMmc9
OndsYW4yZyIgIjp3bGFuLTVnPTp3bGFuNWciCiAJOzsKK3RwbGluayxhcmNoZXItYzctdjUpCisJ
bWlncmF0ZV9sZWRzICJhcmNoZXItYzctdjU6PXRwLWxpbms6IgorCTs7CiBlc2FjCiAKIG1pZ3Jh
dGlvbnNfYXBwbHkgc3lzdGVtCi0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
