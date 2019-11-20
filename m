Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE761045F9
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 22:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0Ms2dAFC1jcZdBk7TS9jD5QLqvbGinqx4oLZp/2k2Y=; b=c8A/XZkVCPPw6v
	lJbRHOnvKgXDYP0ZvL/I3JqYmHOaUNC5VJ3iIWERjXjgynSZp9J4AxAVRUTs6bPgIcbRncY0e9SGT
	Z8EI9JaaGcfTBB/hYkD9g+tDI7/6iVWOQ6MOhfh4W9mUZoy5cdRSoQF92K/ktbGXekFLK6DUELrlX
	HfFTffLAGQZaKPF8BCQkDUwxV/awIiAi9HZDtEYENZ9sEG0Ybvd7kHwTCD1id7HUgp257Q4buF9/t
	pdQPm1y0CFGVirE3eBepMBfHkBfkrb8xJZLfWuEJm7KnJ6YjCYLlzCAoNtHo8s9tTpoWDZL/QBW8g
	8Fjd9gx6wJZDyFQT8RxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXmF-0006Ho-Jk; Wed, 20 Nov 2019 21:44:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXla-0005nS-Ip
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 21:44:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4AC874AD7;
 Wed, 20 Nov 2019 22:44:01 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 554315ab;
 Wed, 20 Nov 2019 22:43:51 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 22:43:46 +0100
Message-Id: <20191120214353.27652-4-ynezz@true.cz>
In-Reply-To: <20191120214353.27652-1-ynezz@true.cz>
References: <20191120214353.27652-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_134402_764630_91C51395 
X-CRM114-Status: UNSURE (   7.76  )
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
Subject: [OpenWrt-Devel] [PATCH v2 libubox 03/10] add initial GitLab CI
 support
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

VXNlcyBjdXJyZW50bHkgcHJvb2Ytb2YtY29uY2VwdCBvcGVud3J0LWNpWzFdIGluIG9yZGVyIHRv
OgoKICogaW1wcm92ZSB0aGUgcXVhbGl0eSBvZiB0aGUgY29kZWJhc2UgaW4gdmFyaW91cyBhcmVh
cwogKiBkZWNyZWFzZSBjb2RlIHJldmlldyB0aW1lIGFuZCBoZWxwIG1lcmdpbmcgY29udHJpYnV0
aW9ucyBmYXN0ZXIKICogZ2V0IGF1dG9tYWdpYyBmZWVkYmFjayBsb29wIG9uIHZhcmlvdXMgcGxh
dGZvcm1zIGFuZCB0b29scwogICAtIG91dCBvZiB0cmVlIGJ1aWxkIHdpdGggT3BlbldydCBTREsg
b24gZm9sbG93aW5nIHRhcmdldHM6CiAgICAgKiBhdGg3OS1nZW5lcmljCiAgICAgKiBpbXg2LWdl
bmVyaWMKICAgICAqIG1hbHRhLWJlCiAgICAgKiBtdmVidS1jb3J0ZXhhNTMKICAgLSBvdXQgb2Yg
dHJlZSBuYXRpdmUgYnVpbGQgb24geDg2LzY0IHdpdGggR0NDICh2ZXJzaW9ucyA3LCA4LCA5KSBh
bmQgQ2xhbmcgMTAKICAgLSBvdXQgb2YgdHJlZSBuYXRpdmUgeDg2LzY0IHN0YXRpYyBjb2RlIGFu
YWx5c2lzIHdpdGggY3BwY2hlY2sgYW5kCiAgICAgc2Nhbi1idWlsZCBmcm9tIENsYW5nIDEwCgox
LiBodHRwczovL2dpdGxhYi5jb20veW5lenovb3BlbndydC1jaS8KClNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLmdpdGxhYi1jaS55bWwgfCA3ICsrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCAu
Z2l0bGFiLWNpLnltbAoKZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55
bWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5lMWVkNTcwNmUyN2QK
LS0tIC9kZXYvbnVsbAorKysgYi8uZ2l0bGFiLWNpLnltbApAQCAtMCwwICsxLDcgQEAKK3Zhcmlh
YmxlczoKKyAgQ0lfVEFSR0VUX0JVSUxEX0RFUEVORFM6IGxpYnVib3gKKyAgQ0lfQ01BS0VfRVhU
UkFfQlVJTERfQVJHUzogLURMVUFQQVRIPS91c3IvbGliL2x1YQorCitpbmNsdWRlOgorICAtIHJl
bW90ZTogaHR0cHM6Ly9naXRsYWIuY29tL3luZXp6L29wZW53cnQtY2kvcmF3L21hc3Rlci9vcGVu
d3J0LWNpL2dpdGxhYi9tYWluLnltbAorICAtIHJlbW90ZTogaHR0cHM6Ly9naXRsYWIuY29tL3lu
ZXp6L29wZW53cnQtY2kvcmF3L21hc3Rlci9vcGVud3J0LWNpL2dpdGxhYi9waXBlbGluZS55bWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
