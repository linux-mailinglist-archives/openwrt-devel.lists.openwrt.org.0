Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FE114228
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 21:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1+tD65l178kYDRZzH03hglWjJZj0m6B7r7ZsYoeMws=; b=LyVCr1nSNzWRWp
	cnI6yoQ/5qsDP67jg7sXzabXlsCMNe2qgO2TiGFAlCt61H4aE0MQguLGTrurlHb43Cj84+j3Z66Ms
	eRcqPnoWq0KIBV/aTPm/O6RL2BOlu3+g35GKeoy+u15xQHQz4se2LreMXc1lx133rAWb/pFs5P2Gj
	/rmvMCMOs1MKtGED5K1DSZiEUN93EWYR8rOOY0YtAEF6Z22nf8i01xmjs5NsJs6lewuAOjncNUN6A
	5lo75nkljeJ4yRpsBAlclETJf+ENjRb0GxK1dBzGEW3eszYPDMJ4Wbx4t3qU6CJQP/ylIHXZ5AvS1
	quYebc34P0pJt5Yi2HtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNNA8-0005bW-4A; Sun, 05 May 2019 19:51:04 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNN9i-0005CP-AU
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 19:50:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D91CE3EA0;
 Sun,  5 May 2019 21:50:35 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a664e8e8;
 Sun, 5 May 2019 21:50:34 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 21:50:27 +0200
Message-Id: <1557085828-32209-2-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557085828-32209-1-git-send-email-ynezz@true.cz>
References: <1557085828-32209-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_125038_624146_F236A4AC 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: archer-x7-v5: remove confusing
 ar8327 initvals for LEDs
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBkZXZpY2VzIGhhdmUgTEVEcyBjb25uZWN0ZWQgdG8gdGhlIFNvQydzIEdQSU9zLCBzbyBp
dCBtYWtlcyBubwpzZW5zZSB0byBmaWRkbGUgd2l0aCBhcjgzMjcgTEVEIHJlZ3MuCgpUZXN0ZWQt
Ynk6IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0BhZHJpYW5zY2htdXR6bGVyLmRlPgpTaWdu
ZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHRhcmdldC9saW51
eC9hdGg3OS9kdHMvcWNhOTU2M190cGxpbmtfYXJjaGVyLXg3LXY1LmR0c2kgfCA0IC0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9h
dGg3OS9kdHMvcWNhOTU2M190cGxpbmtfYXJjaGVyLXg3LXY1LmR0c2kgYi90YXJnZXQvbGludXgv
YXRoNzkvZHRzL3FjYTk1NjNfdHBsaW5rX2FyY2hlci14Ny12NS5kdHNpCmluZGV4IDg0YjkzOGQu
LmU1N2QxZmQgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9hdGg3OS9kdHMvcWNhOTU2M190cGxp
bmtfYXJjaGVyLXg3LXY1LmR0c2kKKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYz
X3RwbGlua19hcmNoZXIteDctdjUuZHRzaQpAQCAtMTYxLDEwICsxNjEsNiBAQAogCQlxY2EsYXI4
MzI3LWluaXR2YWxzID0gPAogCQkJMHgwNCAweDAwMDgwMDgwIC8qIFBPUlQwIFBBRCBNT0RFIENU
UkwgKi8KIAkJCTB4MTAgMHg4MTAwMDA4MCAvKiBQT1dFUl9PTl9TVFJJUCAqLwotCQkJMHg1MCAw
eGNjMzVjYzM1IC8qIExFRF9DVFJMMCAqLwotCQkJMHg1NCAweGNiMzdjYjM3IC8qIExFRF9DVFJM
MSAqLwotCQkJMHg1OCAweDAwMDAwMDAwIC8qIExFRF9DVFJMMiAqLwotCQkJMHg1YyAweDAwZjNj
ZjAwIC8qIExFRF9DVFJMMyAqLwogCQkJMHg3YyAweDAwMDAwMDdlIC8qIFBPUlQwX1NUQVRVUyAq
LwogCQkJPjsKIAl9OwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==
