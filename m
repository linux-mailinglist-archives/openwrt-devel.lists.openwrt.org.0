Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CAC10394F
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ox4IziSo1DQfeT1sw5PQdth6dYTpdnbE7nXovzT/PWQ=; b=HskMdTwDrCzqqf
	fqmzKpgGhLMY7bJO+50TNlF3k+G2hGKydH15LM5Em4AAAFIE5Mwoj1YPO97Uf+88aG8xA0b+J9lnO
	e10tx+Q+TRGKskqHJ3Mqe2iPgiztYBIGZQQkqqQpygrlQARSduyOVq1OmciguqXs5wHe822BTndRf
	WEhf1S83eYOVaFqhso0OYdZb/9ELUaV76oL+PQe2NkJAhy30zBQ2MbYjWr/XMeeACtIv5ycnBSMZz
	6LUVP92oYNylL5ZN5jtx8zDyLOg2pXwWsxOzLeGXG7o6qyph3rZ0mqHa+gDoJnsFSqYnGu9YvZisP
	ycTqwD8kuwkokoQl0zPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOeQ-0001lt-FM; Wed, 20 Nov 2019 12:00:02 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe2-0001XQ-0r
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:41 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 56A004668;
 Wed, 20 Nov 2019 12:59:30 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id ef88abd6;
 Wed, 20 Nov 2019 12:59:20 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:18 +0100
Message-Id: <20191120115926.23272-2-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-1-ynezz@true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035938_233074_D7FE1E8D 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libubox 1/9] enable extra compiler checks
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TGV0J3MgZW5mb3JjZSBhZGRpdGlvbmFsIGF1dG9tYXRpYyBjaGVja3MgZW5mb3JjZWQgYnkgdGhl
IGNvbXBpbGVyIGluCm9yZGVyIHRvIGNhdGNoIHBvc3NpYmxlIGVycm9ycyBkdXJpbmcgY29tcGls
YXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IENNYWtlTGlzdHMudHh0IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvQ01ha2VMaXN0cy50eHQgYi9DTWFrZUxpc3RzLnR4
dAppbmRleCA1NzgwNGNmMDA3YmYuLjdhODY4NTQ4NDFlMyAxMDA2NDQKLS0tIGEvQ01ha2VMaXN0
cy50eHQKKysrIGIvQ01ha2VMaXN0cy50eHQKQEAgLTMsNyArMyw3IEBAIElOQ0xVREUoQ2hlY2tM
aWJyYXJ5RXhpc3RzKQogSU5DTFVERShDaGVja0Z1bmN0aW9uRXhpc3RzKQogCiBQUk9KRUNUKHVi
b3ggQykKLUFERF9ERUZJTklUSU9OUygtT3MgLVdhbGwgLVdlcnJvciAtLXN0ZD1nbnU5OSAtZzMg
LVdtaXNzaW5nLWRlY2xhcmF0aW9ucykKK0FERF9ERUZJTklUSU9OUygtT3MgLVdleHRyYSAtV2Fs
bCAtV2Vycm9yIC0tc3RkPWdudTk5IC1nMyAtV21pc3NpbmctZGVjbGFyYXRpb25zIC1Xbm8tdW51
c2VkLXBhcmFtZXRlcikKIAogT1BUSU9OKEJVSUxEX0xVQSAiYnVpbGQgTHVhIHBsdWdpbiIgT04p
CiBPUFRJT04oQlVJTERfRVhBTVBMRVMgImJ1aWxkIGV4YW1wbGVzIiBPTikKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
