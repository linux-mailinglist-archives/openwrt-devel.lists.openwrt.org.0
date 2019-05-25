Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AD72A44A
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 May 2019 13:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbTrNjudlmGvQ6WxNzj7PK6Y9i/ga4xYI11YcVF3kMI=; b=FOqzMiavuKJkBS
	2WxzDTOnNmHOVY8MhfzRyA3DqdELEwVupXyX6krW5K+E9hnjmvr9UmhuraiJCrF2TMd9O+uR8uBDB
	+jZwJ2vC63a5cqcPIGrXerwOT7UZlTCrar1jPA7DI6e2HaJvZvBMv7u3hA8rJgYjwe6jLq6EiJE5V
	SPwKLBbe8VA+LffGzQJmgJz0fZS8+i5kvGSzpv+s1kzbU/agLItWXJZExqM0dD9N+svN4dVATIv3H
	b/PZP6/rd5COq/J4pghrXRuPu0YBKvgVQfuD2Xhl8lTQwD8cdCscoUkhW8E01VhdOlnRaNNu0wr90
	U42e1EbPdPlZUXkFGOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUVKh-0003Np-CJ; Sat, 25 May 2019 11:59:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUVKG-0002y7-3q
 for openwrt-devel@lists.openwrt.org; Sat, 25 May 2019 11:59:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0F55D3A33;
 Sat, 25 May 2019 13:58:57 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 0e018727;
 Sat, 25 May 2019 13:58:56 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 May 2019 13:58:38 +0200
Message-Id: <1558785521-31779-4-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558785521-31779-1-git-send-email-ynezz@true.cz>
References: <1558785521-31779-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_045900_307130_113E793F 
X-CRM114-Status: UNSURE (   8.90  )
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
Subject: [OpenWrt-Devel] [PATCH 3/6] ath79: ag71xx: remove unused
 SIOCETHTOOL ioctl handling
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Chuanhong Guo <gch981213@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBpb2N0bCBpcyBjdXJyZW50bHkgcm91dGVkIHRocm91Z2ggZ2VuZXJpYyBpbnRlcmZhY2Ug
Y29kZToKCiBkZXZfaW9jdGwKICAgZGV2X2V0aHRvb2wKICAgICBfX2V0aHRvb2xfZ2V0X2xpbmtf
a3NldHRpbmdzCiAgICAgICBwaHlfZXRodG9vbF9pb2N0bAoKQ2M6IEpvaG4gQ3Jpc3BpbiA8am9o
bkBwaHJvemVuLm9yZz4KQ2M6IENodWFuaG9uZyBHdW8gPGdjaDk4MTIxM0BnbWFpbC5jb20+ClNp
Z25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLi4uL2ZpbGVz
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9tYWluLmMgICB8IDEx
ICstLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9maWxlcy9kcml2ZXJzL25ldC9l
dGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfbWFpbi5jIGIvdGFyZ2V0L2xpbnV4L2F0aDc5
L2ZpbGVzL2RyaXZlcnMvbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9tYWluLmMK
aW5kZXggOGNmZjU2YTExYTY2Li5iY2M5ZTIyNzEzMGMgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51
eC9hdGg3OS9maWxlcy9kcml2ZXJzL25ldC9ldGhlcm5ldC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhf
bWFpbi5jCisrKyBiL3RhcmdldC9saW51eC9hdGg3OS9maWxlcy9kcml2ZXJzL25ldC9ldGhlcm5l
dC9hdGhlcm9zL2FnNzF4eC9hZzcxeHhfbWFpbi5jCkBAIC05NDYsMTggKzk0Niw5IEBAIGVycl9k
cm9wOgogc3RhdGljIGludCBhZzcxeHhfZG9faW9jdGwoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwg
c3RydWN0IGlmcmVxICppZnIsIGludCBjbWQpCiB7CiAJc3RydWN0IGFnNzF4eCAqYWcgPSBuZXRk
ZXZfcHJpdihkZXYpOwotCWludCByZXQ7CiAKLQlzd2l0Y2ggKGNtZCkgewotCWNhc2UgU0lPQ0VU
SFRPT0w6Ci0JCWlmIChhZy0+cGh5X2RldiA9PSBOVUxMKQotCQkJYnJlYWs7Ci0KLQkJc3Bpbl9s
b2NrX2lycSgmYWctPmxvY2spOwotCQlyZXQgPSBwaHlfZXRodG9vbF9pb2N0bChhZy0+cGh5X2Rl
diwgKHZvaWQgKikgaWZyLT5pZnJfZGF0YSk7Ci0JCXNwaW5fdW5sb2NrX2lycSgmYWctPmxvY2sp
OwotCQlyZXR1cm4gcmV0OwogCisJc3dpdGNoIChjbWQpIHsKIAljYXNlIFNJT0NTSUZIV0FERFI6
CiAJCWlmIChjb3B5X2Zyb21fdXNlcgogCQkJKGRldi0+ZGV2X2FkZHIsIGlmci0+aWZyX2RhdGEs
IHNpemVvZihkZXYtPmRldl9hZGRyKSkpCi0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
